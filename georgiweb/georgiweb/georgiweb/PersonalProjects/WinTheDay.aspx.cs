using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace georgiweb.PersonalProjects
{
    public partial class WinTheDay : System.Web.UI.Page
    {
        //MonthDays
        int MAX_MONTHDAYS = 31;
        public int CURRENT_MONTH_DAYS = 0;

        //Months and days
        Dictionary<string, int> Months = new Dictionary<string, int>();

        //Datetime
        DateTime Date = DateTime.Now;

        //Page Load
        protected void Page_Load(object sender, EventArgs e)
        {
            //
            //Populate Months
            Months.Add("January", 1);
            Months.Add("February", 2);
            Months.Add("March", 3);
            Months.Add("April", 4);
            Months.Add("May", 5);
            Months.Add("June", 6);
            Months.Add("July", 7);
            Months.Add("August", 8);
            Months.Add("September", 9);
            Months.Add("October", 10);
            Months.Add("November", 11);
            Months.Add("December", 12);


            //
            if (!IsPostBack)
            {

            }
        }

        //When you click generate
        protected void btn_click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Income.Text.ToString()) && !string.IsNullOrEmpty(MonthlyExpenses.Text.ToString()))
            {
                HR_ABLOVE.Visible = true;
                table.Visible = true;
                instructions.Visible = true;

                ContentPlaceHolder MainContent = Page.Master.FindControl("MainContent") as ContentPlaceHolder;

                double dailyIncome = 0;

                double totalSavings = 0;
                double totalSpendingMoney = 0;

                //Get Income after taxes - constant -25%
                double income = Convert.ToInt32(Income.Text.ToString()) * 0.75;

                //Subtract expenses
                double expenses = Convert.ToInt32(MonthlyExpenses.Text.ToString()) * 12;

                //Final calculated income
                double totalIncome = income - expenses;

                //Get the daily value
                dailyIncome = getDailyIncome(totalIncome);

                //Get total values below generate button
                totalSavings = getTotalSavings(totalIncome);
                totalSpendingMoney = getTotalSpendingMoney(totalIncome);

                //Populate the table
                for (int i = 0; i < DateTime.DaysInMonth(Date.Year, Months[MonthsDDL.SelectedValue.ToString()]); i++)
                {
                    Label Allowance = (Label)MainContent.FindControl("Allowance" + (i + 1));

                    Allowance.Text = "$" + ((decimal)dailyIncome).ToString("0.00");
                }

                //Set Total Allowance
                AllowanceTotal.InnerText = "$" + Convert.ToDecimal(getTotalAllowance(income, DateTime.DaysInMonth(Date.Year, Months[MonthsDDL.SelectedValue.ToString()]))).ToString("0.00");

                //Set Totals
                HR_BELOW_GENERATE.Visible = true;

                TotalSavingsLabel.Visible = true;
                TotalSavingsLabel.Text = "Annual Savings: " + "$" + totalSavings;

                TotalSpendingMoneyLabel.Visible = true;
                TotalSpendingMoneyLabel.Text = "Annual Spending Money: " + "$" + totalSpendingMoney;

                TotalMoneyAfterTaxesLabel.Visible = true;
                TotalMoneyAfterTaxesLabel.Text = "Annual Money (After Taxes, Expenses): " + "$" + totalIncome;
            }
        }

        //Calculate daily income
        protected double getDailyIncome(double income)
        {
            double savings = Convert.ToDouble(SavingsDDL.SelectedValue.ToString());
            return ((income * ((100 - savings)/100))/ 365);
        }

        //Calculate total allowance
        protected double getTotalAllowance(double income, int monthdays)
        {
            return (getDailyIncome(income) * monthdays);
        }



        //Calculate total savings
        protected double getTotalSavings(double income)
        {
            double savings = Convert.ToDouble(SavingsDDL.SelectedValue.ToString());
            return (income * (savings / 100));
        }
        //Calculate total spending money
        protected double getTotalSpendingMoney(double income)
        {
            double savings = Convert.ToDouble(SavingsDDL.SelectedValue.ToString());
            return (income * ((100 - savings) / 100));
        }


        //When Spent Textbox input changes
        protected void spentChanged(object sender, EventArgs e)
        {  
            ContentPlaceHolder MainContent = Page.Master.FindControl("MainContent") as ContentPlaceHolder;

            TextBox spentBox = (TextBox)sender;

            if (!string.IsNullOrEmpty(spentBox.Text.ToString()) && (parseSpentInput(spentBox.Text)))
            {
                string idNumber = spentBox.ID.ToString().Remove(0, 5);

                Label WTD = (Label)MainContent.FindControl("WTD" + Convert.ToInt32(idNumber));

                TextBox Spent = (TextBox)MainContent.FindControl("Spent" + Convert.ToInt32(idNumber));
                Label Allowance = (Label)MainContent.FindControl("Allowance" + Convert.ToInt32(idNumber));
                Label WTM = (Label)MainContent.FindControl("WTM" + Convert.ToInt32(idNumber));
                Label NewAllowance = (Label)MainContent.FindControl("NewAllowance" + Convert.ToInt32(idNumber));

                double WTDRes = Convert.ToDouble(stripDollarSign(Allowance.Text.ToString())) - Convert.ToDouble(Spent.Text.ToString());

                if (WTDRes > 0)
                {
                    WTD.ForeColor = System.Drawing.Color.Green;
                }
                else
                    WTD.ForeColor = System.Drawing.Color.Red;

                //Set up new Allowance
                NewAllowance.Text = "$" + 0;

                //Set text to result
                WTD.Text = "$" + Convert.ToDecimal(WTDRes).ToString("0.00");

                //Keep track of total
                calculateSpentTotal(Convert.ToInt32(idNumber));
                calculateWTMTotal(Convert.ToInt32(idNumber));
            }
            else
            {
                alert("Spent number can only be positive!");
            }
        }

        //Month drop down list changed
        protected void MonthsDDL_IndexChanged(object sender, EventArgs e)
        {
            MonthCaption.InnerText = "Win The Month: " + MonthsDDL.SelectedItem.ToString();

            //Clear the data
            clearTableData();
            btn_click(sender, e);

            //Display appropriate days for the month chosen
            if (MonthsDDL.SelectedValue.ToString() == "March")
            {
                row30.Visible = true;
                row31.Visible = true;
            }
            else if (MonthsDDL.SelectedValue.ToString() == "January")
            {
                row30.Visible = true;
                row31.Visible = true;
            }
            else if (MonthsDDL.SelectedValue.ToString() == "February")
            {
                row30.Visible = false;
                row31.Visible = false;
            }
            else if (MonthsDDL.SelectedValue.ToString() == "April")
            {
                row30.Visible = true;
                row31.Visible = false;
            }
            else if (MonthsDDL.SelectedValue.ToString() == "May")
            {
                row30.Visible = true;
                row31.Visible = true;
            }
            else if (MonthsDDL.SelectedValue.ToString() == "June")
            {
                row30.Visible = true;
                row31.Visible = false;
            }
            else if (MonthsDDL.SelectedValue.ToString() == "July")
            {
                row30.Visible = true;
                row31.Visible = true;
            }
            else if (MonthsDDL.SelectedValue.ToString() == "August")
            {
                row30.Visible = true;
                row31.Visible = true;
            }
            else if (MonthsDDL.SelectedValue.ToString() == "September")
            {
                row30.Visible = true;
                row31.Visible = false;
            }
            else if (MonthsDDL.SelectedValue.ToString() == "October")
            {
                row30.Visible = true;
                row31.Visible = true;
            }
            else if (MonthsDDL.SelectedValue.ToString() == "November")
            {
                row30.Visible = true;
                row31.Visible = false;
            }
            else if (MonthsDDL.SelectedValue.ToString() == "December")
            {
                row30.Visible = true;
                row31.Visible = true;
            }
        }

        //Get total days
        private int getCurrentMonthDays(string month)
        {
            switch (month)
            {
                case "January":
                    return 31;
                case "February":
                    return 29;
                case "March":
                    return 31;
                case "April":
                    return 30;
                case "May":
                    return 31;
                case "June":
                    return 30;
                case "July":
                    return 31;
                case "August":
                    return 31;
                case "September":
                    return 30;
                case "October":
                    return 31;
                case "November":
                    return 30;
                case "December":
                    return 31;
                default:
                    return 0;
            }
        }

        //Savings
        protected void SavingsDDL_IndexChanged(object sender, EventArgs e)
        {
            btn_click(sender, e);
        }


        //Strip dollar sign
        protected string stripDollarSign(string input)
        {
            return input.Remove(0, 1);
        }


        //Parse spent input
        public bool parseSpentInput(string s)
        {
            double d;
            if (double.TryParse(s, out d))
            {
                if (d >= 0)
                    return true;
                else
                    return false;
            }
            else
                return false;
        }

        //Calculate spent total
        protected void calculateSpentTotal(int index)
        {
            double totalst = 0;

            ContentPlaceHolder MainContent = Page.Master.FindControl("MainContent") as ContentPlaceHolder;

            for (int i = 0; i < getCurrentMonthDays(MonthsDDL.SelectedItem.ToString()); i++)
            {
                TextBox Spent = (TextBox)MainContent.FindControl("Spent" + (i + 1));
                if (!string.IsNullOrEmpty(Spent.Text.ToString()) && (parseSpentInput(Spent.Text)))
                    totalst += Convert.ToDouble(Spent.Text.ToString());
            }
            SpentTotal.InnerText = "$" + Convert.ToDecimal(totalst).ToString("0.00");
        }

        //Calculate WTM total
        protected void calculateWTMTotal(int index)
        {
            double total = 0;

            ContentPlaceHolder MainContent = Page.Master.FindControl("MainContent") as ContentPlaceHolder;

            Label currWTM = (Label)MainContent.FindControl("WTM" + index.ToString());

            for (int i = 0; i < getCurrentMonthDays(MonthsDDL.SelectedItem.ToString()); i++)
            {
                Label WTD = (Label)MainContent.FindControl("WTD" + (i + 1));
                if (!string.IsNullOrEmpty(WTD.Text.ToString()))
                    total += Convert.ToDouble(stripDollarSign(WTD.Text.ToString()));
            }
            WTMTotal.InnerText = "$" + Convert.ToDecimal(total).ToString("0.00");
            WTDTotal.InnerText = "$" + Convert.ToDecimal(total).ToString("0.00");

            //Check and update WTM
            if (total > 0)
            {
                currWTM.ForeColor = System.Drawing.Color.Green;
            }
            else
                currWTM.ForeColor = System.Drawing.Color.Red;
            currWTM.Text = "$" + Convert.ToDecimal(total).ToString("0.00");
        }


        //Clear data table
        protected void clearTableData()
        {
            ContentPlaceHolder MainContent = Page.Master.FindControl("MainContent") as ContentPlaceHolder;
            for (int i = 0; i < getCurrentMonthDays(MonthsDDL.SelectedItem.ToString()); i++)
            {
                TextBox Spent = (TextBox)MainContent.FindControl("Spent" + (i + 1));
                Label Allowance = (Label)MainContent.FindControl("Allowance" + (i + 1));
                Label WTD = (Label)MainContent.FindControl("WTD" + (i + 1));
                Label WTM = (Label)MainContent.FindControl("WTM" + (i + 1));
                Label NewAllowance = (Label)MainContent.FindControl("NewAllowance" + (i + 1));

                //Set their text to ""
                Spent.Text = "";
                Allowance.Text = "";
                WTD.Text = "";
                WTM.Text = "";
                NewAllowance.Text = "";
            }
            SpentTotal.InnerText = "";
            AllowanceTotal.InnerText = "";
            WTDTotal.InnerText = "";
            WTMTotal.InnerText = "";
        }

        //Pop up message box
        protected void alert(string s)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "myAlert", "alert('" + s + "');", true);
        } 
    }
}