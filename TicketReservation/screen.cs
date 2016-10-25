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
    public partial class screen : Form
    {
        public static string price = "", time = "", title = "", cinema = "", seat = "";

        public screen()
        {
            InitializeComponent();
        }

        private void screen_Load(object sender, EventArgs e)
        {
            button1.BackgroundImageLayout = ImageLayout.Stretch;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            price   = label5.Text;
            time    = label6.Text;
            title   = label7.Text;
            cinema  = label8.Text;
            seat    = label25.Text;

            this.Hide();
            movies frm2 = new movies();
            frm2.Show(); 
        }

        private void button2_Click(object sender, EventArgs e)
        {
            price   = label17.Text;
            time    = label18.Text;
            title   = label9.Text;
            cinema  = label20.Text;
            seat    = label27.Text;

            this.Hide();
            movies frm2 = new movies();
            frm2.Show(); 
        }

        private void button3_Click(object sender, EventArgs e)
        {
            price   = label9.Text;
            time    = label10.Text;
            title   = label1.Text;
            cinema  = label12.Text;
            seat    = label29.Text;

            this.Hide();
            movies frm2 = new movies();
            frm2.Show(); 
        }
    }
}
