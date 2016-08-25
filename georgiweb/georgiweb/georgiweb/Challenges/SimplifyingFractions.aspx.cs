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
    public partial class SimplifyingFractions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Do nothing
        }

        //When 'Go' button is clicked / main function
        protected void SFButtonClick(object sender, EventArgs e)
        {
            //Regext check input
            Regex numeric09 = new Regex(@"^[0-9]+$");
            Regex alphaAZ = new Regex(@"^[A-Za-z]+$");

            Match matchNumberic09n = numeric09.Match(numeratorInputTxtBox.Text.ToString().Trim());
            Match matchalphaAZn = alphaAZ.Match(numeratorInputTxtBox.Text.ToString().Trim());

            Match matchNumberic09d = numeric09.Match(denominatorInputTxtBox.Text.ToString().Trim());
            Match matchalphaAZd = alphaAZ.Match(denominatorInputTxtBox.Text.ToString().Trim());

            //When regex matches
            if (matchNumberic09n.Success && matchNumberic09d.Success)
            {
                int numerator;
                Int32.TryParse(numeratorInputTxtBox.Text.ToString().Trim(), out numerator);
                int denominator;
                Int32.TryParse(denominatorInputTxtBox.Text.ToString().Trim(), out denominator);

                int GCD = numGCD(numerator, denominator);
                outputLabel.Text = (numerator / GCD).ToString() + " / " + (denominator / GCD).ToString();
            }
            else if (matchalphaAZn.Success && matchalphaAZd.Success)
                outputLabel.Text = lettersFraction(numeratorInputTxtBox.Text.ToString().Trim(), denominatorInputTxtBox.Text.ToString().Trim());
            else
                outputLabel.Text = "Incorrect Input! Please try again!";
        }

        //Euclid's algorithm for GCD - greatest common divisor
        private int numGCD(int num, int den)
        {
            while (num != 0 && den != 0)
            {
                if (num > den)
                    num %= den;
                else
                    den %= num;
            }

            if (num == 0)
                return den;
            else
                return num;
        }

        //GCD for letters
        static string lettersFraction(string num, string den)
        {
            StringBuilder toReturn = new StringBuilder();

            string numLocal = num.Trim().ToLower();
            string denLocal = den.Trim().ToLower();

            if (numLocal == denLocal)
                return ("1 / 1");
            else if (numLocal == "")
                return ("1 / " + denLocal);
            else if (denLocal == "")
                return (numLocal + " / 1");
            //When numerator is just of size 1
            else if (numLocal.Length == 1)
            {
                foreach (char c in denLocal)
                    if (c == numLocal[0])
                    {
                        denLocal = denLocal.Remove(denLocal.IndexOf(c), 1);
                        numLocal = numLocal.Remove(numLocal.IndexOf(c), 1);
                        break;
                    }
                if (denLocal == "")
                    denLocal = "1";
                if (numLocal == "")
                    numLocal = "1";
                toReturn.Append(numLocal + " / " + denLocal);
            }
            else if (denLocal.Length == 1)
            {
                foreach (char c in numLocal)
                    if (c == denLocal[0])
                    {
                        numLocal = numLocal.Remove(numLocal.IndexOf(c), 1);
                        denLocal = denLocal.Remove(denLocal.IndexOf(c), 1);
                        break;
                    }
                if (denLocal == "")
                    denLocal = "1";
                if (numLocal == "")
                    numLocal = "1";
                toReturn.Append(numLocal + " / " + denLocal);
            }
            else
            {
                //More than 1
                StringBuilder denD = new StringBuilder();
                StringBuilder denN = new StringBuilder();
                denN.Append(numLocal);
                denD.Append(denLocal);

                int posN = 0;
                int posD = 0;
                for (int i = 0; i < denN.Length; i++)
                {
                    for (int j = 0; j < denD.Length; j++)
                    {
                        if (denN[i] == denD[j])
                        {
                            denN.Remove(posN, 1);
                            denD.Remove(posD, 1);
                            return lettersFraction(denN.ToString(), denD.ToString());
                        }
                        posD++;
                    }
                    posD = 0;
                    posN++;
                }

                if (denN.ToString() == "")
                    denN.Append("1");
                if (denD.ToString() == "")
                    denD.Append("1");
                toReturn.Append(denN.ToString() + " / " + denD.ToString());
            }

            return toReturn.ToString();
        }
    }
}