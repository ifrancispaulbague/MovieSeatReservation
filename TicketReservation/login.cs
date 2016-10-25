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
    public partial class login : Form
    {
        public login()
        {
            InitializeComponent();

        }

        int ctr = 0;
        private void btnLogin_Click(object sender, EventArgs e)
        {
            string user = "1", pass = "1";

            if (tboxUsername.Text == user && tboxUsername.Text != null &&
                tboxPassword.Text == pass && tboxPassword.Text != null)
            {
                //MessageBox.Show("Welcome");
                this.Hide();
                var form = new movies();
                form.Show();
            }
            else
            {
                ctr++;
                if (ctr == 3)
                {
                    MessageBox.Show("3 Invalid Login Attempt");
                    this.Close();
                }
                MessageBox.Show("Invalid User Account");
            }
        }
    }
}
