using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class DeBruijnSequence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Do Nothing
        }

        //On 'Go' Click
        protected void DBSButtonClick(object sender, EventArgs e)
        {
            try
            {
                int k;
                int n;
                bool isKNumber = int.TryParse(inputKTxtBox.Text.ToString().Trim(), out k);
                bool isNNumber = int.TryParse(inputNTxtBox.Text.ToString().Trim(), out n);

                if (isNNumber == false)
                {
                    outputTxtBox.Visible = true;
                    outputTxtBox.Text = "Invalid Input!/r/n" + "n must be numeric!";
                }
                else
                {
                    outputTxtBox.Visible = true;
                    if (isKNumber)
                        outputTxtBox.Text += "B(" + k + ", " + inputNTxtBox.Text.ToString().Trim() + "): "
                            + GetDeBruijnSequence(k, int.Parse(inputNTxtBox.Text.ToString().Trim())) + Environment.NewLine;
                    else
                        outputTxtBox.Text += "B(" + inputKTxtBox.Text.ToString().Trim() + ", " + inputNTxtBox.Text.ToString().Trim() + "): "
                            + GetDeBruijnSequence(inputKTxtBox.Text.ToString().Trim(), int.Parse(inputNTxtBox.Text.ToString().Trim())) + Environment.NewLine;
                }

                //Make the Clear Output button visible;
                DBSClearButton.Visible = true;
            }
            catch(Exception)
            {
                outputTxtBox.Text += "Too big of a De Bruijn Sequence!\r\n";
            }
        }

        //De Bruijn Sequence
        string GetDeBruijnSequence(int k, int n)
        {
            //Call function
            var seq = GetDeBruijnSequence(String.Concat(Enumerable.Range(0, k)), n);

            StringBuilder toReturn = new StringBuilder();
            foreach (int i in (seq.Select(s => (int)s - 48).ToList()))
                toReturn.Append(i.ToString());

            //Return built output string
            return toReturn.ToString();
        }

        //De Bruijn Sequence Calculator Function
        string GetDeBruijnSequence(string s, int n)
        {
            var k = s.Length;
            var Sequence = new List<char>();
            var TempSequence = new List<int>() { -1 };

            while (TempSequence.Count > 0)
            {
                TempSequence[TempSequence.Count - 1]++;
                if (n % TempSequence.Count == 0) TempSequence.ForEach(x => Sequence.Add(s[x]));
                int c = TempSequence.Count;
                while (TempSequence.Count < n) TempSequence.Add(TempSequence[TempSequence.Count - c]);
                while (TempSequence.Count > 0 && TempSequence.Last() == k - 1) TempSequence.RemoveAt(TempSequence.Count - 1);
            }

            StringBuilder toReturn = new StringBuilder();
            foreach (char c in Sequence)
                toReturn.Append(c.ToString());

            //Return built output string
            return toReturn.ToString();
        }


        //Clear output
        protected void DBSClearButtonClick(object sender, EventArgs e)
        {
            outputTxtBox.Text = "";
        }
    }
}