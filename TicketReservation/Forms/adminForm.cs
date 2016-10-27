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
    public partial class adminForm : Form
    {
        public adminForm()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            Program.formAdmovie = new admin();
            Program.formAdmovie.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            Program.formTimeSlot = new timeSlot();
            Program.formTimeSlot.Show();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            this.Hide();
            Program.formUpdate = new update();
            Program.formUpdate.Show();
        }

        private void adminForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            Program.formHome.Show();
            Program.formLogin.Close();
        }
    }
}
