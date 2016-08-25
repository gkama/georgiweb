using System;

namespace georgiweb.Challenges
{
    public partial class GettingADegree : System.Web.UI.Page
    {
        const double PI = 3.1416;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //On 'Go' Click
        protected void GADButtonClick(object sender, EventArgs e)
        {
            outputLabel.Text = convert(fromInputDDL.SelectedValue.ToString() + toInputDDL.SelectedValue.ToString()) + "<br/>";
        }

        private string convert(string conversion)
        {
            double Value = double.Parse(valueTxtBox.Text.ToString());
            switch (conversion)
            {
                case "rd":
                    {
                        return (Value * (180 / PI)).ToString("#.000") + conversion[1];
                    }
                case "dr":
                    {
                        return (Value * (PI / 180)).ToString("#.000") + conversion[1];
                    }
                case "cf":
                    {
                        return ((Value * 1.8) + 32).ToString("#.000") + conversion[1];
                    }
                case "fc":
                    {
                        return ((Value - 32) * 0.5556).ToString("#.000") + conversion[1];
                    }
                case "kf":
                    {
                        return (((Value - 273) * 9 / 5) + 32).ToString("#.000") + conversion[1];
                    }
                case "fk":
                    {
                        return (((Value - 32) * 5 / 9) + 273).ToString("#.000") + conversion[1];
                    }
                case "ck":
                    {
                        return (Value + 273).ToString("#.000") + conversion[1];
                    }

                //If same conversion
                case "dd":
                    {
                        return Value.ToString("#.000") + conversion[1];
                    }
                case "rr":
                    {
                        return Value.ToString("#.000") + conversion[1];
                    }
                case "cc":
                    {
                        return Value.ToString("#.000") + conversion[1];
                    }
                case "ff":
                    {
                        return Value.ToString("#.000") + conversion[1];
                    }
                case "kk":
                    {
                        return Value.ToString("#.000") + conversion[1];
                    }
                default:
                    return "No candidate for conversion";
            }
        }




        protected void fromInputDDLSelection_Change(object sender, EventArgs e)
        {
            //Do Nothing
        }
        protected void toInputDDLSelection_Change(object sender, EventArgs e)
        {
            //Do Nothing
        }
    }
}