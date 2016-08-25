using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class FormattingJCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Do nothing
        }

        protected void WITBButtonClick(object sender, EventArgs e)
        {
            string Input = "AEERTYOXMCNB_S";
            string ChallengeInput1 = "PQAREIOURSTHGWIOAE_";
            string ChallengeInput2 = "LQTOONOEFFJZT";
            string ChallengeInput3 = "AXHDRUIOR_XHJZUQEE";

            outputLabel.Text = GetOutput(Input);
            challengeOutput1Label.Text = GetOutput(ChallengeInput1);
            challengeOutput2Label.Text = GetOutput(ChallengeInput2);
            challengeOutput3Label.Text = GetOutput(ChallengeInput3);
        }

        private string GetOutput(string Input)
        {
            Dictionary<string, int> tilesInPlay = new Dictionary<string, int>();
            Dictionary<string, int> resultTiles = new Dictionary<string, int>();
            Dictionary<string, int> tileDis = new Dictionary<string, int>()
            {
                {"A", 9}, {"B", 2}, {"C", 2}, {"D", 4}, {"E", 12}, {"F", 2},
                {"G", 3}, {"H", 2}, {"I", 9}, {"J", 1}, {"K", 1},  {"L", 4},
                {"M", 2}, {"N", 6}, {"O", 8}, {"P", 2}, {"Q", 1},  {"R", 6},
                {"S", 4}, {"T", 6}, {"U", 4}, {"V", 2}, {"W", 2},  {"X", 1},
                {"Y", 2}, {"Z", 1}, {"_", 2},
            };

            //Process input
            foreach (char c in Input)
            {
                if (!tilesInPlay.ContainsKey(c.ToString()))
                    tilesInPlay.Add(c.ToString(), 1);
                else
                    tilesInPlay[c.ToString()] += 1;
            }

            //Go through dictionaries
            foreach (KeyValuePair<string, int> entry in tileDis)
            {
                if (tilesInPlay.ContainsKey(entry.Key))
                    resultTiles.Add(entry.Key, tileDis[entry.Key] - tilesInPlay[entry.Key]);
                else
                    resultTiles.Add(entry.Key, entry.Value);
            }


            //Compile the result
            Dictionary<int, string> resultDic = new Dictionary<int, string>();
            string toReturn = string.Empty;
            //var sortedResultTiles = from entry in resultTiles orderby entry.Value ascending select entry;
            foreach (KeyValuePair<string, int> entry in resultTiles.OrderByDescending(key => key.Value))
            {
                if (entry.Value < 0)
                    toReturn += "Invalid input. More " + entry.Key + "'s" + " have been taken from the bag than possible.\r\n";
                else
                {
                    if (!resultDic.ContainsKey(entry.Value))
                        resultDic.Add(entry.Value, entry.Key);
                    else if (resultDic.ContainsKey(entry.Value))
                        resultDic[entry.Value] += ", " + entry.Key;
                }
            }

            StringBuilder OutputStr = new StringBuilder();
            if (string.IsNullOrEmpty(toReturn))
                foreach (KeyValuePair<int, string> entry in resultDic)
                    OutputStr.Append(entry.Key + ": " + entry.Value + "<br />");
            else
                OutputStr.Append(toReturn + "<br />");

            //Return the output
            return OutputStr.ToString();
        }
    }
}