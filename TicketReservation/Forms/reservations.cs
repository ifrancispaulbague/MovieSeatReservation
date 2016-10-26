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
            checkBox13.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox14.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox15.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox16.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox17.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox18.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox19.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox20.Appearance = System.Windows.Forms.Appearance.Button; 
            checkBox21.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox22.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox23.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox24.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox25.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox26.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox27.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox28.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox29.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox30.Appearance = System.Windows.Forms.Appearance.Button; 
            checkBox31.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox32.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox33.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox34.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox35.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox36.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox37.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox38.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox39.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox40.Appearance = System.Windows.Forms.Appearance.Button; 
            checkBox41.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox42.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox43.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox44.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox45.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox46.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox47.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox48.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox49.Appearance = System.Windows.Forms.Appearance.Button;
            checkBox50.Appearance = System.Windows.Forms.Appearance.Button;

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
                {
                    switch (seatID[i])
                    {
                        case "A1": checkBox1.Checked = true; checkBox1.Enabled = false; break;
                        case "A2": checkBox2.Checked = true; checkBox2.Enabled = false; break;
                        case "A3": checkBox3.Checked = true; checkBox3.Enabled = false; break;
                        case "A4": checkBox4.Checked = true; checkBox4.Enabled = false; break;
                        case "A5": checkBox5.Checked = true; checkBox5.Enabled = false; break;
                        case "A6": checkBox6.Checked = true; checkBox6.Enabled = false; break;
                        case "A7": checkBox7.Checked = true; checkBox7.Enabled = false; break;
                        case "A8": checkBox8.Checked = true; checkBox8.Enabled = false; break;
                        case "A9": checkBox9.Checked = true; checkBox9.Enabled = false; break;
                        case "A10": checkBox10.Checked = true; checkBox10.Enabled = false; break;
                        case "B1": checkBox11.Checked = true; checkBox11.Enabled = false; break;
                        case "B2": checkBox12.Checked = true; checkBox12.Enabled = false; break;
                        case "B3": checkBox13.Checked = true; checkBox13.Enabled = false; break;
                        case "B4": checkBox14.Checked = true; checkBox14.Enabled = false; break;
                        case "B5": checkBox15.Checked = true; checkBox15.Enabled = false; break;
                        case "B6": checkBox16.Checked = true; checkBox16.Enabled = false; break;
                        case "B7": checkBox17.Checked = true; checkBox17.Enabled = false; break;
                        case "B8": checkBox18.Checked = true; checkBox18.Enabled = false; break;
                        case "B9": checkBox19.Checked = true; checkBox19.Enabled = false; break;
                        case "B10": checkBox20.Checked = true; checkBox20.Enabled = false; break;
                        case "C1": checkBox21.Checked = true; checkBox21.Enabled = false; break;
                        case "C2": checkBox22.Checked = true; checkBox22.Enabled = false; break;
                        case "C3": checkBox23.Checked = true; checkBox23.Enabled = false; break;
                        case "C4": checkBox24.Checked = true; checkBox24.Enabled = false; break;
                        case "C5": checkBox25.Checked = true; checkBox25.Enabled = false; break;
                        case "C6": checkBox26.Checked = true; checkBox26.Enabled = false; break;
                        case "C7": checkBox27.Checked = true; checkBox27.Enabled = false; break;
                        case "C8": checkBox28.Checked = true; checkBox28.Enabled = false; break;
                        case "C9": checkBox29.Checked = true; checkBox29.Enabled = false; break;
                        case "C10": checkBox30.Checked = true; checkBox30.Enabled = false; break;
                        case "D1": checkBox31.Checked = true; checkBox31.Enabled = false; break;
                        case "D2": checkBox32.Checked = true; checkBox32.Enabled = false; break;
                        case "D3": checkBox33.Checked = true; checkBox33.Enabled = false; break;
                        case "D4": checkBox34.Checked = true; checkBox34.Enabled = false; break;
                        case "D5": checkBox35.Checked = true; checkBox35.Enabled = false; break;
                        case "D6": checkBox36.Checked = true; checkBox36.Enabled = false; break;
                        case "D7": checkBox37.Checked = true; checkBox37.Enabled = false; break;
                        case "D8": checkBox38.Checked = true; checkBox38.Enabled = false; break;
                        case "D9": checkBox39.Checked = true; checkBox39.Enabled = false; break;
                        case "D10": checkBox40.Checked = true; checkBox40.Enabled = false; break;
                        case "E1": checkBox41.Checked = true; checkBox41.Enabled = false; break;
                        case "E2": checkBox42.Checked = true; checkBox42.Enabled = false; break;
                        case "E3": checkBox43.Checked = true; checkBox43.Enabled = false; break;
                        case "E4": checkBox44.Checked = true; checkBox44.Enabled = false; break;
                        case "E5": checkBox45.Checked = true; checkBox45.Enabled = false; break;
                        case "E6": checkBox46.Checked = true; checkBox46.Enabled = false; break;
                        case "E7": checkBox47.Checked = true; checkBox47.Enabled = false; break;
                        case "E8": checkBox48.Checked = true; checkBox48.Enabled = false; break;
                        case "E9": checkBox49.Checked = true; checkBox49.Enabled = false; break;
                        case "E10": checkBox50.Checked = true; checkBox50.Enabled = false; break;
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
            if (checkBox2.Checked && checkBox2.Enabled == true)
            {
                systemDB.InsertSeat("A2", movies.mappingID);
                checkBox2.Enabled = false;
            }
            if (checkBox3.Checked && checkBox3.Enabled == true)
            {
                systemDB.InsertSeat("A3", movies.mappingID);
                checkBox3.Enabled = false;
            }
            if (checkBox4.Checked && checkBox4.Enabled == true)
            {
                systemDB.InsertSeat("A4", movies.mappingID);
                checkBox4.Enabled = false;
            }
            if (checkBox5.Checked && checkBox5.Enabled == true)
            {
                systemDB.InsertSeat("A5", movies.mappingID);
                checkBox5.Enabled = false;
            }
        }
    }
}
