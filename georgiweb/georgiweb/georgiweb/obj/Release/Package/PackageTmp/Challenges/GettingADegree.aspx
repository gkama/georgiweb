<%@ Page Title="Getting A Degree" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GettingADegree.aspx.cs" Inherits="georgiweb.Challenges.GettingADegree" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Getting A Degree</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Easy
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <!-- Getting A Degree Sequence -->
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p>
                        Welcome to DailyProgrammer University. Today you will be earning a degree in converting degrees. This includes Fahrenheit, Celsius, Kelvin, Degrees (angle), and Radians.<br />
                        <br />
                        <b>Input</b><br />
                        You will be given two lines of text as input. On the first line, you will receive a number followed by two letters, the first representing the unit that the number is currently in, the second representing the unit it needs to be converted to.
                        Examples of valid units are:<br />
                    </p>
                    <div class="code">
                        d&nbsp;for&nbsp;degrees&nbsp;of&nbsp;a&nbsp;circle<br />
                        r&nbsp;for&nbsp;radians
                    </div>
                    <p>
                        <b>Output</b><br />
                        You must output the given input value, in the unit specified. It must be followed by the unit letter. You may round to a whole number, or to a few decimal places.<br />
                        <br />
                        <b>Challenge Input</b>
                    </p>
                    <div class="code">
                        3.1416rd<br />
                        90dr
                    </div>
                    <p>
                        <b>Challenge Output</b><br />
                    </p>
                    <div class="code">
                        180d<br />
                        1.57r
                    </div>
                    <p>
                        <b>Bonus</b><br />
                        Also support these units:<br />

                    </p>
                    <div class="code">
                        c&nbsp;for&nbsp;Celsius<br />
                        f&nbsp;for&nbsp;Fahrenheit<br />
                        k&nbsp;for&nbsp;Kelvin
                    </div>
                    <p>
                        If the two units given are incompatible, give an error message as output.<br />
                        <br />
                        <b>Bonus Input:</b><br />
                    </p>
                    <div class="code">
                        212fc<br />
                        70cf<br />
                        100cr<br />
                        315.15kc
                    </div>
                    <p>
                        <b>Bonus Output:</b><br />
                    </p>
                    <div class="code">
                        100c<br />
                        158f<br />
                        No&nbsp;candidate&nbsp;for&nbsp;conversion<br />
                        42c
                    </div>


                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">Getting A Degree Modal</button>

                    <!-- Getting A Degree Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 800px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">Getting A Degree</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <p><b>Input:</b></p>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <asp:Label runat="server">Value:</asp:Label>
                                                    <asp:TextBox runat="server" ID="valueTxtBox" CssClass="form-control">

                                                    </asp:TextBox>
                                                </div>
                                                <div class="col-sm-4">
                                                    <asp:Label runat="server">From:</asp:Label>
                                                    <asp:DropDownList ID="fromInputDDL"
                                                        AutoPostBack="True"
                                                        OnSelectedIndexChanged="fromInputDDLSelection_Change"
                                                        runat="server"
                                                        CssClass="form-control">

                                                        <asp:ListItem Selected="True" Value="d"> d: Degrees </asp:ListItem>
                                                        <asp:ListItem Value="r"> r: Radians </asp:ListItem>
                                                        <asp:ListItem Value="c"> c: Celcius </asp:ListItem>
                                                        <asp:ListItem Value="f"> f: Fahrenheit </asp:ListItem>
                                                        <asp:ListItem Value="k"> k: Kelvin</asp:ListItem>

                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-sm-4">
                                                    <asp:Label runat="server">To:</asp:Label>
                                                    <asp:DropDownList ID="toInputDDL"
                                                        AutoPostBack="True"
                                                        OnSelectedIndexChanged="toInputDDLSelection_Change"
                                                        runat="server"
                                                        CssClass="form-control">

                                                        <asp:ListItem Selected="True" Value="d"> d: Degrees </asp:ListItem>
                                                        <asp:ListItem Value="r"> r: Radians </asp:ListItem>
                                                        <asp:ListItem Value="c"> c: Celcius </asp:ListItem>
                                                        <asp:ListItem Value="f"> f: Fahrenheit </asp:ListItem>
                                                        <asp:ListItem Value="k"> k: Kelvin</asp:ListItem>

                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-sm-4">
                                                </div>

                                            </div>
                                            <br />
                                            <p><b>Output:</b></p>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <asp:Label runat="server" ID="outputLabel">

                                                    </asp:Label>
                                                </div>

                                            </div>
                                            <br />
                                            <asp:Button runat="server" ID="GADButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="GADButtonClick" Style="font-family: 'Century Gothic'" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="fancy-button" data-dismiss="modal" style="font-family: 'Century Gothic'">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End of Container for Getting A Degree -->
                    <hr />
                    <a name="sourceCodeAnchor"></a>
                    <br />
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">When the "Go" button is clicked to get the output</h4>
                    <div class="code">
                        <span class="InlineComment">//On&nbsp;'Go'&nbsp;Click</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;GADButtonClick(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;outputLabel.Text&nbsp;=&nbsp;convert(fromInputDDL.SelectedValue.ToString()&nbsp;+&nbsp;toInputDDL.SelectedValue.ToString())&nbsp;+&nbsp;<span class="String">"&lt;br/&gt;"</span>;<br />
                        }
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Convert function</h4>
                    <div class="code">
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;convert(<span class="ReferenceType">string</span>&nbsp;conversion)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">double</span>&nbsp;Value&nbsp;=&nbsp;<span class="ValueType">double</span>.Parse(valueTxtBox.Text.ToString());<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">switch</span>&nbsp;(conversion)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"rd"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;(Value&nbsp;*&nbsp;(180&nbsp;/&nbsp;PI)).ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"dr"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;(Value&nbsp;*&nbsp;(PI&nbsp;/&nbsp;180)).ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"cf"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;((Value&nbsp;*&nbsp;1.8)&nbsp;+&nbsp;32).ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"fc"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;((Value&nbsp;-&nbsp;32)&nbsp;*&nbsp;0.5556).ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"kf"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;(((Value&nbsp;-&nbsp;273)&nbsp;*&nbsp;9&nbsp;/&nbsp;5)&nbsp;+&nbsp;32).ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"fk"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;(((Value&nbsp;-&nbsp;32)&nbsp;*&nbsp;5&nbsp;/&nbsp;9)&nbsp;+&nbsp;273).ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"ck"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;(Value&nbsp;+&nbsp;273).ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//If&nbsp;same&nbsp;conversion</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"dd"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Value.ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"rr"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Value.ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"cc"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Value.ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"ff"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Value.ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"kk"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Value.ToString(<span class="String">"#.000"</span>)&nbsp;+&nbsp;conversion[1];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Modifier">default</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="String">"No&nbsp;candidate&nbsp;for&nbsp;conversion"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        }
                    </div>

                </div>
            </div>
        </ContentTemplate>
        <Triggers>
        </Triggers>
    </asp:UpdatePanel>


    <script type="text/javascript">
        
    </script>
</asp:Content>