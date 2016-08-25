using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class AtbashCipher : System.Web.UI.Page
    {
        private string plain = "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ";
        private string cipher = "zZyYxXwWvVuUtTsSrRqQpPoOnNmMlLkKjJiIhHgGfFeEdDcCbBaA";

        protected void Page_Load(object sender, EventArgs e)
        {
            //Do nothing
        }

        //Go button clicked
        protected void ACButtonClick(object sender, EventArgs e)
        {
            outputTxtBox.Text = atbashCipher(inputTxtBox.Text.ToString().Trim());
        }

        //Encode/Decode the Atbash Cipher
        private string atbashCipher(string input)
        {
            StringBuilder toReturn = new StringBuilder();
            foreach (char c in input)
            {
                if (plain.Contains(c))
                    toReturn.Append(cipher[plain.IndexOf(c)]);
                else
                    toReturn.Append(c);
            }
            return toReturn.ToString();
        }
    }
}