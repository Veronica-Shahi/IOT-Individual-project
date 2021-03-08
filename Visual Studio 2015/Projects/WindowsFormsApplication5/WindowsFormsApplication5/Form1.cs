using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication5
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int num1 = int.Parse(textBox1.Text);
            int num2 = int.Parse(textBox2.Text);
            int sum = num1 + num2;
            //MessageBox.Show("the sum of " + num1 + "and " + num2 + "is:" + sum);
            //to display the result in level
            add.Text = sum.ToString();
            


            

        }

       

        private void button2_Click(object sender, EventArgs e)
        {
            int num1 = int.Parse(textBox1.Text);
            int num2 = int.Parse(textBox2.Text);
            int sub = num1 - num2;
            MessageBox.Show("the sum of " + num1 + "and " + num2 + "is:" + sub);
            add.Text = sub.ToString();
        }
    }
}
