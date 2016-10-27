using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace TicketReservation
{
    public partial class admin : Form
    {
        DatabaseSample systemDB;
        public string imgLocation = "", imageSize = "140";
        public admin()
        {
            InitializeComponent();
            systemDB = new DatabaseSample();
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            byte[] images = null;
            FileStream Streem = new FileStream(imgLocation, FileMode.Open, FileAccess.Read);
            BinaryReader brs = new BinaryReader(Streem);
            images = brs.ReadBytes((int)Streem.Length);

            string
                movieID = (cmbCinameNo.Text).Substring(0, 2) + tbxMovieId.Text,
                movieTitle = tbxMovieTitle.Text,
                movieCinema = (cmbCinameNo.Text).Substring(1, 1);

            decimal moviePrice = decimal.Parse(tbxMoviePrice.Text);

            systemDB.AddMovie(movieID, movieTitle, moviePrice, images, imageSize, movieCinema);
            this.Close();
            Program.formHome.Show();
        }

        private void btnUpload_Click(object sender, EventArgs e)
        {
            DialogResult openFile = openFileDialog1.ShowDialog();
            if (openFile == DialogResult.OK) 
            {
                imgLocation = openFileDialog1.FileName.ToString();
            }
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            foreach (var c in this.Controls)
            {
                if (c is TextBox)
                {
                    ((TextBox)c).Text = String.Empty;
                }
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
            Program.formAdmin.Show();
        }
    }
}
