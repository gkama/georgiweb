using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class KeyFunction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Do Nothing
        }

        protected void KFButtonClick(object sender, EventArgs e)
        {
            //Input for sum
            string[] elements = new string[] { "a", "b", "c", "d", "a", "b", "c", "d", "a", "b", "c", "d", "a", "b", "c", "d", "a", "b", "c", "d" };
            int[] key = new int[] { 14, 21, 82, 85, 54, 96, 9, 61, 43, 49, 16, 34, 73, 59, 36, 24, 45, 89, 77, 68 };
            outputSumLabel.Text = keyFunction(elements, key, "sum");

            //Input for histogram
            string[] histogramElements = new string[] { };
            int[] histogramKey = new int[] { 5, 3, 5, 2, 2, 9, 7, 0, 7, 5, 9, 2, 9, 1, 9, 9, 6, 6, 8, 5, 1, 1, 4, 8, 5, 0, 3, 5,
                                             8, 2, 3, 8, 3, 4, 6, 4, 9, 3, 4, 3, 4, 5, 9, 9, 9, 7, 7, 1, 9, 3, 4, 6, 6, 8, 8, 0,
                                             4, 0, 6, 3, 2, 6, 3, 2, 3, 5, 7, 4, 2, 6, 7, 3, 9, 5, 7, 8, 9, 5, 6, 5, 6, 8, 3, 1,
                                             8, 4, 6, 5, 6, 4, 8, 9, 5, 7, 8, 4, 4, 9, 2, 6, 10 };
            outputHistogramLabel.Text = keyFunction(histogramElements, histogramKey, "histogram");

            //Input for "Nub of an array"
            outputNubofanarrayLabel.Text = nubofanarray(elements, key);
        }

        //Key Function
        private string keyFunction(string[] elements, int[] key, string functionName)
        {
            string toReturn = "";

            if (functionName.Trim() == "sum")
                toReturn = sum(elements, key);
            else if (functionName.Trim() == "histogram")
                toReturn = histogram(key);

            //Return result
            return toReturn;
        }

        //Sum function
        private string sum(string[] elements, int[] key)
        {
            StringBuilder toReturn = new StringBuilder();
            Dictionary<string, int> elementsSum = new Dictionary<string, int>();

            //Calculate the sum
            for (int i = 0; i < elements.Count(); i++)
            {
                if (!(elementsSum.ContainsKey(elements[i])))
                    elementsSum.Add(elements[i], key[i]);
                else
                    elementsSum[elements[i]] += key[i];
            }

            //Create output
            foreach (KeyValuePair<string, int> entry in elementsSum)
                toReturn.Append(entry.Key + ": " + entry.Value + "</br>");

            //Return result
            return toReturn.ToString();
        }

        //Histogram function
        private string histogram(int[] key)
        {
            StringBuilder toReturn = new StringBuilder();
            Dictionary<int, int> keysHistogram = new Dictionary<int, int>();

            //Calculate the sum
            for (int i = 0; i < key.Count(); i++)
            {
                if (!(keysHistogram.ContainsKey(key[i])))
                    keysHistogram.Add(key[i], 1);
                else
                    keysHistogram[key[i]] += 1;
            }

            //Create output
            foreach (KeyValuePair<int, int> entry in keysHistogram)
                toReturn.Append(entry.Key + ": " + entry.Value + "</br>");

            //Return result
            return toReturn.ToString();
        }

        //Nub of an array
        private string nubofanarray(string[] elements, int[] keys)
        {
            StringBuilder toReturn = new StringBuilder();
            string[] elementsDist = elements.Distinct().ToArray();

            int[] indexOfElements = new int[elementsDist.Count()];
            for (int i = 0; i < elementsDist.Count(); i++)
            {
                indexOfElements[i] = Array.IndexOf(elements, elementsDist[i]);
            }

            //Create output
            for (int j = 0; j < indexOfElements.Count(); j++)
                toReturn.Append(elementsDist[j] + ": " + keys[indexOfElements[j]] + "</br>");

            //Return result
            return toReturn.ToString();
        }
    }
}