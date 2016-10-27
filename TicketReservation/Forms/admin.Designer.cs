namespace TicketReservation
{
    partial class admin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnSubmit = new System.Windows.Forms.Button();
            this.tbxMovieId = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tbxMovieTitle = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.tbxMoviePrice = new System.Windows.Forms.TextBox();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.btnUpload = new System.Windows.Forms.Button();
            this.btnClear = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.btnCancel = new System.Windows.Forms.Button();
            this.tbxScreenTime = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cmbCinameNo = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // btnSubmit
            // 
            this.btnSubmit.Location = new System.Drawing.Point(13, 206);
            this.btnSubmit.Name = "btnSubmit";
            this.btnSubmit.Size = new System.Drawing.Size(75, 23);
            this.btnSubmit.TabIndex = 0;
            this.btnSubmit.Text = "Submit";
            this.btnSubmit.UseVisualStyleBackColor = true;
            this.btnSubmit.Click += new System.EventHandler(this.btnSubmit_Click);
            // 
            // tbxMovieId
            // 
            this.tbxMovieId.Location = new System.Drawing.Point(119, 38);
            this.tbxMovieId.Name = "tbxMovieId";
            this.tbxMovieId.Size = new System.Drawing.Size(234, 20);
            this.tbxMovieId.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(16, 41);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Movie ID";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 67);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Movie Title";
            // 
            // tbxMovieTitle
            // 
            this.tbxMovieTitle.Location = new System.Drawing.Point(119, 64);
            this.tbxMovieTitle.Name = "tbxMovieTitle";
            this.tbxMovieTitle.Size = new System.Drawing.Size(234, 20);
            this.tbxMovieTitle.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(16, 93);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(63, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Movie Price";
            // 
            // tbxMoviePrice
            // 
            this.tbxMoviePrice.Location = new System.Drawing.Point(119, 90);
            this.tbxMoviePrice.Name = "tbxMoviePrice";
            this.tbxMoviePrice.Size = new System.Drawing.Size(234, 20);
            this.tbxMoviePrice.TabIndex = 5;
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // btnUpload
            // 
            this.btnUpload.Location = new System.Drawing.Point(119, 117);
            this.btnUpload.Name = "btnUpload";
            this.btnUpload.Size = new System.Drawing.Size(234, 23);
            this.btnUpload.TabIndex = 7;
            this.btnUpload.Text = "Upload Image";
            this.btnUpload.UseVisualStyleBackColor = true;
            this.btnUpload.Click += new System.EventHandler(this.btnUpload_Click);
            // 
            // btnClear
            // 
            this.btnClear.Location = new System.Drawing.Point(94, 206);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(75, 23);
            this.btnClear.TabIndex = 8;
            this.btnClear.Text = "Clear";
            this.btnClear.UseVisualStyleBackColor = true;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(16, 149);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(60, 13);
            this.label4.TabIndex = 10;
            this.label4.Text = "Show Time";
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(175, 206);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 11;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // tbxScreenTime
            // 
            this.tbxScreenTime.Location = new System.Drawing.Point(119, 146);
            this.tbxScreenTime.Name = "tbxScreenTime";
            this.tbxScreenTime.Size = new System.Drawing.Size(234, 20);
            this.tbxScreenTime.TabIndex = 9;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(16, 14);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(42, 13);
            this.label5.TabIndex = 12;
            this.label5.Text = "Cinema";
            // 
            // cmbCinameNo
            // 
            this.cmbCinameNo.FormattingEnabled = true;
            this.cmbCinameNo.Items.AddRange(new object[] {
            "C1 - Cinema 1",
            "C2 - Cinema 2",
            "C3 - Cinema 3"});
            this.cmbCinameNo.Location = new System.Drawing.Point(119, 11);
            this.cmbCinameNo.Name = "cmbCinameNo";
            this.cmbCinameNo.Size = new System.Drawing.Size(121, 21);
            this.cmbCinameNo.TabIndex = 13;
            // 
            // admin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(459, 293);
            this.Controls.Add(this.cmbCinameNo);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.tbxScreenTime);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.btnUpload);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.tbxMoviePrice);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.tbxMovieTitle);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tbxMovieId);
            this.Controls.Add(this.btnSubmit);
            this.Name = "admin";
            this.Text = "admin";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnSubmit;
        private System.Windows.Forms.TextBox tbxMovieId;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tbxMovieTitle;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tbxMoviePrice;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.Button btnUpload;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.TextBox tbxScreenTime;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cmbCinameNo;
    }
}