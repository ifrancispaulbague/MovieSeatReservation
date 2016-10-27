﻿using System;
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
    public partial class timeSlot : Form
    {
        DatabaseSample systemDB;
        public timeSlot()
        {
            InitializeComponent();
            systemDB = new DatabaseSample();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            string timeSlot = tbxTimeSlot.Text;
            systemDB.AddScreenTime(timeSlot);
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Program.formAdmin.Show();
        }
    }
}
