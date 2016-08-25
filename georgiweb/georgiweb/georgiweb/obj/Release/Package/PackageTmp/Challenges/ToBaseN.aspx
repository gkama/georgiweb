<%@ Page Title="To Base N" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ToBaseN.aspx.cs" Inherits="georgiweb.Challenges.ToBaseN" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">To Base N</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Easy
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <!-- To Base N Sequence -->
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p>
                        Convert a base 10 number to a given base.<br />
                        An integer 'x' in base 10 and an integer base 'n' between 2 and 10 is give.<br />
                        Thhe output is the integer 'x' in base 'n'.<br />
                        <br />
                        <b>Example input:To Base N</b><br />
                        987 - Base 4<br />
                        <br />
                        <b>Example output:</b><br />
                        33123
                    </p>



                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">To Base N Modal</button>

                    <!-- v Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 800px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">To Base N</h4>
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
                                                    <asp:Label runat="server">To Base:</asp:Label>
                                                    <asp:DropDownList ID="toBaseNDDL"
                                                        AutoPostBack="True"
                                                        runat="server"
                                                        CssClass="form-control">

                                                        <asp:ListItem Selected="True" Value="2"> 2 </asp:ListItem>
                                                        <asp:ListItem Value="3"> 3 </asp:ListItem>
                                                        <asp:ListItem Value="4"> 4 </asp:ListItem>
                                                        <asp:ListItem Value="5"> 5 </asp:ListItem>
                                                        <asp:ListItem Value="6"> 6 </asp:ListItem>
                                                        <asp:ListItem Value="7"> 7 </asp:ListItem>
                                                        <asp:ListItem Value="8"> 8 </asp:ListItem>
                                                        <asp:ListItem Value="9"> 9 </asp:ListItem>
                                                        <asp:ListItem Value="10"> 10 </asp:ListItem>

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
                                            <asp:Button runat="server" ID="TBNButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="TBNButtonClick" Style="font-family: 'Century Gothic'" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="fancy-button" data-dismiss="modal" style="font-family: 'Century Gothic'">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End of Container for To Base N -->
                    <hr />
                    <a name="sourceCodeAnchor"></a>
                    <br />
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">When the "Go" button is clicked</h4>
                    <div class="code">
                        <span class="InlineComment">//On&nbsp;'Go'&nbsp;Click</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;TBNButtonClick(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;outputLabel.Text&nbsp;=&nbsp;convertToNBase(<span class="ValueType">int</span>.Parse(valueTxtBox.Text.ToString().Trim()));<br />
                        }<br />
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;convertToNBase(<span class="ValueType">int</span>&nbsp;number)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">switch</span>&nbsp;(toBaseNDDL.SelectedValue.ToString())<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"2"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Convert.ToString(number,&nbsp;2);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"3"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;intToString(number,&nbsp;3);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"4"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;intToString(number,&nbsp;4);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"5"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;intToString(number,&nbsp;5);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"6"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;intToString(number,&nbsp;6);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"7"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;intToString(number,&nbsp;7);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"8"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Convert.ToString(number,&nbsp;8);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"9"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;intToString(number,&nbsp;9);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;<span class="String">"10"</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;number.ToString();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Modifier">default</span>:<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="String">"Invalid!"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        }
                    </div>

                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">intToString function</h4>
                    <div class="code">
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;intToString(<span class="ValueType">int</span>&nbsp;number,&nbsp;<span class="ValueType">int</span>&nbsp;targetBase)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;result&nbsp;=&nbsp;<span class="ReferenceType">string</span>.Empty;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">do</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result&nbsp;=&nbsp;baseChars[number&nbsp;%&nbsp;targetBase]&nbsp;+&nbsp;result;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;number&nbsp;=&nbsp;number&nbsp;/&nbsp;targetBase;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">while</span>&nbsp;(number&nbsp;&gt;&nbsp;0);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;result;<br />
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
