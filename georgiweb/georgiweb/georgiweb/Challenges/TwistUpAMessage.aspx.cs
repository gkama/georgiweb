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
    public partial class TwistUpAMessage : System.Web.UI.Page
    {
        //Variables
        private List<string> twistedLetters = new List<string>()
            { "AÁĂẮẶẰẲẴǍÂẤẬẦẨẪÄẠÀẢĀĄÅǺÃ",
                "BḄƁᛒ𐌱ɃḂḆ฿β",
                "CĆČÇĈĊƆʗ",
                "DĎḒḌƊḎĐÐ",
                "EÉĔĚÊẾỆỀỂỄËĖẸÈẺĒĘẼƐ",
                "FƑḞ𐌅₣",
                "GǴĞǦĢĜĠḠʛ",
                "HḪĤḤĦ",
                "IÍĬǏÎÏİỊÌỈĪĮĨ",
                "JĴɈʝ",
                "KĶḲƘḴ",
                "LĹȽĽĻḼḶḸḺĿŁ",
                "MḾṀṂ",
                "NŃŇŅṊṄṆǸƝṈÑ",
                "OÓŎǑÔỐỘỒỔỖÖỌŐÒỎƠỚỢỜỞỠŌƟǪØǾÕ",
                "PÞ𐌐ṔṖⱣƤ₱♇",
                "QꝖɊ",
                "RŔŘŖṘṚṜṞʁ",
                "SŚŠŞŜȘṠṢ",
                "TŤŢṰȚṬṮŦ",
                "UÚŬǓÛÜǗǙǛǕỤŰÙỦƯỨỰỪỬỮŪŲŮŨ",
                "VṼṾƲ℣∨",
                "WẂŴẄẀʬ",
                "XχẌẊⲬ𐍇",
                "YÝŶŸẎỴỲƳỶȲỸ",
                "ZŹŽŻẒẔƵ",
                "aáăắặằẳẵǎâấậầẩẫäạàảāąåǻãɑɐɒ",
                "bḅɓß♭␢Б",
                "cćčçĉɕċ",
                "dďḓḍɗḏđɖ",
                "eéĕěêếệềểễëėẹèẻēęẽɘəɚ",
                "fƒſʃʆʅɟʄ",
                "gǵğǧģĝġɠḡɡ",
                "hḫĥḥɦẖħɧ",
                "iíĭǐîïịìỉīįɨĩɩı",
                "jǰĵʝȷɟʄ",
                "kķḳƙḵĸʞ",
                "lĺƚɬľļḽḷḹḻŀɫɭł",
                "mḿṁṃɱɯɰ",
                "nŉńňņṋṅṇǹɲṉɳñŋ",
                "oóŏǒôốộồổỗöọőòỏơớợờởỡōǫøǿõɵʘ",
                "pɸþᵱƥᵽṗṕ",
                "qʠꝗɋq̃ϙ",
                "rŕřŗṙṛṝɾṟɼɽɿɹɻ",
                "sśšşŝșṡṣʂ",
                "tťţṱțẗṭṯʈŧ",
                "uʉúŭǔûüǘǚǜǖụűùủưứựừửữūųůũʊ",
                "vʋʌⱴṿṽ",
                "wẃŵẅẁʍ",
                "xχẍẋⲭ",
                "yýŷÿẏỵỳƴỷȳỹʎ",
                "zźžʑżẓẕʐƶ"
            };

        protected void Page_Load(object sender, EventArgs e)
        {
            //Do nothing
        }

        protected void TWAMButtonClick(object sender, EventArgs e)
        {
            OutputTxtBox.Text = twistUp(InputTxtBox.Text.ToString().Trim());
        }

        private string twistUp(string text)
        {
            StringBuilder toReturn = new StringBuilder();

            string[] splitText = text.Split(' ');
            foreach (string word in splitText)
            {
                foreach (char c in word)
                    toReturn.Append(twistUpLetter(c));
                toReturn.Append(" ");
            }

            return toReturn.ToString();
        }

        //Find the letter in the List
        private char twistUpLetter(char letter)
        {
            char toReturn = letter;

            foreach (string tw in twistedLetters)
            {
                char englishChar = tw[0];
                if (letter == englishChar)
                    toReturn = tw[RandomNumber(1, tw.Length)];
            }

            return toReturn;
        }

        //Function to get random number
        private static readonly Random random = new Random();
        private static readonly object syncLock = new object();
        public static int RandomNumber(int min, int max)
        {
            lock (syncLock)
            { // synchronize
                return random.Next(min, max);
            }
        }
    }
}