using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication8
{
    public partial class Form1 : Form
    {
        Random r = new Random();
        Color col;

        public Form1()
        {
            InitializeComponent();
        }

        private void btnRun_Click(object sender, EventArgs e)
        {
           
            //MessageBox.Show(""+r.Next(100));
            btnRun.Location = new Point(r.Next(250),r.Next(250));
        }

        private void label1_MouseMove(object sender, MouseEventArgs e)
        {
            //label1.BackColor = Color.FromArgb(100, 100, 100);
            label1.BackColor=Color.FromArgb(r.Next(250), r.Next(250), r.Next(250));

        }

        private void Form1_MouseDown(object sender, MouseEventArgs e)
        {
            if(e.Clicks==2)
            {
                label1.BackColor = col;
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            col = label1.BackColor;
        }
    }
}
