using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp99
{
    class Program
    {
        static void Main(string[] args)
        {
            student s = new student(1, "smith");
            s.display();
            student s1 = new student(2, "vero");
            s1.display();
            Console.ReadKey();

        }
    }
}
