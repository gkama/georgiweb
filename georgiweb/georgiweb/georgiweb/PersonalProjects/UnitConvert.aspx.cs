using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UnitConverter;

namespace georgiweb.PersonalProjects
{
    public partial class UnitConvert : System.Web.UI.Page
    {
        UnitConverter.UnitConverter uC = new UnitConverter.UnitConverter();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Do nothing
        }

        protected void convertBtnClick(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(inputTxt.Text.Trim()))
            {
                if (convertOptionDDL.SelectedItem.ToString() == "Length")
                {
                    resultLbl.Text =
                        uC.ConvertLength(fromDDL.SelectedItem.ToString() + toDDL.SelectedItem.ToString(), Convert.ToDouble(inputTxt.Text.Trim())).ToString("0.#####") + " " + toDDL.SelectedItem.ToString();
                    resultDiv.Visible = true;
                }
                else if (convertOptionDDL.SelectedItem.ToString() == "Weight")
                {
                    resultLbl.Text =
                        uC.ConvertWeight(fromDDL.SelectedItem.ToString() + toDDL.SelectedItem.ToString(), Convert.ToDouble(inputTxt.Text.Trim())).ToString("0.#####") + " " + toDDL.SelectedItem.ToString();
                    resultDiv.Visible = true;
                }
                else if (convertOptionDDL.SelectedItem.ToString() == "Area")
                {
                    resultLbl.Text =
                        uC.ConvertArea(fromDDL.SelectedItem.ToString() + toDDL.SelectedItem.ToString(), Convert.ToDouble(inputTxt.Text.Trim())).ToString("0.#####") + " " + toDDL.SelectedItem.ToString();
                    resultDiv.Visible = true;
                }
                else if (convertOptionDDL.SelectedItem.ToString() == "Degrees")
                {
                    resultLbl.Text =
                        uC.ConvertDegrees(fromDDL.SelectedItem.ToString() + toDDL.SelectedItem.ToString(), Convert.ToDouble(inputTxt.Text.Trim())).ToString("0.#####") + " " + toDDL.SelectedItem.ToString();
                    resultDiv.Visible = true;
                }
                else if (convertOptionDDL.SelectedItem.ToString() == "Radians/Degrees")
                {
                    resultLbl.Text =
                        uC.ConvertRadiansDegrees(fromDDL.SelectedItem.ToString() + toDDL.SelectedItem.ToString(), Convert.ToDouble(inputTxt.Text.Trim())).ToString("0.#####") + " " + toDDL.SelectedItem.ToString();
                    resultDiv.Visible = true;
                }
                else if (convertOptionDDL.SelectedItem.ToString() == "Liquid")
                {
                    resultLbl.Text =
                        uC.ConvertLiquid(fromDDL.SelectedItem.ToString() + toDDL.SelectedItem.ToString(), Convert.ToDouble(inputTxt.Text.Trim())).ToString("0.#####") + " " + toDDL.SelectedItem.ToString();
                    resultDiv.Visible = true;
                }
                else if (convertOptionDDL.SelectedItem.ToString() == "Time")
                {
                    resultLbl.Text =
                        uC.ConvertTime(fromDDL.SelectedItem.ToString() + toDDL.SelectedItem.ToString(), Convert.ToDouble(inputTxt.Text.Trim())).ToString("0.#####") + " " + toDDL.SelectedItem.ToString();
                    resultDiv.Visible = true;
                }
                else if (convertOptionDDL.SelectedItem.ToString() == "Currency")
                {
                    resultLbl.Text =
                        uC.ConvertCurrency(fromDDL.SelectedItem.ToString() + toDDL.SelectedItem.ToString(), Convert.ToDouble(inputTxt.Text.Trim())).ToString("0.#####") + " " + toDDL.SelectedItem.ToString();
                    resultDiv.Visible = true;
                }
                else if (convertOptionDDL.SelectedItem.ToString() == "Decimal Number")
                {
                    resultLbl.Text =
                        uC.ConvertDecimalNumber(fromDDL.SelectedItem.ToString() + toDDL.SelectedItem.ToString(), Convert.ToInt32(inputTxt.Text.Trim())).ToString() + " " + toDDL.SelectedItem.ToString();
                    resultDiv.Visible = true;
                }
            }
            else
            {
                //Do Nothing
            }
        }


        protected void convertOptionDDLSelection_Change(object sender, EventArgs e)
        {
            //Populate the From & To DDL accordingly
            if (convertOptionDDL.SelectedItem.ToString() == "Select One...")
            {
                fromDDL.Enabled = false;
                toDDL.Enabled = false;
            }
            else if (convertOptionDDL.SelectedItem.ToString() == "Length")
                populateFromToDDLs("Length");
            else if (convertOptionDDL.SelectedItem.ToString() == "Weight")
                populateFromToDDLs("Weight");
            else if (convertOptionDDL.SelectedItem.ToString() == "Area")
                populateFromToDDLs("Area");
            else if (convertOptionDDL.SelectedItem.ToString() == "Degrees")
                populateFromToDDLs("Degrees");
            else if (convertOptionDDL.SelectedItem.ToString() == "Radians/Degrees")
                populateFromToDDLs("RadiansDegrees");
            else if (convertOptionDDL.SelectedItem.ToString() == "Liquid")
                populateFromToDDLs("Liquid");
            else if (convertOptionDDL.SelectedItem.ToString() == "Time")
                populateFromToDDLs("Time");
            else if (convertOptionDDL.SelectedItem.ToString() == "Currency")
                populateFromToDDLs("Currency");
            else if (convertOptionDDL.SelectedItem.ToString() == "Decimal Number")
                populateFromToDDLs("DecimalNumber");
        }

        //When Input text changes
        protected void inputTxtChanged(object sender, EventArgs e)
        { 
        }

        protected void fromDDLSelection_Change(object sender, EventArgs e)
        {
        }
        protected void toDDLSelection_Change(object sender, EventArgs e)
        {
        }

        #region Populate From/To Drop Down Lists
        //Populate the From/To DDL's with values
        private void populateFromToDDLs(string value)
        {
            if (value == "Length")
            {
                fromDDL.DataSource = uC.ValuesListLength;
                fromDDL.DataBind();
                toDDL.DataSource = uC.ValuesListLength;
                toDDL.DataBind();
                enableContent();
            }
            else if (value == "Weight")
            {
                fromDDL.DataSource = uC.ValuesListWeight;
                fromDDL.DataBind();
                toDDL.DataSource = uC.ValuesListWeight;
                toDDL.DataBind();
                enableContent();
            }
            else if (value == "Area")
            {
                fromDDL.DataSource = uC.ValuesListArea;
                fromDDL.DataBind();
                toDDL.DataSource = uC.ValuesListArea;
                toDDL.DataBind();
                enableContent();
            }
            else if (value == "Degrees")
            {
                fromDDL.DataSource = uC.ValuesListDegrees;
                fromDDL.DataBind();
                toDDL.DataSource = uC.ValuesListDegrees;
                toDDL.DataBind();
                enableContent();
            }
            else if (value == "RadiansDegrees")
            {
                fromDDL.DataSource = uC.ValuesListRadiansDegrees;
                fromDDL.DataBind();
                toDDL.DataSource = uC.ValuesListRadiansDegrees;
                toDDL.DataBind();
                enableContent();
            }
            else if (value == "Liquid")
            {
                fromDDL.DataSource = uC.ValuesListLiquid;
                fromDDL.DataBind();
                toDDL.DataSource = uC.ValuesListLiquid;
                toDDL.DataBind();
                enableContent();
            }
            else if (value == "Time")
            {
                fromDDL.DataSource = uC.ValuesListTime;
                fromDDL.DataBind();
                toDDL.DataSource = uC.ValuesListTime;
                toDDL.DataBind();
                enableContent();
            }
            else if (value == "Currency")
            {
                fromDDL.DataSource = uC.ValuesListCurrency;
                fromDDL.DataBind();
                toDDL.DataSource = uC.ValuesListCurrency;
                toDDL.DataBind();
                enableContent();
            }
            else if (value == "DecimalNumber")
            {
                fromDDL.DataSource = uC.ValuesListDecimalNumber;
                fromDDL.DataBind();
                toDDL.DataSource = uC.ValuesListDecimalNumber;
                toDDL.DataBind();
                enableContent();
            }
        }
        private void enableContent()
        {
            fromDDL.Enabled = true;
            toDDL.Enabled = true;
            inputTxt.Enabled = true;
            convertBtn.Enabled = true;
        }
        #endregion
    }
}