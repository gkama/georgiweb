using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class ConvertMinutesPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Do nothing
        }

        //Converting Minutes Button Clicked
        protected void ConvertingMinutesButtonClick(object sender, EventArgs e)
        {
            int ParsedNumber;
            bool BigOrNot = Int32.TryParse(InputConvertingMinutes.Text, out ParsedNumber);

            if (BigOrNot)
            {
                ConvertingMinutesInvalidInputLabel.Text = "";
                string Result = ConvertingMinutes(ParsedNumber);
                ConvertingMinutesResultLabel.Text += Result + "\r\n";
                ConvertingMinutesResultLabel.Text = ConvertingMinutesResultLabel.Text.Replace("\r\n", "<br/>");
            }
            else
                ConvertingMinutesInvalidInputLabel.Text = "Invalid Input!\r\n Range is: -2,147,483,648 to 2,147,483,647";

            //Show <hr/> tags
            ABOVE_OUTPUT_HR.Visible = true;
            BELOW_OUTPUT_HR.Visible = true;
        }




        // Converting Minutes to readable string
        protected string ConvertingMinutes(int Minutes)
        {
            //Error check
            if (Minutes < 0)
                return "Minutes is negative!";
            else if (Minutes == 0)
                return "Minutes is 0!";
            else
            {
                //Map time units to the number of minutes they contain
                //(i.e. 60 minutes per hour)
                SortedDictionary<String, int> timeUnits = new SortedDictionary<String, int>();

                timeUnits.Add("minute", 1);
                timeUnits.Add("hour", 60);
                timeUnits.Add("day", 60 * 24);
                timeUnits.Add("month", 60 * 24 * 30);
                timeUnits.Add("year", 60 * 24 * 365);

                //Result from conversion
                SortedDictionary<String, int> Results = new SortedDictionary<String, int>();

                //Sort the time in descending order
                string[] Names = { "year", "month", "day", "hour", "minute" };

                //
                int minutesRemaining = Minutes;
                foreach (string unit in Names)
                {
                    int divisor = timeUnits[unit];
                    Results.Add(unit, minutesRemaining / divisor);
                    minutesRemaining %= divisor;
                }

                //Composing out string
                StringBuilder MinutesSB = new StringBuilder(Minutes + " minutes = ");

                //Check the results for a maximal time unit to have a non-zero value
                //and remember the unit's position in the sorted "names" array
                int Position = -1;
                for (int i = 0; i < Names.Count(); i++)
                {
                    if (Results[Names[i]] != 0)
                    {
                        Position = i; break;
                    }
                }

                //Limit output to 3 consecutive values if input larger than year, 2 otherwise
                int Offset = Names[Position].Equals("year") ? 3 : 2;

                //Iterate through appropriate time units and append their respective values
                //to the output string:
                for (int i = Position; i < Position + Offset && i < Names.Count(); i++)
                {
                    int n = Results[Names[i]];
                    if (n == 0) continue;
                    if (i > Position)
                    {
                        //Add comma or "and" between the values
                        MinutesSB.Append(i == Position + Offset - 1 ? " and " : ", ");
                    }
                    MinutesSB.Append(n + " " + Names[i]);
                    //Plural suffix
                    if (n > 1) MinutesSB.Append("s");
                }
                //Return the result
                return MinutesSB.ToString().Trim();
            }
        }
    }
}