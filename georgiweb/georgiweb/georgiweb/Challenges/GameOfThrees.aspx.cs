using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class GameOfThrees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GOTButtonClick(object sender, EventArgs e)
        {
            outputTxtBox.Text = "";

            int startNumber;
            Int32.TryParse(startNumberTxtBox.Text.ToString().Trim(), out startNumber);

            do
            {
                if (startNumber % 3 == 0)
                    outputTxtBox.Text += startNumber + " + 0" + "\r\n";
                else if (startNumber % 3 == 1)
                {
                    outputTxtBox.Text += startNumber + " - 1" + "\r\n";
                    startNumber = startNumber - 1;
                }
                else if (startNumber % 3 == 2)
                {
                    outputTxtBox.Text += startNumber + " + 1" + "\r\n";
                    startNumber = startNumber + 1;
                }
                startNumber = startNumber / 3;
            }
            while (startNumber != 1);
            outputTxtBox.Text += "1";
        }
    }
}