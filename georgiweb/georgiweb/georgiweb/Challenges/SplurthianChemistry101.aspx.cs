using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class SplurthianChemistry101 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SCButtonClick(object sender, EventArgs e)
        {
            //Main Challenge
            string elementName = elementNameTxtBox.Text.ToString().Trim();
            string elementSymbol = elementSymbolTxtBox.Text.ToString().Trim();

            if (!(string.IsNullOrEmpty(elementName) && string.IsNullOrEmpty(elementSymbol)))
            {
                if (checkConditions(elementName, elementSymbol) == false)
                { outputLabelString(elementName, elementSymbol, "NO"); }
                else
                { outputLabelString(elementName, elementSymbol, "YES"); }
            }

            //Bonus Challenge 1
            if (!(string.IsNullOrEmpty(challengeTxtBox.Text.ToString())))
                challenge1OutputLabelString(bonusChallenge1(challengeTxtBox.Text.ToString()));
        }

        private Boolean checkConditions(string eleName, string eleSymbol)
        {
            char symbolChar1 = Char.ToLower(eleSymbol[0]);
            char symbolChar2 = Char.ToLower(eleSymbol[1]);

            eleName = eleName.ToLower();

            List<int> listSymbolChar1Pos = FindIndeces(eleName, symbolChar1.ToString()).ToList();
            List<int> listSymbolChar2Pos = FindIndeces(eleName, symbolChar2.ToString()).ToList();

            //First condition: All chemical symbols must be exactly two letters
            if (eleSymbol.Length != 2)
            { return false; }

            //Second condition: Both letters in the symbol must appear in the element name, 
            //but the first letter of the element name does not necessarily need to appear in the symbol
            for (int i = 0; i < eleSymbol.Count(); i++)
            {
                if (!eleName.Contains(Char.ToLower(eleSymbol[i])))
                { return false; }
            }

            //Third condition: The two letters must appear in order in the element name
            if (symbolChar1 != symbolChar2)
            {
                int counter = 0;
                for (int i = 0; i < listSymbolChar1Pos.Count; i++)
                    for (int j = 0; j < listSymbolChar2Pos.Count; j++)
                        if (listSymbolChar1Pos[i] > listSymbolChar2Pos[j])
                            counter++;
                if ((listSymbolChar1Pos.Count * listSymbolChar2Pos.Count) == counter)
                { return false; }
            }

            //Last condition: If the two letters in the symbol are the same, it must appear twice in the element name
            if (symbolChar1 == symbolChar2)
                if (eleName.Count(x => x == symbolChar1) < 2)
                    return false;

            //If they all pasee, return true
            return true;
        }

        private IEnumerable<int> FindIndeces(string text, string query)
        {
            return Enumerable.Range(0, text.Length - query.Length)
                .Where(i => query.Equals(text.Substring(i, query.Length)));
        }


        //Bonus Challenge 1
        string bonusChallenge1(string element)
        {
            element = element.ToLower();

            string toReturnSymbol = "";
            int symbolLength = 2;
            int nextSymbolLetterPlace = -1;
            int elementLetterToStartFrom = 0;

            do
            {
                nextSymbolLetterPlace++;
                char nextAlphabeticalIndexer = 'z';
                char nextSymbolLetterToAdd = 'a';

                for (int i = elementLetterToStartFrom; i < element.Length; i++)
                {
                    if (element[i] <= nextAlphabeticalIndexer && i + 1 <= element.Length - (symbolLength - nextSymbolLetterPlace - 1))
                    {
                        nextAlphabeticalIndexer = element[i];
                        nextSymbolLetterToAdd = element[i];
                        elementLetterToStartFrom = i + 1;
                    }
                }
                toReturnSymbol += nextSymbolLetterToAdd;
            } while (nextSymbolLetterPlace + 1 < symbolLength);


            char[] s = toReturnSymbol.ToCharArray();
            s[0] = Char.ToUpper(s[0]);

            return toReturnSymbol = new string(s);
        }

        //Update output label for challenge
        private void outputLabelString(string eleName, string eleSymbol, string yesOrno)
        { outputLabel.Text += eleName + ", " + eleSymbol + " -> " + "<b>" + yesOrno + "</b>" + "</br>"; }

        //Update output label for bonus challenge
        private void challenge1OutputLabelString(string eleSymbol)
        { challenge1OutputLabel.Visible = true; challenge1OutputLabel.Text = "Symbol: <br/>" + "<b>" + eleSymbol + "</b>"; }
    }
}