using System;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class LettersInAlphaOrder : System.Web.UI.Page
    {
        int mIndexOfChars = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Do nothing
        }

        //When Go button is clicked
        protected void AOLettersButtonClick(object sender, EventArgs e)
        {
            string Result;

            if (IsWordsOnly(AOLettersInput.Text.ToString()) == true)
            {
                ABOVE_TABLE_HR.Visible = true;

                Result = AreLettersInAlphabeticalOrder(AOLettersInput.Text.ToString());

                AOLettersButtonLabel.Text += AOLettersInput.Text.ToString() + " is " + Result + "\r\n";

                AOLettersButtonLabel.Text = AOLettersButtonLabel.Text.Replace("\r\n", "<br/>");
            }
            else
                AOLettersInvalidInput.Text = "Invalid Input! Must be word only!";

        }

        //Sample Words/Order
        protected void SampleOutputButtonClick(object sender, EventArgs e)
        {
            string[] SampleWords = {"billowy", "biopsy", "chinos", "ndefaced",
                                       "chintz", "sponged", "bijoux", "abhors", 
                                       "fiddle", "nbegins", "chimps" , "wronged"};
            //Display words
            for (int i = 0; i < SampleWords.Length - 1; i++)
            {
                WordsOutputLabel.Text += SampleWords[i] + "\r\n";
                IsLabel.Text += "IS" + "\r\n";
            }
            IsLabel.Text = IsLabel.Text.Replace("\r\n", "<br/>");
            WordsOutputLabel.Text = WordsOutputLabel.Text.Replace("\r\n", "<br/>");


            for (int j = 0; j < SampleWords.Length - 1; j++)
            {
                OrderOutputLabel.Text += AreLettersInAlphabeticalOrder(SampleWords[j]) + "\r\n";
            }
            OrderOutputLabel.Text = OrderOutputLabel.Text.Replace("\r\n", "<br/>");

            SampleOutputButton.Visible = false;
        }

        //Check if letters are in Alphabetical Order
        protected string AreLettersInAlphabeticalOrder(string word)
        {
            mIndexOfChars = 0;

            string InOrder = "IN ORDER";
            string NotInOrder = "NOT IN ORDER";
            string ReverseOrder = "IN REVERSE ORDER";

            char[] LettersOfWord = word.Trim().ToCharArray();
            for (int i = 0; i < (LettersOfWord.Length-2); i++)
            {
                if (LettersOfWord[i] > LettersOfWord[i + 1])
                {
                    mIndexOfChars++;
                }
            }
            if (mIndexOfChars == 0)
                return InOrder;
            else if (mIndexOfChars == (LettersOfWord.Length - 2))
                return ReverseOrder;
            else
                return NotInOrder;
        }


        //Check if input is a word
        protected Boolean IsWordsOnly(string str)
        {
            return Regex.IsMatch(str, @"^[a-zA-Z]+$");
        }
    }
}