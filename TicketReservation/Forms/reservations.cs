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
            checkBox1.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox2.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox3.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox4.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox5.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox6.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox7.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox8.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox9.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox10.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox11.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox12.Appearance = System.Windows.Forms.Appearance.Button;

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

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {   
            // clear all checked checkbox and reset inputs to default value
            foreach (Control crtl in this.Controls)
            {
                if (crtl is CheckBox)
                    if (((CheckBox)crtl).Checked == true) ((CheckBox)crtl).Checked = false;
            }
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

        public void AddSeat()
        {
            MessageBox.Show("checked");
            count += 1;
            totalPrice += price;
        }

        public void RemoveSeat() 
        {
            MessageBox.Show("unchecked");
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
                {
                    switch (seatID[i])
                    {
                        case "A1": checkBox1.Checked = true; checkBox1.Enabled = false; break;
                        case "A2": checkBox2.Checked = true; checkBox2.Enabled = false; break;
                        case "A3": checkBox3.Checked = true; checkBox3.Enabled = false; break;
                        case "A4": checkBox4.Checked = true; checkBox4.Enabled = false; break;
                        case "A5": checkBox5.Checked = true; checkBox5.Enabled = false; break;
                    }
                }
        }

        private void btnReserve_Click(object sender, EventArgs e)
        {
            if (checkBox1.Checked && checkBox1.Enabled==true)
            {
                systemDB.InsertSeat("A1", movies.mappingID);
                checkBox1.Enabled = false;
            }
            if (checkBox1.Checked && checkBox1.Enabled == true)
            {
                systemDB.InsertSeat("A2", movies.mappingID);
                checkBox1.Enabled = false;
            }
            if (checkBox1.Checked && checkBox1.Enabled == true)
            {
                systemDB.InsertSeat("A3", movies.mappingID);
                checkBox1.Enabled = false;
            }
            if (checkBox1.Checked && checkBox1.Enabled == true)
            {
                systemDB.InsertSeat("A4", movies.mappingID);
                checkBox1.Enabled = false;
            }
            if (checkBox1.Checked && checkBox1.Enabled == true)
            {
                systemDB.InsertSeat("A5", movies.mappingID);
                checkBox1.Enabled = false;
            }
        }
    }
}
