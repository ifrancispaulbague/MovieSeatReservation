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
        public string imgLocation = "", imageSize = "240";
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
                movieID = tbxMovieId.Text,
                movieTitle = tbxMovieTitle.Text,
                screenTime = tbxScreenTime.Text;

            decimal moviePrice = decimal.Parse(tbxMoviePrice.Text);

            systemDB.AddMovie(movieID, movieTitle, moviePrice, images, imageSize, screenTime);
        }

        private void btnUpload_Click(object sender, EventArgs e)
        {
            DialogResult openFile = openFileDialog1.ShowDialog();
            if (openFile == DialogResult.OK) 
            {
                imgLocation = openFileDialog1.FileName.ToString();
                MessageBox.Show(openFileDialog1.FileName);
                
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
    }
}
