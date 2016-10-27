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
    public partial class reservations : Form
    {
        DatabaseSample systemDB;
        string seats = "", transactionCode ="";
        public reservations()
        {
            InitializeComponent();
            systemDB = new DatabaseSample();
        }

        public int totalSeatCount = 0;
        public double price = 0.00, totalPrice = 0.00;
        public int count = 0;

        private void reservations_Load(object sender, EventArgs e)
        {
            foreach (Control crtl in this.Controls)
            {
                if (crtl is CheckBox)
                    ((CheckBox)crtl).Appearance = Appearance.Button;
            }
            systemDB.SelectMovieTitle(movies.cinemaMovieID[movies.cmID]);
            button1.Image = systemDB.GetMovieImage();
            button1.Enabled = true;
            //
            CheckReserved();

            //default value for textbox
            tboxChange.Text = Convert.ToString("0.00");
            tboxTotalAmount.Text = Convert.ToString("0.00");
            tboxPayAmount.Text = Convert.ToString("0.00");

            /* assign value from previous movies */
            lblMoviePrice.Text = movies.price;
            lblShowing.Text = movies.time;
            lblTitle.Text = movies.title;
            lblCinema.Text = movies.cinema;
            lblSeatCount.Text = movies.seat;

            price = double.Parse(movies.price);
            totalSeatCount = Int32.Parse(movies.seat);
            seatCount(count, totalPrice);
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {   
            // clear all checked checkbox and reset inputs to default value
            foreach (Control crtl in this.Controls)
            {
                if (crtl is CheckBox)
                    if (((CheckBox)crtl).Checked == true && ((CheckBox)crtl).Enabled==true)
                        ((CheckBox)crtl).Checked = false;
            }
            this.Close();
        }

        public void seatCount(int count, double totalPrice)
        {
            // if seatAvailable is equal to 0 disable uncheck checkbox
            if (count == totalSeatCount)
                foreach (Control crtl in this.Controls)
                {
                    if (crtl is CheckBox)
                        if (((CheckBox)crtl).Checked == false) crtl.Enabled = false;
                }
            else
                foreach (Control crtl in this.Controls)
                {
                    if (crtl is CheckBox)
                        if (((CheckBox)crtl).Checked == false) crtl.Enabled = true;
                }

            //Computation for Cinema Details and Payment Details
            lblMoviePrice.Text = price.ToString("#.00");
            tboxTotalAmount.Text = totalPrice.ToString("0.00");
            lblSeatCount.Text = Convert.ToString(totalSeatCount - count);
        }

        public void AddSeat()
        {
            //MessageBox.Show("checked");
            count += 1;
            totalPrice += price;
        }

        public void RemoveSeat() 
        {
            //MessageBox.Show("unchecked");
            count -= 1;
            totalPrice -= price;
        }

        private void tboxPayAmountLeave(object sender, EventArgs e)
        {
            double payAmount = double.Parse(tboxPayAmount.Text);
            double totalAmount = double.Parse(tboxTotalAmount.Text);
            double total = (payAmount - totalAmount);

            if (total < 0)
                MessageBox.Show("Please Enter Exact to Greater than the Total Amount");
            tboxChange.Text = total.ToString("0.00");
        }
        private void CheckReserved()
        {
           
            systemDB.CheckReservation(movies.mappingID);
            string[] seatID = systemDB.GetSeatID();
            bool[] seatStatus = systemDB.GetSeatStatus();
            if(seatID!=null)
                for (int i = 0; i < seatID.Length; i++)
                    foreach (Control crtl in this.Controls)
                    {
                        if (crtl is CheckBox)
                            if (((CheckBox)crtl).Text == seatID[i])
                            {
                                ((CheckBox)crtl).Checked = true;
                                ((CheckBox)crtl).Enabled = false;
                            }
                    }
        }

        private void btnReserve_Click(object sender, EventArgs e)
        {
            foreach (Control crtl in this.Controls)
            {
                if (crtl is CheckBox)
                    if (((CheckBox)crtl).Checked && ((CheckBox)crtl).Enabled)
                    {
                        systemDB.InsertSeat(((CheckBox)crtl).Text, movies.mappingID);
                        ((CheckBox)crtl).Enabled = false;
                        seats += ((CheckBox)crtl).Text + " ";
                    }
            }
            TransactReservation();
            MessageBox.Show("Transaction Successful!!!");
            this.Close();
        }
        public static string RemoveWhitespace(string input)
        {
            return new string(input.ToCharArray()
                .Where(c => !Char.IsWhiteSpace(c))
                .ToArray());
        }
        private void SetTransactionCode()
        {
            
            transactionCode += movies.cinemaMovieID[movies.cmID].ToString() + RemoveWhitespace(GetSeats());
            
        }
        public void TransactReservation()
        {
            SetTransactionCode();
            systemDB.InsertTransaction((decimal)totalPrice, count, movies.mappingID, transactionCode);
            string output = String.Format("Movie Title: {0}" +
                                        "\nScreening Schedule: {1}" +
                                        "\nTotal Seats Reserved: {2}" +
                                        "\nSeats: {3}" +
                                        "\nTotal Price: P{4:F2}" +
                                        "\n\nTransaction Code: {5}",
                                        systemDB.GetMovieTitle(), systemDB.GetSched(movies.mappingID), count, GetSeats(), totalPrice, transactionCode);
            MessageBox.Show(output);
        }
        private string GetSeats()
        {
            

            return seats;
        }
        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox2.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox3_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox3.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox4_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox4.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox5_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox5.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox6_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox6.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox7_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox7.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox8_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox8.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox9_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox9.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox10_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox10.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox11_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox11.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox12_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox12.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox13_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox13.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox14_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox14.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox15_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox15.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox16_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox16.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox17_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox17.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox18_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox18.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox19_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox19.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox20_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox20.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox21_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox21.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox22_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox22.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox23_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox23.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox24_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox24.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox25_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox25.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox26_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox26.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox27_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox27.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox28_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox28.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox29_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox29.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox30_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox30.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox31_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox31.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox32_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox32.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox33_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox33.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox34_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox34.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox35_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox35.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox36_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox36.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox37_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox37.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox38_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox38.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox39_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox39.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox40_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox40.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox41_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox41.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox42_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox42.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox43_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox43.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox44_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox44.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox45_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox45.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox46_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox46.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox47_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox47.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox48_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox48.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox49_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox49.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void checkBox50_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox50.Checked)
                AddSeat();
            else
                RemoveSeat();

            seatCount(count, totalPrice);
        }

        private void reservations_FormClosed(object sender, FormClosedEventArgs e)
        {
            Program.formMovies.Show(); 
        }
    }
}
