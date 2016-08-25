using System;
using System.Collections.Generic;
using System.Text;

namespace georgiweb.Challenges
{
    public partial class BasicFormatting : System.Web.UI.Page
    {
        static int lineCount;
        static string indent;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BFGoButtonClick(object sender, EventArgs e)
        {
            string[] Input = {
                "12",
            "····",
            "VAR I",
            "·FOR I=1 TO 31",
            "»»»»IF !(I MOD 3) THEN",
            "··PRINT \"FIZZ\"",
            "··»»ENDIF",
            "»»»»····IF !(I MOD 5) THEN",
            "»»»»··PRINT \"BUZZ\"",
            "··»»»»»»ENDIF",
            "»»»»IF (I MOD 3) && (I MOD 5) THEN",
            "······PRINT \"FIZZBUZZ\"",
            "··»»ENDIF",
            "»»»»·NEXT"
            };

            lineCount = int.Parse(Input[0]);
            string[] inputCode = new string[lineCount];
            indent = Input[1];
            int i = 0;
            string line;
            
            while (i < lineCount)
            {
                line = Input[i+2];
                inputCode[i] = line;
                i++;
            }

            formatLabel.Visible = true;
            formatLabel.InnerHtml = (FormatCode(inputCode));

            //Show <hr/> tags
            ABOVE_OUTPUT_HR.Visible = true;
            BELOW_OUTPUT_HR.Visible = true;
        }

        //FormatCode function
        static string FormatCode(string[] lines)
        {
            string result = "";
            string emptyLine, startsWith;
            int indentLevel = 0;
            for (int i = 0; i < lineCount; i++)
            {
                emptyLine = string.Join("", lines[i].Split('»', '·'));
                startsWith = emptyLine.Split()[0];
                if (startsWith == "ENDIF" || startsWith == "NEXT")
                {
                    indentLevel -= 1;
                }
                for (int j = 0; j < indentLevel; j++)
                {
                    result += indent;
                }
                result += emptyLine + "\n";
                if (startsWith == "IF" || startsWith == "FOR")
                {
                    indentLevel += 1;
                }
                result += "<br />";
            }
            return result;
        }
    }
}