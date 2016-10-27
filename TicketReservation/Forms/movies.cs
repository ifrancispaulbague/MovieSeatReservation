using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TicketReservation
{
    public partial class movies : Form
    {
        public static string price = "", time = "", title = "", cinema = "", seat = "";
        public static int mappingID, cmID;
        public static string[] cinemaMovieID = { "C10001", "C20001", "C30001" };
       
        DatabaseSample systemDB;
        public movies()
        {
            InitializeComponent();
            systemDB = new DatabaseSample();
            SetMovie1();
            SetMovie2();
            SetMovie3();
            
        }
        public void SetMovie1()
        {
            systemDB.SelectMovieTitle(cinemaMovieID[0]);
            label5.Text = systemDB.GetMoviePrice().ToString();
            label7.Text = systemDB.GetMovieTitle();
            button1.Image = systemDB.GetMovieImage();
            comboBox1.Items.Clear();
            comboBox1.Items.AddRange(systemDB.GetMovieSched());
            comboBox1.SelectedIndex = 0;
        }
        public void SetMovie2()
        {
            systemDB.SelectMovieTitle(cinemaMovieID[1]);
            label17.Text = systemDB.GetMoviePrice().ToString();
            label19.Text = systemDB.GetMovieTitle();
            button2.Image = systemDB.GetMovieImage();
            comboBox2.Items.Clear();
            comboBox2.Items.AddRange(systemDB.GetMovieSched());
            comboBox2.SelectedIndex = 0;

        }
        public void SetMovie3()
        {
            systemDB.SelectMovieTitle(cinemaMovieID[2]);
            label11.Text = systemDB.GetMoviePrice().ToString();
            label9.Text = systemDB.GetMovieTitle();
            button3.Image = systemDB.GetMovieImage();
            comboBox3.Items.Clear();
            comboBox3.Items.AddRange(systemDB.GetMovieSched());
            comboBox3.SelectedIndex = 0;

        }
        private void movies_Load(object sender, EventArgs e)
        {
            button1.BackgroundImageLayout = ImageLayout.Stretch;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            price   = label5.Text;
            time    = comboBox1.SelectedItem.ToString();
            title   = label7.Text;
            cinema  = label8.Text;
            seat    = label25.Text;
            cmID    = 0;
            mappingID = systemDB.SetMappingID(cinemaMovieID[0], time);
            this.Hide();
            Program.formReservations = new reservations();
            Program.formReservations.Show(); 
        }

        private void button2_Click(object sender, EventArgs e)
        {
            price   = label17.Text;
            time    = comboBox2.SelectedItem.ToString();
            title   = label19.Text;
            cinema  = label20.Text;
            seat    = label27.Text;
            cmID    = 1;
            mappingID = systemDB.SetMappingID(cinemaMovieID[1], time);
            this.Hide();
            Program.formReservations = new reservations();
            Program.formReservations.Show(); 
        }

        private void button3_Click(object sender, EventArgs e)
        {
            price   = label9.Text;
            time    = comboBox3.SelectedItem.ToString();
            title   = label1.Text;
            cinema  = label12.Text;
            seat    = label29.Text;
            cmID    = 2;
            mappingID = systemDB.SetMappingID(cinemaMovieID[2], time);
            this.Hide();
            Program.formReservations = new reservations();
            Program.formReservations.Show(); 
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            time = comboBox1.SelectedItem.ToString();
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            time = comboBox2.SelectedItem.ToString();
        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            time = comboBox3.SelectedItem.ToString();
        }

        private void movies_FormClosed(object sender, FormClosedEventArgs e)
        {
            Program.formHome.Show();
        }
    }
}
