using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class ToBaseN : System.Web.UI.Page
    {
        char[] baseChars = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

        protected void Page_Load(object sender, EventArgs e)
        {
            //Do Nothing
        }

        //On 'Go' Click
        protected void TBNButtonClick(object sender, EventArgs e)
        {
            outputLabel.Text = convertToNBase(int.Parse(valueTxtBox.Text.ToString().Trim()));
        }

        private string convertToNBase(int number)
        {
            switch (toBaseNDDL.SelectedValue.ToString())
            {
                case "2":
                    return Convert.ToString(number, 2);
                case "3":
                    return intToString(number, 3);
                case "4":
                    return intToString(number, 4);
                case "5":
                    return intToString(number, 5);
                case "6":
                    return intToString(number, 6);
                case "7":
                    return intToString(number, 7);
                case "8":
                    return Convert.ToString(number, 8);
                case "9":
                    return intToString(number, 9);
                case "10":
                    return number.ToString();
                default:
                    return "Invalid!";
            }
        }

        //Convert to the rest of the bases
        private string intToString(int number, int targetBase)
        {
            string result = string.Empty;
            do
            {
                result = baseChars[number % targetBase] + result;
                number = number / targetBase;
            }
            while (number > 0);

            return result;
        }
    }
}