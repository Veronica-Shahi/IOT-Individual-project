namespace first_application
{
    partial class Form1
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
            this.btnpress = new System.Windows.Forms.Button();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textresult = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btnpress
            // 
            this.btnpress.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btnpress.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnpress.ForeColor = System.Drawing.SystemColors.Info;
            this.btnpress.Location = new System.Drawing.Point(294, 221);
            this.btnpress.Name = "btnpress";
            this.btnpress.Size = new System.Drawing.Size(75, 23);
            this.btnpress.TabIndex = 0;
            this.btnpress.Text = "click";
            this.btnpress.UseVisualStyleBackColor = false;
            this.btnpress.Click += new System.EventHandler(this.btnpress_Click);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(269, 83);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 1;
            this.textBox1.Text = "veronica";
            this.textBox1.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // textresult
            // 
            this.textresult.Location = new System.Drawing.Point(269, 317);
            this.textresult.Name = "textresult";
            this.textresult.Size = new System.Drawing.Size(100, 20);
            this.textresult.TabIndex = 2;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(563, 450);
            this.Controls.Add(this.textresult);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.btnpress);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnpress;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textresult;
    }
}

