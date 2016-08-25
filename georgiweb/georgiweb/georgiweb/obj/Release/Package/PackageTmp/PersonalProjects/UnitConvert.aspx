<%@ Page Title="Unit Converter" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UnitConvert.aspx.cs" Inherits="georgiweb.PersonalProjects.UnitConvert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" UpdateMode="Conditional" style="font-family: 'Century Gothic';">
        <ContentTemplate>
            <div class="container-fluid" runat="server" style="padding-left: 100px; padding-right: 100px; margin-top: 40px;">
                <div class="row">
                    <div class="col-sm-8">
                        <h3 style="font-family: 'Century Gothic'; letter-spacing: 5px; font-size: 25px; color: black;">Unit Converter</h3>
                        <hr />
                        <div class="row">
                            <div class="col-sm-3">
                                <asp:Label runat="server">Convert:</asp:Label>
                                <asp:DropDownList ID="convertOptionDDL"
                                    AutoPostBack="True"
                                    OnSelectedIndexChanged="convertOptionDDLSelection_Change"
                                    runat="server"
                                    CssClass="form-control">
                                    <asp:ListItem Selected="True" disabled>Select One...</asp:ListItem>
                                    <asp:ListItem>Length</asp:ListItem>
                                    <asp:ListItem>Weight</asp:ListItem>
                                    <asp:ListItem>Area</asp:ListItem>
                                    <asp:ListItem>Degrees</asp:ListItem>
                                    <asp:ListItem>Radians/Degrees</asp:ListItem>
                                    <asp:ListItem>Liquid</asp:ListItem>
                                    <asp:ListItem>Time</asp:ListItem>
                                    <asp:ListItem>Currency</asp:ListItem>
                                    <asp:ListItem>Decimal Number</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <!-- Then you have the Convert options -->
                            <div class="col-sm-3" runat="server" id="fromDiv">
                                <asp:Label runat="server">From:</asp:Label>
                                <asp:DropDownList ID="fromDDL"
                                    AutoPostBack="True"
                                    OnSelectedIndexChanged="fromDDLSelection_Change"
                                    runat="server"
                                    CssClass="form-control"
                                    Enabled="false">
                                </asp:DropDownList>
                            </div>
                            <div class="col-sm-3" runat="server" id="toDiv">
                                <asp:Label runat="server">To:</asp:Label>
                                <asp:DropDownList ID="toDDL"
                                    AutoPostBack="True"
                                    OnSelectedIndexChanged="toDDLSelection_Change"
                                    runat="server"
                                    CssClass="form-control"
                                    Enabled="false">
                                </asp:DropDownList>
                            </div>
                            <div class="col-sm-3">
                                <asp:Label runat="server">Value:</asp:Label>
                                <asp:TextBox runat="server" ID="inputTxt" Enabled="false" CssClass="form-control" OnTextChanged="inputTxtChanged"></asp:TextBox>
                            </div>
                        </div>
                        <br />

                        <div class="row">
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4" style="padding-top: 10px;">
                                <asp:Button runat="server" ID="convertBtn" Enabled="false" Width="100%" CssClass="btn btn-info" Text="CONVERT" OnClick="convertBtnClick" />
                            </div>

                        </div>
                        <div class="row">
                            <!-- Result Label -->
                            <div class="well well-lg" runat="server" id="resultDiv" visible="true" style="height: 80px; margin-top: 20px">
                                <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                    <asp:Label ID="resultLbl" runat="server" Text="" Font-Italic="true" Font-Size="X-Large"
                                        CssClass="StrongText">
                
                                    </asp:Label>
                                </div>
                            </div>
                        </div>
                        <hr />
                    </div>

                    <div class="col-sm-4">
                        <h3 style="font-family: 'Century Gothic'; letter-spacing: 2px; font-size: 25px; color: black;">Description</h3>
                        <hr />
                        <p>
                            Webpage is simply a GUI representation of what the DLL does.<br />
                            <br />
                            The currently supported conversion are listed in the drop down list under 'Convert' label. As time goes, I will try and add more.<br />
                            <br />
                            The DLL is essentially a shared library for specific conversions. I was doing all the unit conversions locally in my Android mobile
                            application - 'Unit Converter' - so I decided that I would like to make it into a DLL so I can use it in other places.<br />
                            <br />
                            Hopefully, the <a href="https://github.com/gogyprogramming/UnitConverter-DLL/tree/master/UnitConverter/UnitConverter/bin/Release" target="_blank">library</a> could be useful to other developers!
                        </p>
                    </div>
                </div>
                <div class="row">
                    <p>
                        UnitConverter Dynamic Link Library<br />
                        Simply declare a variable of the 'UnitConverter' class, then call functions:
                        <br />
                    </p>
                    <div class="code">
                        <span class="Modifier">public</span>&nbsp;<span class="ValueType">double</span>&nbsp;ConvertTime(<span class="ReferenceType">string</span>&nbsp;Case,&nbsp;<span class="ValueType">double</span>&nbsp;Time)<br />
                        <span class="Modifier">public</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;ConvertDecimalNumber(<span class="ReferenceType">string</span>&nbsp;Case,&nbsp;<span class="ValueType">int</span>&nbsp;Number)<br />
                        <span class="Modifier">public</span>&nbsp;<span class="ValueType">double</span>&nbsp;ConvertCurrency(<span class="ReferenceType">string</span>&nbsp;Case,&nbsp;<span class="ValueType">double</span>&nbsp;Currency)<br />
                        <span class="Modifier">public</span>&nbsp;<span class="ValueType">double</span>&nbsp;ConvertLiquid(<span class="ReferenceType">string</span>&nbsp;Case,&nbsp;<span class="ValueType">double</span>&nbsp;Value)<br />
                        <span class="Modifier">public</span>&nbsp;<span class="ValueType">double</span>&nbsp;ConvertWeight(<span class="ReferenceType">string</span>&nbsp;Case,&nbsp;<span class="ValueType">double</span>&nbsp;Value)<br />
                        <span class="Modifier">public</span>&nbsp;<span class="ValueType">double</span>&nbsp;ConvertLength(<span class="ReferenceType">string</span>&nbsp;Case,&nbsp;<span class="ValueType">double</span>&nbsp;Value)<br />
                        <span class="Modifier">public</span>&nbsp;<span class="ValueType">double</span>&nbsp;ConvertDegrees(<span class="ReferenceType">string</span>&nbsp;Case,&nbsp;<span class="ValueType">double</span>&nbsp;Value)<br />
                        <span class="Modifier">public</span>&nbsp;<span class="ValueType">double</span>&nbsp;ConvertArea(<span class="ReferenceType">string</span>&nbsp;Case,&nbsp;<span class="ValueType">double</span>&nbsp;Value)<br />
                        <span class="Modifier">public</span>&nbsp;<span class="ValueType">double</span>&nbsp;ConvertRadiansDegrees(<span class="ReferenceType">string</span>&nbsp;Case,&nbsp;<span class="ValueType">double</span>&nbsp;Value)
                    </div>
                    <p>
                        <b>Example of use:</b><br />
                    </p>
                    <div class="code">
                        <span class="Namespace">using</span>&nbsp;UnitConverter;<br />
                        <br />
                        UnitConverter.UnitConverter&nbsp;uC&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;UnitConverter.UnitConverter();<br />
                        <br />
                        <span class="ValueType">double</span>&nbsp;convTime&nbsp;=&nbsp;uC.ConvertTime(<span class="String">"SecondsHours"</span>,&nbsp;100.0);<br />
                        <span class="ValueType">double</span>&nbsp;contWeight&nbsp;=&nbsp;uC.ConvertWeight(<span class="String">"PoundsKilograms"</span>,&nbsp;500.0);
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
