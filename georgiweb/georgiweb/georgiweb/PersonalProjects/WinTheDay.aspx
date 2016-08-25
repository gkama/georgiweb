<%@ Page Title="Win The Day" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WinTheDay.aspx.cs" Inherits="georgiweb.PersonalProjects.WinTheDay" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .btn-outline {
            color: black;
            font-size: 20px;
            border: solid 2px black;
            background: transparent;
            transition: all 0.3s ease-in-out;
            margin-top: 15px;
        }

            .btn-outline:hover,
            .btn-outline:focus,
            .btn-outline:active,
            .btn-outline.active {
                color: #fff;
                background: #000;
                border: solid 2px black;
            }

        /*Blue*/
        .btn-boutline {
            color: #3D3D3E;
            font-size: 20px;
            border: solid 2px #3D3D3E;
            background: transparent;
            transition: all 0.3s ease-in-out;
            margin-top: 15px;
        }

            .btn-boutline:hover,
            .btn-boutline:focus,
            .btn-boutline:active,
            .btn-boutline.active {
                color: #fff;
                background: #3D3D3E;
                border: solid 2px #3D3D3E;
            }
    </style>


    <asp:UpdatePanel runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6;">
                <h2 class="text-center" style="font-family: 'Century Gothic'; letter-spacing: 10px; color: black;">WIN THE DAY (WTD)</h2>
                <hr />
                <div style="font-family: 'Century Gothic'; padding-top: 4px;">
                    <div class="row" style="padding-left: 20px; padding-right: 20px;">
                        <div class="col-md-8" style="color: black;">
                            <div class="row">
                                <div class="col-sm-4">
                                    <asp:Label runat="server">Annual Income(Pre-Tax):</asp:Label>
                                    <asp:TextBox runat="server" ID="Income" CssClass="form-control" Placeholder="Income"></asp:TextBox>
                                </div>
                                <div class="col-sm-4">
                                    <asp:Label runat="server">Monthly Expenses:</asp:Label>
                                    <asp:TextBox runat="server" ID="MonthlyExpenses" CssClass="form-control" Placeholder="Monthly Expenses"></asp:TextBox>
                                </div>

                                <div class="col-sm-4">
                                    <asp:Button runat="server" ID="UpdateBudgetBtn" Text="UPDATE" Width="100%" CssClass="btn btn-boutline btn-sm" OnClick="btn_click" />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4">
                                    <asp:Label runat="server">Desired Savings:</asp:Label>
                                    <br />
                                    <asp:DropDownList runat="server" ID="SavingsDDL" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="SavingsDDL_IndexChanged">
                                        <asp:ListItem Selected="true" Value="5">5%</asp:ListItem>
                                        <asp:ListItem Value="6">6%</asp:ListItem>
                                        <asp:ListItem Value="7">7%</asp:ListItem>
                                        <asp:ListItem Value="8">8%</asp:ListItem>
                                        <asp:ListItem Value="9">9%</asp:ListItem>
                                        <asp:ListItem Value="10">10%</asp:ListItem>
                                        <asp:ListItem Value="15">15%</asp:ListItem>
                                        <asp:ListItem Value="20">20%</asp:ListItem>
                                        <asp:ListItem Value="25">25%</asp:ListItem>
                                        <asp:ListItem Value="30">30%</asp:ListItem>
                                        <asp:ListItem Value="40">40%</asp:ListItem>
                                        <asp:ListItem Value="50">50%</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-sm-4">
                                    <asp:Label runat="server">Month:</asp:Label>
                                    <br />
                                    <asp:DropDownList runat="server" ID="MonthsDDL" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="MonthsDDL_IndexChanged">
                                        <asp:ListItem Value="January">January</asp:ListItem>
                                        <asp:ListItem Selected="True" Value="February">February</asp:ListItem>
                                        <asp:ListItem Value="March">March</asp:ListItem>
                                        <asp:ListItem Value="April">April</asp:ListItem>
                                        <asp:ListItem Value="May">May</asp:ListItem>
                                        <asp:ListItem Value="June">June</asp:ListItem>
                                        <asp:ListItem Value="July">July</asp:ListItem>
                                        <asp:ListItem Value="August">August</asp:ListItem>
                                        <asp:ListItem Value="September">September</asp:ListItem>
                                        <asp:ListItem Value="October">October</asp:ListItem>
                                        <asp:ListItem Value="November">November</asp:ListItem>
                                        <asp:ListItem Value="December">December</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <hr runat="server" id="HR_BELOW_GENERATE" visible="false" />
                            <div class="row">
                                <div class="col-sm-6">
                                    <asp:Label runat="server" ID="TotalMoneyAfterTaxesLabel" Visible="false"
                                        style="text-align: left; color: black; font-style: italic"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Label runat="server" ID="TotalSavingsLabel" Visible="false"
                                        style="text-align: left; color: black; font-style: italic"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Label runat="server" ID="TotalSpendingMoneyLabel" Visible="false"
                                        style="text-align: left; color: black; font-style: italic"></asp:Label>
                                </div>
                            </div>

                        </div>

                        <div class="col-md-4">
                            <div class="well" style="color: black;">
                                <p>
                                    This budgeting system is designed to take very little effort, but just enough to keep you focused on your daily budget.
                                You don't need a budgeting software. You don't need Mint. All you need is to simply fill out the fields to the left.<br />
                                    <br />
                                    Afterwards, you put in what you have spent during the day and it tells you whether you are in a win or a loss. Furthermore,
                                the program calculates how much you are saving on a daily and monthly bases. It also tells you the total allowance you have, and
                                the total amount of money you have spent.<br />

                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <hr runat="server" id="HR_ABLOVE" visible="true" />


                <!--<input type="button" id="btnExport" value=" Export Table data into Excel " onclick="exp();" />-->
                <div class="row" style="margin-right: 0px;">
                    <div class="col-md-8" style="font-family: 'Century Gothic'; color: black; padding-left: 30px;">
                        <div runat="server" id="table" class="container-fluid" visible="false">
                            <table id="BudgetTable" class="table" style="font-family: 'Century Gothic';">
                                <caption runat="server" id="MonthCaption" style="text-align: left; color: black; font-style: italic">Win The Month: February</caption>
                                <thead>
                                    <tr>
                                        <th>Day</th>
                                        <th>Spent</th>
                                        <th>Allowance</th>
                                        <th>WTD (Win the Day)</th>
                                        <th>WTM (Win the Month)</th>
                                        <th>New Allowance</th>
                                    </tr>
                                </thead>
                                <tbody runat="server" id="tablebody">
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day1" Style="text-align: center;">1</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent1" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance1" Width="150px" Style="text-align: left;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD1" Width="150px" Style="text-align: left;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM1" Width="150px" Style="text-align: left;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance1" Width="150px" Style="text-align: left;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day2" Style="text-align: center;">2</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent2" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance2" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD2" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM2" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance2" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day3" Style="text-align: center;">3</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent3" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance3" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD3" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM3" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance3" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day4" Style="text-align: center;">4</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent4" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance4" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD4" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM4" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance4" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day5" Style="text-align: center;">5</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent5" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance5" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD5" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM5" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance5" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day6" Style="text-align: center;">6</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent6" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance6" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD6" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM6" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance6" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day7" Style="text-align: center;">7</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent7" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance7" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD7" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM7" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance7" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day8" Style="text-align: center;">8</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent8" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance8" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD8" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM8" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance8" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day9" Style="text-align: center;">9</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent9" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance9" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD9" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM9" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance9" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day10" Style="text-align: center;">10</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent10" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance10" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD10" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM10" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance10" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day11" Style="text-align: center;">11</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent11" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance11" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD11" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM11" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance11" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day12" Style="text-align: center;">12</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent12" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance12" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD12" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM12" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance12" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day13" Style="text-align: center;">13</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent13" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance13" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD13" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM13" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance13" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day14" Style="text-align: center;">14</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent14" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance14" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD14" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM14" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance14" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day15" Style="text-align: center;">15</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent15" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance15" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD15" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM15" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance15" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day16" Style="text-align: center;">16</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent16" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance16" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD16" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM16" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance16" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day17" Style="text-align: center;">17</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent17" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance17" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD17" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM17" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance17" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day18" Style="text-align: center;">18</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent18" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance18" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD18" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM18" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance18" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day19" Style="text-align: center;">19</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent19" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance19" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD19" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM19" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance19" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day20" Style="text-align: center;">20</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent20" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance20" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD20" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM20" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance20" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day21" Style="text-align: center;">21</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent21" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance21" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD21" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM21" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance21" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day22" Style="text-align: center;">22</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent22" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance22" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD22" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM22" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance22" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day23" Style="text-align: center;">23</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent23" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance23" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD23" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM23" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance23" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day24" Style="text-align: center;">24</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent24" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance24" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD24" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM24" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance24" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day25" Style="text-align: center;">25</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent25" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance25" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD25" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM25" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance25" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day26" Style="text-align: center;">26</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent26" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance26" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD26" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM26" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance26" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day27" Style="text-align: center;">27</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent27" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance27" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD27" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM27" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance27" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day28" Style="text-align: center;">28</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent28" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance28" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD28" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM28" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance28" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="Day29" Style="text-align: center;">29</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent29" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance29" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD29" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM29" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance29" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr runat="server" id="row30" visible="false">
                                        <td>
                                            <asp:Label runat="server" ID="Day30" Style="text-align: center;">30</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent30" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance30" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD30" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM30" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance30" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                    <tr runat="server" id="row31" visible="false">
                                        <td>
                                            <asp:Label runat="server" ID="Day31" Style="text-align: center;">31</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" ID="Spent31" CssClass="form-control" Placeholder="Spent" Width="100px" AutoPostBack="true" OnTextChanged="spentChanged"></asp:TextBox></td>
                                        <td>
                                            <asp:Label runat="server" ID="Allowance31" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTD31" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="WTM31" Style="text-align: center;"></asp:Label></td>
                                        <td>
                                            <asp:Label runat="server" ID="NewAllowance31" Style="text-align: center;"></asp:Label></td>
                                    </tr>
                                </tbody>
                                <thead>
                                    <tr>
                                        <th>Total:</th>
                                        <th runat="server" id="SpentTotal"></th>
                                        <th runat="server" id="AllowanceTotal"></th>
                                        <th runat="server" id="WTDTotal"></th>
                                        <th runat="server" id="WTMTotal"></th>
                                        <th id="NewAllowanceTotal"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-sm-4" style="padding-right: 30px;" visible="false">
                        <div runat="server" id="instructions" class="container-fluid" style="color: black;" visible="true">
                            <div class="well" style="color: black;">
                                <h4 style="color: black;">Instructions: Fill out the fields at the top</h4>
                                <h5 style="color: black;">Example of stats and how to calculate monthly expenses</h5>
                                <hr />
                                <div class="row">
                                    <div class="col-sm-6 pull-left">
                                        <p>Pre-tax Annual Income</p>
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <p><b>$50000</b></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 pull-left">
                                        <p>Expected Monthly Expenses</p>
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <p><b>$1480</b></p>
                                    </div>
                                </div>

                                <br />
                                <br />
                                <br />
                                <br />

                                <h4 style="color: black;">Fixed Monthly Expenses</h4>
                                <h5 style="color: black;">Example of how to calculate monthly expenses</h5>
                                <hr />
                                <div class="row">
                                    <div class="col-sm-6 pull-left">
                                        <p>Rent</p>
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <p><b>$800</b></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 pull-left">
                                        <p>Internet</p>
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <p><b>$50</b></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 pull-left">
                                        <p>Gym</p>
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <p><b>$30</b></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 pull-left">
                                        <p>Utilities</p>
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <p><b>$100</b></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 pull-left">
                                        <p>Student Loans</p>
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <p><b>$500</b></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 pull-left">
                                        <p>Expenses</p>
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <p><b>$0</b></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 pull-left">
                                        <p>Expenses</p>
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <p><b>$0</b></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 pull-left">
                                        <p>Expenses</p>
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <p><b>$0</b></p>
                                    </div>
                                </div>

                                <div class="row">
                                    <hr />
                                    <div class="col-sm-6 pull-left">
                                        <h6 style="color: black;">Total Monthly Expenses</h6>
                                    </div>
                                    <div class="col-sm-6 pull-right">
                                        <p><b>$1480</b></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.js">
    </script>
    <script type="text/javascript">

        $(document).ready(function () {


        });

    </script>

</asp:Content>
