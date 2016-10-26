using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.IO;
using System.Drawing;

namespace TicketReservation
{
    class DatabaseSample
    {
        MySqlConnection cnn;
        MySqlCommand cmd;
        MySqlDataReader rdr;
        string connectionString, movieTitle;
        string[] movieSched, seatID;
        bool[] seatStatus;
        decimal moviePrice;
        Image movieImage;


        public DatabaseSample()
        {
            connectionString = "server=localhost;userid=root;password=1234;database=systemdb;";
            try
            {
                cnn = new MySqlConnection(connectionString);
                cnn.Open();
                //MessageBox.Show("Connection Successful!");
                cmd = new MySqlCommand();

            }
            catch (MySqlException ex)
            {
                MessageBox.Show("Connection Failed!");
            }
            finally
            {
                if (cnn != null)
                    cnn.Close();
            }
        }
        //public void SetSqlQuery(string query)
        //{
        //    cmd = new MySqlCommand();
        //    cmd.CommandText = query;
        //    cmd.Prepare();
        //}
        //public void AddSqlParam(string param, string value)
        //{
        //    cmd.Parameters.AddWithValue(param, value);
        //}
        //public void ExecuteNonQuery()
        //{
        //    cmd.ExecuteNonQuery();
        //}
        public void SelectMovieTitle(string movieID)
        {
            cnn.Open();
            string query = String.Format("SELECT * FROM movies WHERE movies_id = '{0}'", movieID);
            cmd.Connection = cnn;
            cmd.CommandText = query;

            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                movieTitle = rdr.GetString(1);
                moviePrice = rdr.GetDecimal(3);
                UInt32 size = rdr.GetUInt32(4);
                byte[] rawData;
                rawData = new byte[size];
                rdr.GetBytes(2, 0, rawData, 0, (int)size);
                movieImage = byteArrayToImage(rawData);
            }
            if (cnn != null)
                cnn.Close();
            // count number of scheds
            cnn.Open();
            int index;
            MySqlCommand cmd1 = new MySqlCommand("SELECT COUNT(*) FROM screening s LEFT JOIN ms_mapping m ON s.screening_id = m.screening_id WHERE  movies_id = '" + movieID + "'", cnn);
            index = Convert.ToInt32(cmd1.ExecuteScalar());
            if (cnn != null)
                cnn.Close();
            // selecting the scheds
            query = String.Format("SELECT screening_sched FROM screening s LEFT JOIN ms_mapping m ON s.screening_id = m.screening_id WHERE  movies_id = '{0}'", movieID);
            cnn.Open();
            cmd.Connection = cnn;
            cmd.CommandText = query;
            rdr = cmd.ExecuteReader();
            movieSched = new string[index];
            int i = 0;
            while (rdr.Read())
            {
                movieSched[i++] = rdr.GetString(0);
            }
            if (cnn != null)
                cnn.Close();

        }
        public int SetMappingID(string movieID, string screeningSched)
        {
            string query = String.Format("SELECT mapping_id FROM ms_mapping m LEFT JOIN screening s ON m.screening_id = s.screening_id WHERE movies_id = '{0}' AND screening_sched = '{1}'", movieID, screeningSched);
            cnn.Open();
            MySqlCommand cmd = new MySqlCommand(query, cnn);
            rdr = cmd.ExecuteReader();
            int mappingID = 0;
            while (rdr.Read())
            {
                mappingID = rdr.GetInt16(0);
            }
            return mappingID;

        }
        public void CheckReservation(int mappingID)
        {
            string query = String.Format("SELECT * FROM reservations WHERE mapping_id = '{0}'", mappingID);
            cnn.Open();
            int index;
            MySqlCommand cmd1 = new MySqlCommand(query, cnn);
            index = Convert.ToInt32(cmd1.ExecuteScalar());
            if (cnn != null)
                cnn.Close();

            if (index != 0)
            {
                //****start selecting******//
                cnn.Open();
                cmd.Connection = cnn;
                cmd.CommandText = query;
                seatID = new string[index];
                seatStatus = new bool[index];
                rdr = cmd.ExecuteReader();
                int i = 0;
                while (rdr.Read())
                {
                    seatID[i] = rdr.GetString(1);
                    seatStatus[i++] = rdr.GetBoolean(2);

                }
                if (cnn != null)
                    cnn.Close();
            }
        }
        public void InsertSeat(string seatID, int mappingID)
        {
            cnn.Open();
            string query = String.Format("INSERT INTO reservations (seat_id, reservation_status, mapping_id) VALUES ('{0}', '1', '{1}')", seatID, mappingID);
            cmd.Connection = cnn;
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
        public string[] GetMovieSched()
        {
            return movieSched;
        }
        public Image byteArrayToImage(byte[] byteArrayIn)
        {
            MemoryStream ms = new MemoryStream(byteArrayIn);
            Image returnImage = Image.FromStream(ms);
            return returnImage;
        }
        public Image GetMovieImage()
        {
            return movieImage;
        }
        public string GetMovieTitle()
        {
            return movieTitle;
        }
        public decimal GetMoviePrice()
        {
            return moviePrice;
        }
        public string[] GetSeatID()
        {
            return seatID;
        }
        public bool[] GetSeatStatus()
        {
            return seatStatus;
        }
    }
}
