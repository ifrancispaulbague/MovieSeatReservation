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
    public partial class update : Form
    {
        public update()
        {
            InitializeComponent();
        }

        private void update_Load(object sender, EventArgs e)
        {
           DatabaseSample systemDb = new DatabaseSample();
           systemDb.GetMovie();
           cmbMovie.Items.Clear();
           cmbMovie.Items.AddRange(systemDb.mTitle);
           cmbMovie.SelectedIndex = 0;

           systemDb.GetSchedule();
           cmbSchedule.Items.Clear();
           cmbSchedule.Items.AddRange(systemDb.mSched);
           cmbSchedule.SelectedIndex = 0;

           cmbCinema.SelectedIndex = 0;
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            DatabaseSample systemDb = new DatabaseSample();
          

           systemDb.InsertMapping(systemDb.GetID(cmbMovie.Text), systemDb.GetSID(cmbSchedule.Text));
           movies.cinemaMovieID[cmbCinema.SelectedIndex] = systemDb.GetID(cmbMovie.Text);

            this.Close();
            Program.formAdmin.Show();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
            Program.formAdmin.Show();
        }
    }
}
