using System;
using System.Text;
using System.Globalization;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Net;
using System.Net.Mail;

namespace georgiweb.Resume
{
    public partial class Resume : System.Web.UI.Page
    {
        bool invalid = false;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Download file
        protected void downloadFile(object sender, EventArgs e)
        {
            using (WebClient ftpClient = new WebClient())
            {
                ftpClient.Credentials = new NetworkCredential(@"georgiweb\$georgiweb", "ig1Zv6mlZLoj1ZPrmswYRNPgd8bQpd2XzZGs54uYdLfWYuBy3DtSlCXavhwi");
                ftpClient.DownloadFile("ftp://waws-prod-blu-049.ftp.azurewebsites.windows.net/site/wwwroot/Resume", "Resume.docx");
            }
        }

        //Send email
        protected void send_email(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(toEmailTxtBox.Text.ToString().Trim()) &&
                IsValidEmail(toEmailTxtBox.Text.ToString().Trim()))
            {
                using (WebClient ftpClient = new WebClient())
                {
                    ftpClient.Credentials = new NetworkCredential(@"georgiweb\$georgiweb", "ig1Zv6mlZLoj1ZPrmswYRNPgd8bQpd2XzZGs54uYdLfWYuBy3DtSlCXavhwi");
                    ftpClient.DownloadFile("ftp://waws-prod-blu-049.ftp.azurewebsites.windows.net/site/wwwroot/Resume", "Resume.docx");
                }

                SmtpClient client = new SmtpClient("smtp.sendgrid.net");
                Attachment file = new Attachment(@"\Resume\Resume.docx");
                MailAddress from = new MailAddress("donotreply@gkamacharov.com", "Resume", Encoding.UTF8);
                MailAddress to = new MailAddress(toEmailTxtBox.Text.ToString());

                //Azure credentials
                client.Credentials = new NetworkCredential("azure_2e9a86a89e196eb63fd92090ff45a83b@azure.com", "Master5892@bg");

                MailMessage msg = new MailMessage(from, to);
                msg.IsBodyHtml = true;
                msg.Body = "See attached file for Georgi Kamacharov's Resume<br><br>";
                msg.Subject = "Resume: Georgi Kamacharov";
                msg.SubjectEncoding = Encoding.UTF8;
                msg.Attachments.Add(file);

                try
                {
                    client.Send(msg);
                    succEmailSent.Visible = true;
                    succEmailSent.ForeColor = System.Drawing.Color.Green;
                    succEmailSent.Text = "Successfully sent email";
                }
                catch (SmtpException)
                {
                    //error cant send
                    succEmailSent.Visible = true;
                    succEmailSent.ForeColor = System.Drawing.Color.Red;
                    succEmailSent.Text = "Could not sent email";
                }
                finally
                {
                    msg.Dispose();
                }
            }
            else
            {
                //error cant send
                succEmailSent.Visible = true;
                succEmailSent.ForeColor = System.Drawing.Color.Red;
                succEmailSent.Text = "Incorrect Email Format";
            }
        }
        //Is Valid Email
        public bool IsValidEmail(string strIn)
        {
            invalid = false;
            if (String.IsNullOrEmpty(strIn))
                return false;

            // Use IdnMapping class to convert Unicode domain names.
            try
            {
                strIn = Regex.Replace(strIn, @"(@)(.+)$", this.DomainMapper,
                                      RegexOptions.None, TimeSpan.FromMilliseconds(200));
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }

            if (invalid)
                return false;

            // Return true if strIn is in valid e-mail format.
            try
            {
                return Regex.IsMatch(strIn,
                      @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                      @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
                      RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250));
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }
        }
        private string DomainMapper(Match match)
        {
            // IdnMapping class with default property values.
            IdnMapping idn = new IdnMapping();

            string domainName = match.Groups[2].Value;
            try
            {
                domainName = idn.GetAscii(domainName);
            }
            catch (ArgumentException)
            {
                invalid = true;
            }
            return match.Groups[1].Value + domainName;
        }
    }
}