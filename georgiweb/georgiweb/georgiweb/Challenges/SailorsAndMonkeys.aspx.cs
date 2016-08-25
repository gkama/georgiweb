using System;
using System.Numerics;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class SailorsAndMonkeys : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SailorsAndMonkeysButtonClick(object sender, EventArgs e)
        {
            if (IsDigitsOnly(InputSailorsAndMonkeys.Text.ToString()) == true){
                if (int.Parse(InputSailorsAndMonkeys.Text) < 2 || int.Parse(InputSailorsAndMonkeys.Text) > 5)
                {
                    SailorsAndMonkeysInvalidInputLabel.Text = "Invalid Output! Must be between 2 and 5 Sailors!";
                }
                else
                {
                    SailorsAndMonkeysInvalidInputLabel.Text = "";

                    //Show <hr> tags
                    ABOVE_OUTPUT_HR.Visible = true;
                    BELOW_OUTPUT_HR.Visible = true;

                    //Get output
                    int coconuts = GetCoconuts(int.Parse(InputSailorsAndMonkeys.Text));
                    SailorsAndMonkeysResultLabel.Text += "Number of coconuts in the original pile:  " + coconuts + " with " + int.Parse(InputSailorsAndMonkeys.Text) + " Sailors!" + "\r\n";
                    SailorsAndMonkeysResultLabel.Text = SailorsAndMonkeysResultLabel.Text.Replace("\r\n", "<br/>");
                }
            }
            else
            {
                SailorsAndMonkeysInvalidInputLabel.Text = "Invalid Output! Must be between 2 and 5 Sailors!";
            }
        }

        //Gets the number of coconuts. If n is returned (number of sailors) then it failed to get the coconuts
        protected int GetCoconuts(int n)
        {
            for (int loop = 1; loop < 10000; loop++)
            {
                int pool = loop;

                for (int person = 1; person <= n+1; person++)
                {
                    if (pool <= 0)
                        break;

                    int share = GetShare(pool, n);
                    int remainder = GetRemainder(pool, n);

                    if (share == 0)
                        break;

                    if (person < n + 1)
                    {
                        if (remainder != 1)
                            break;
                    }
                    else
                        if (remainder != 0)
                            break;

                    pool -= share;
                    if (person < n + 1)
                        pool -= 1;
                    else
                        return loop;
                }   
            }
            return n;
        }

        //Gets share - 1/nth of pool
        protected int GetShare(int pool, int n)
        {
            return (pool / n);
        }
        //Get remainder
        protected int GetRemainder(int pool, int n)
        {
            return (pool % n);
        }

        //Check if input is a word
        protected Boolean IsDigitsOnly(string str)
        {
            return Regex.IsMatch(str, @"^[0-9]+$");
        }
    }
}