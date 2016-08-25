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
    public partial class TypoglycemiaPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Do nothing
        }

        protected void TypoclycemiaButtonClick(object sender, EventArgs e)
        {
            //Get the result and display it
            TypoglycemiaInputResult.Text = GetTypoglycemia(TypoglycemiaInput.Text);
        }


        protected string GetTypoglycemia(string input)
        {
            //Validate input
            if (ValidateInput(input) == false)
            {
                TypoglycemiaInputResult.Text = "Incorrect format! Only Valid Text and Valid Punctuation is allowerd!";
                return "";
            }
            else
            {
                //Regex used to divide word up
                var WordRegex = new Regex(@"(?<Word>(?<FirstLetter>\w)(?<MiddleOfWord>[\w']{2,})(?<LastLetter>\w))");
                var Matches = WordRegex.Matches(input);
                
                var OutputString = new StringBuilder(input.Length);

                foreach (Match match in Matches)
                {
                    //Append the result via RegEx matches in the word
                    OutputString.Append(input.Substring(OutputString.Length, match.Index - OutputString.Length) + match.Groups["FirstLetter"].Value + RandomizeWord(match.Groups["MiddleOfWord"].Value) + match.Groups["LastLetter"].Value);
                }

                return OutputString.ToString();
            }
        }

        //Randomize middle of word
        protected string RandomizeWord(string Word)
        {
            var RandomNum = new Random();
            string RandomizedWord;

            // Make sure the word is actually randomized
            do
            {
                // If the middle of a word is 2 letters long - then the only way to randomize it is to switch position
                // of the two letters, otherwise randomize it
                RandomizedWord = string.Join("", Word.Length == 2 ? Word.Reverse() : Word.OrderBy(c => RandomNum.Next()));
            } while (RandomizedWord == Word);

            return RandomizedWord;
        }

        //Validate Input
        protected bool ValidateInput(string input)
        {
            string[] SplitInput = input.Split(' ', '\n');

            var ValidResult = new Regex(@"^[a-zA-Z0-9\p{P}]+$");
            var Matches = ValidResult.Matches(input);

            foreach (string s in SplitInput)
            {
                if (ValidResult.IsMatch(s) == false && s != "")
                    return false;
            }
            return true;
        }
    }
}