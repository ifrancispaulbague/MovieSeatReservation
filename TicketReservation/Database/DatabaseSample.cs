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
        public string[] mTitle, mSched;

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

        public void GetSchedule()
        {

            // count number of scheds
            cnn.Open();
            int index;
            MySqlCommand cmd1 = new MySqlCommand("SELECT COUNT(*) FROM screening", cnn);
            index = Convert.ToInt32(cmd1.ExecuteScalar());
            if (cnn != null)
                cnn.Close();

            cnn.Open();

            string query = String.Format("SELECT screening_sched FROM screening");
            cmd.Connection = cnn;
            cmd.CommandText = query;
            mSched = new string[index];
            int i = 0;
            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                mSched[i++] = rdr.GetString(0);
                if (i == index)
                    break;
            }

            cnn.Close();
        }

        public void InsertMapping(string movieId, string sid) 
        {
            cnn.Open();
            string query = String.Format("INSERT INTO `systemdb`.`ms_mapping` (`movies_id`, `screening_id`) VALUES ('{0}', '{1}')", movieId, sid);
            try
            {
                cmd.Connection = cnn;
                cmd.CommandText = query;
                cmd.ExecuteNonQuery();

                MessageBox.Show("Successfuly added Time Slot");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            cnn.Close();
        }

        public string GetSID(string sched)
        {

            // count number of scheds
            cnn.Open();
            int index;
            string query = string.Format("SELECT screening_id FROM screening WHERE screening_sched = '{0}'", sched);
            MySqlCommand cmd1 = new MySqlCommand(query, cnn);
            string ID = "";
            rdr = cmd1.ExecuteReader();
            while (rdr.Read())
            {
                ID = rdr.GetString(0);
            }

            cnn.Close();
            return ID;
        }

        public string GetID(string mTitle)
        {

            // count number of scheds
            cnn.Open();
            int index;
            string query = string.Format("SELECT movies_id FROM movies WHERE movies_title = '{0}'", mTitle);
            MySqlCommand cmd1 = new MySqlCommand(query, cnn);
            string ID = "";
            rdr = cmd1.ExecuteReader();
            while (rdr.Read())
            {
                ID = rdr.GetString(0);
            }

            cnn.Close();
            return ID;
        }

        public void GetMovie()
        {

            // count number of scheds
            cnn.Open();
            int index;
            MySqlCommand cmd1 = new MySqlCommand("SELECT COUNT(*) FROM movies", cnn);
            index = Convert.ToInt32(cmd1.ExecuteScalar());
            if (cnn != null)
                cnn.Close();

            cnn.Open();

            string query = String.Format("SELECT movies_title FROM movies");
            cmd.Connection = cnn;
            cmd.CommandText = query;
            mTitle = new string[index];
            int i = 0;
            rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                mTitle[i++] = rdr.GetString(0);
                if (i == index)
                    break;
            }

            cnn.Close();
        }
        public string[] GetMSched()
        {
            return mSched;
        }

        public string[] GetMTitle()
        {
            return mTitle;
        }
        public void AddScreenTime(string movieTime)
        {
            cnn.Open();
            string query = String.Format("INSERT INTO `systemdb`.`screening` (`screening_ID`, `screening_sched`) VALUES ('','" + movieTime + "')");
            try
            {
                cmd.Connection = cnn;
                cmd.CommandText = query;
                cmd.ExecuteNonQuery();

                MessageBox.Show("Successfuly added Time Slot");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            cnn.Close();
        }

        public void AddMovie(string movieID, string movieTitle, decimal moviePrice, byte[] images, string imageSize, string movieCinema)
        {

            cnn.Open();
            string query = String.Format("INSERT INTO `systemdb`.`movies` (`movies_id`, `movies_title`, `movies_image`, `movies_price`, `image_size`, `cinema`) VALUES ('" + movieID + "', '" + movieTitle + "', '" + images + "', '" + moviePrice + "', '" + imageSize + "', '" + movieCinema + "')");
            try
            {
                cmd.Connection = cnn;
                cmd.CommandText = query;
                cmd.ExecuteNonQuery();
                /*
                string query2 = String.Format("INSERT INTO `systemdb`.`screening` (`screening_ID`, `screening_sched`) VALUES ('','" + screenTime + "')");
                cmd.CommandText = query2;
                cmd.ExecuteNonQuery();

                string query1 = String.Format("INSERT INTO `systemdb`.`ms_mapping` (`mapping_id`, `movies_id`, `screening_id`) VALUES ('', '" + movieID + "', '" + screenTime + "')");
                cmd.CommandText = query1;
                cmd.ExecuteNonQuery();
                */
                if (movieCinema == "C1")
                    movies.cinemaMovieID[0] = movieID;
                else if (movieCinema == "C2")
                    movies.cinemaMovieID[1] = movieID;
                else 
                    movies.cinemaMovieID[2] = movieID;

                MessageBox.Show("Successfuly added Movie");
           
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            cnn.Close();
        }

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
            cnn.Close();
            return mappingID;

        }
        public void CheckReservation(int mappingID)
        {
            string query = String.Format("SELECT * FROM reservations WHERE r_mapping_id = '{0}'", mappingID);
            string query1 = String.Format("SELECT COUNT(*) FROM reservations WHERE r_mapping_id = '{0}'", mappingID);
            cnn.Open(); 
            int index;
            MySqlCommand cmd1 = new MySqlCommand(query1, cnn);
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
                    seatID[i] = rdr.GetString(0);
                    seatStatus[i++] = rdr.GetBoolean(1);
                    if (i == index)
                        break;

                }
                if (cnn != null)
                    cnn.Close();
            }
        }
        public void InsertSeat(string seatID, int mappingID)
        {
            
            cnn.Open();
            string query = String.Format("INSERT INTO reservations (seat_id, reservation_status, r_mapping_id) VALUES ('{0}', '1', '{1}')", seatID, mappingID);
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
        public string GetSched(int mappingID)
        {
            cnn.Open();
            string query = String.Format("SELECT screening_sched FROM screening s LEFT JOIN ms_mapping m ON s.screening_id = m.screening_id WHERE mapping_id = '{0}'", mappingID);
            cmd.Connection = cnn;
            cmd.CommandText = query;
            string output = "";
            rdr = cmd.ExecuteReader();
            while(rdr.Read())
            {
                output = rdr.GetString(0);
            }
            cnn.Close();
            return output;
        }
        public void InsertTransaction(decimal transactionAmount, int transactionSeats, int mappingID, string code)
        {
            cnn.Open();
            string query = String.Format("INSERT INTO transaction (transaction_amount, transaction_seats, transaction_date, t_mapping_id, transaction_code) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}')", transactionAmount, transactionSeats, System.DateTime.Now.ToString(), mappingID, code);
            cmd.Connection = cnn;
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
    }
}
