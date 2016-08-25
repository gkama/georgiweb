using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class TheNameGame : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TheNameGameButtonClick(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TheNameGameInput.Text.ToString()))
            {
                TheNameGameInvalidInput.Text = "Input cannot be empty!";
            }
            else
            {
                TheNameGameInvalidInput.Text = "";

                //Show <hr> tags
                ABOVE_OUTPUT_HR.Visible = true;
                BELOW_OUTPUT_HR.Visible = true;

                TheNameGameResultLabel.Text = GetSongLyrics(TheNameGameInput.Text.ToString());
                TheNameGameResultLabel.Text = TheNameGameResultLabel.Text.Replace("\r\n", "<br/>");
            }
        }

        //Get the lyrics of the song
        protected string GetSongLyrics(string name)
        {
            var Vowels = "aeiou";

            StringBuilder Lyrics = new StringBuilder();

            //This only applies if name does not start with a B, F, or M
            if (Vowels.Contains(name.ToLower()[0]))
            {
                //First append the name twice
                Lyrics.Append(name.ToUpper()[0] + name.Remove(0, 1) + ", ");
                Lyrics.Append(name.ToUpper()[0] + name.Remove(0, 1) + " ");

                //Then append "bo"
                Lyrics.Append("Bo-B" + name.ToLower()[0] + name.Remove(0, 1) + "," + "\r\n");

                //Then append 'Banana-Fana Fo-F-name"
                Lyrics.Append("Banana-Fana Fo-F" + name.ToLower()[0] + name.Remove(0, 1) + "\r\n");

                //Then append 'Fee-Fi-Mo-M-name"
                Lyrics.Append("Fee-Fi-Mo-M" + name.ToLower()[0] + name.Remove(0, 1) + "\r\n");

                //Finally append name
                Lyrics.Append(name.ToUpper()[0] + name.Remove(0, 1) + "!");
            }
            else if (name.ToLower()[0] != 'm' && name.ToLower()[0] != 'b' && name.ToLower()[0] != 'f')
            {
                //First append the name twice
                Lyrics.Append(name.ToUpper()[0] + name.Remove(0, 1) + ", ");
                Lyrics.Append(name.ToUpper()[0] + name.Remove(0, 1) + " ");

                //Then append "bo"
                Lyrics.Append("Bo-B" + name.Remove(0, 1) + "," + "\r\n");

                //Then append 'Banana-Fana Fo-F-name"
                Lyrics.Append("Banana-Fana Fo-F" + name.Remove(0, 1) + "\r\n");

                //Then append 'Fee-Fi-Mo-M-name"
                Lyrics.Append("Fee-Fi-Mo-M" + name.Remove(0, 1) + "\r\n");

                //Finally append name
                Lyrics.Append(name.ToUpper()[0] + name.Remove(0, 1) + "!");
            }
            else
            {
                //First append the name twice
                Lyrics.Append(name.ToUpper()[0] + name.Remove(0, 1) + ", ");
                Lyrics.Append(name.ToUpper()[0] + name.Remove(0, 1) + " ");

                //Then append "bo"
                Lyrics.Append("Bo-" + name.Remove(0, 1) + "," + "\r\n");

                //Then append 'Banana-Fana Fo-F-name"
                Lyrics.Append("Banana-Fana Fo-" + name.Remove(0, 1) + "\r\n");

                //Then append 'Fee-Fi-Mo-M-name"
                Lyrics.Append("Fee-Fi-Mo-" + name.Remove(0, 1) + "\r\n");

                //Finally append name
                Lyrics.Append(name.ToUpper()[0] + name.Remove(0, 1) + "!");
            }

            return Lyrics.ToString();
        }
    }
}