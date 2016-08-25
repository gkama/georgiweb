using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class ADNumbersPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Abundant and Deficient Numbers Button Clicked
        protected void ADNumbersButtonClick(object sender, EventArgs e)
        {
            int ParsedNumber;
            bool BigOrNot = Int32.TryParse(ADNumbersInput.Text, out ParsedNumber);

            if (BigOrNot)
            {
                ADNumbersInvalidInput.Text = "";

                int Result = GetADNumbers(ParsedNumber);

                if (Result == -1)
                    ADNumbersButtonLabel.Text += ParsedNumber + " is Perfect!" + "\r\n";
                else if (Result == -2)
                    ADNumbersButtonLabel.Text += ParsedNumber + " is Deficient!" + "\r\n";
                else
                    ADNumbersButtonLabel.Text += ParsedNumber + " is Abundant by " + Result + "!" + "\r\n";

                ADNumbersButtonLabel.Text = ADNumbersButtonLabel.Text.Replace("\r\n", "<br/>");
            }
            else
                ADNumbersInvalidInput.Text = "Invalid Input!\r\n Range is: -2,147,483,648 to 2,147,483,647";

            //Show <hr/> tags
            ABOVE_OUTPUT_HR.Visible = true;
            BELOW_OUTPUT_HR.Visible = true;
        }


        //Get Abundant and Deficient Numbers function
        public int GetADNumbers(int N)
        {
            //Store divisors of N
            List<int> NDivisors = new List<int>();
            int Result = 1;

            //Add the two always true divisors, 1 and the number N. Midway, add the other divisors
            NDivisors.Add(1);
            foreach (var divisor in GetDivisors(N))
                NDivisors.Add(divisor);
            NDivisors.Add(N);

            //Calculate the sum of the divisors
            int DivisorsSum = 0;
            for (int i = 0; i < NDivisors.Count(); i++)
            {
                DivisorsSum += NDivisors[i];
            }

            //Set Result to -1, -2 or the abundant by number respectively since the result from the calculation of the abundancy
            //can never be negative. Based on the result, display if the number is deficient, abundandt or perfect
            if (DivisorsSum == (2 * N))
                Result = -1;
            else if (DivisorsSum < (2 * N))
                Result = -2;
            else if (DivisorsSum > (2 * N))
                Result = DivisorsSum - (2 * N);

            //Return result
            return Result;
        }

        //Get divisors function
        protected IEnumerable<int> GetDivisors(int N)
        {
            return from Divisor in Enumerable.Range(2, N / 2) where (N % Divisor == 0) select Divisor;
        }
    }
}