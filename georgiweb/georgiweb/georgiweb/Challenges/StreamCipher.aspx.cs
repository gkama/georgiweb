using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.Challenges
{
    public partial class StreamCipher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Do nothing
        }

        protected void SCButtonClick(object sender, EventArgs e)
        {
            //Output
            outputTxtBox.Text = "Original Message: " + inputTxtBox.Text.Trim()
                + "\r\n" +
                "Encrypted Message: " + encryptMsg(inputTxtBox.Text.Trim(), 31337)
                + "\r\n" +
                "Decrypted Message: " + decryptMsg(encryptMsg(inputTxtBox.Text.Trim(), 31337), 31337);
        }

        //Encrypt the Message
        private string encryptMsg(string msg, int key)
        {
            return streamCipher(msg, key);
        }
        //Dencrypt the Message
        private string decryptMsg(string msg, int key)
        {
            return streamCipher(msg, key);
        }

        //Cipher functionality
        private string streamCipher(string msg, int key)
        {
            byte[] rmArray = new byte[msg.Length];
            byte[] msgArray = new byte[msg.Length];

            Random randomGenerator = new Random(key);
            randomGenerator.NextBytes(rmArray);

            msgArray = Encoding.Default.GetBytes(msg);

            byte[] convertedMsgArray = new byte[msg.Length];

            for (int i = 0; i < convertedMsgArray.Length; i++)
                convertedMsgArray[i] = (byte)(rmArray[i] ^ msgArray[i]);

            return System.Text.Encoding.Default.GetString(convertedMsgArray);
        }
    }
}