<%@ Page Title="Game Of Threes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameOfThrees.aspx.cs" Inherits="georgiweb.Challenges.GameOfThrees" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Game Of Threes</h3>
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
                        Back in middle school, I had a peculiar way of dealing with super boring classes. I would take my handy pocket calculator and play a "Game of Threes". Here's how you play it:<br />
                        First, you mash in a random large number to start with. Then, repeatedly do the following:<br />
                        &#8226;&nbsp;If the number is divisible by 3, divide it by 3.<br />
                        &#8226;&nbsp;If it's not, either add 1 or subtract 1 (to make it divisible by 3), then divide it by 3.<br />
                        The game stops when you reach "1".<br />
                        While the game was originally a race against myself in order to hone quick math reflexes, it also poses an opportunity for some interesting programming challenges. Today, the challenge is to create a program that "plays" the Game of Threes.<br />
                        <br />
                    </p>
                    <p>
                        The input is a single number: the number at which the game starts.<br />
                    </p>
                    <div class="code">
                        100
                    </div>
                    <p>
                        The output is a list of valid steps that must be taken to play the game. Each step is represented by the number you start at, followed by either -1 or 1 (if you are adding/subtracting 1 before dividing), or 0 (if you are just dividing). The last line should simply be 1.<br />
                    </p>
                    <div class="code">
                        100&nbsp;-1<br />
                        33&nbsp;0<br />
                        11&nbsp;1<br />
                        4&nbsp;-1<br />
                        1
                    </div>
                    <p>
                        <br />
                        <b>Challenge Input</b><br />
                        31337357<br />
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">Game Of Threes Modal</button>

                    <!-- Getting A Degree Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 800px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">Game Of Threes</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <p><b>Start Number:</b></p>
                                                    <asp:TextBox runat="server" ID="startNumberTxtBox" CssClass="form-control"
                                                        TextMode="SingleLine" Width="100%" Style="resize: none">

                                                    </asp:TextBox>
                                                </div>

                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <p><b>Output:</b></p>
                                                    <asp:TextBox runat="server" ID="outputTxtBox" CssClass="form-control"
                                                        TextMode="MultiLine" Height="200px" Width="100%" ReadOnly="true" Style="resize: none">

                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                            <br />

                                            <asp:Button runat="server" ID="GOTButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="GOTButtonClick" Style="font-family: 'Century Gothic'" />
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
                    <div class="code">
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;GOTButtonClick(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Text&nbsp;=&nbsp;<span class="String">""</span>;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;startNumber;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Int32.TryParse(startNumberTxtBox.Text.ToString().Trim(),&nbsp;<span class="MethodParameter">out</span>&nbsp;startNumber);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">do</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(startNumber&nbsp;%&nbsp;3&nbsp;==&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Text&nbsp;+=&nbsp;startNumber&nbsp;+&nbsp;<span class="String">"&nbsp;+&nbsp;0"</span>&nbsp;+&nbsp;<span class="String">"\r\n"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(startNumber&nbsp;%&nbsp;3&nbsp;==&nbsp;1)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Text&nbsp;+=&nbsp;startNumber&nbsp;+&nbsp;<span class="String">"&nbsp;-&nbsp;1"</span>&nbsp;+&nbsp;<span class="String">"\r\n"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;startNumber&nbsp;=&nbsp;startNumber&nbsp;-&nbsp;1;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(startNumber&nbsp;%&nbsp;3&nbsp;==&nbsp;2)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Text&nbsp;+=&nbsp;startNumber&nbsp;+&nbsp;<span class="String">"&nbsp;+&nbsp;1"</span>&nbsp;+&nbsp;<span class="String">"\r\n"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;startNumber&nbsp;=&nbsp;startNumber&nbsp;+&nbsp;1;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;startNumber&nbsp;=&nbsp;startNumber&nbsp;/&nbsp;3;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">while</span>&nbsp;(startNumber&nbsp;!=&nbsp;1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Text&nbsp;+=&nbsp;<span class="String">"1"</span>;<br />
                        }
                    </div>
        </ContentTemplate>
        <Triggers>
        </Triggers>
    </asp:UpdatePanel>


    <script type="text/javascript">
        
    </script>
</asp:Content>