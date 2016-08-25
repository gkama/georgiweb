<%@ Page Title="Letters In Alphabetical Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LettersInAlphaOrder.aspx.cs" Inherits="georgiweb.Challenges.LettersInAlphaOrder" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6;">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Are Letters in Alphabetica Order?</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Easy
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p style="color: black;">
                        A handful of words have their letters in alphabetical order, that is nowhere in the word do you change direction in the word if you were to scan along the English alphabet. An example is the word "almost", which has its letters in alphabetical order.<br />
                        <br />
                        The challenge is to write a program that can determine if the letters in a word are in alphabetical order.<br />
                        <br />
                        As a bonus, the program can find words spelled in reverse alphebatical order.<br />
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAL">Letters in Alphabetica Order Modal</button>

                    <!-- AO Letters Modal -->
                    <div class="modal fade" id="myModalAL" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'; color: black;">Are Letters in Alphabetical Order?</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="col-m-6">
                                                <asp:Label runat="server" Style="font-family: 'Century Gothic'">Word:</asp:Label>
                                                <asp:TextBox runat="server" ID="AOLettersInput" CssClass="form-control" BackColor="LightGray"
                                                    Width="150px" Style="font-family: 'Century Gothic'"></asp:TextBox>
                                                <br>
                                                <asp:Button runat="server" ID="AOLettersButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                    OnClick="AOLettersButtonClick" Style="font-family: 'Century Gothic'" />
                                                <asp:Label runat="server" ID="AOLettersInvalidInput" Style="font-family: 'Century Gothic'"></asp:Label>
                                                <br />
                                                <hr />
                                                <asp:Label runat="server" ID="AOLettersButtonLabel" Style="font-family: 'Century Gothic'"></asp:Label>
                                            </div>
                                            <hr runat="server" id="ABOVE_TABLE_HR" visible="false" />
                                            <div class="col-m-6">
                                                <table class="table" style="font-family: Century Gothic">
                                                    <caption style="text-align: left">Sample Output</caption>
                                                    <thead>
                                                        <tr>
                                                            <th>Words</th>
                                                            <th></th>
                                                            <th>Order</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="WordsOutputLabel" runat="server" type="text"></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="IsLabel" runat="server" type="text"></asp:Label></td>
                                                            <td>
                                                                <asp:Label ID="OrderOutputLabel" runat="server" type="text"></asp:Label></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <asp:Button runat="server" ID="SampleOutputButton" Text="Generate Samples Output" CssClass="fancy-button" Width="100%"
                                                OnClick="SampleOutputButtonClick" Style="font-family: 'Century Gothic'" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="fancy-button" data-dismiss="modal" style="font-family: 'Century Gothic'">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <a name="sourceCodeAnchor"></a>
                    <br />
                    <!-- End of Container for AO Letters -->
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Check if the letters of input word are in alphabetical order</h4>
                    <div class="code">
                        <span class="InlineComment">//Check&nbsp;if&nbsp;letters&nbsp;are&nbsp;in&nbsp;Alphabetical&nbsp;Order</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;AreLettersInAlphabeticalOrder(<span class="ReferenceType">string</span>&nbsp;word)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;mIndexOfChars&nbsp;=&nbsp;0;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;InOrder&nbsp;=&nbsp;<span class="String">"IN&nbsp;ORDER"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;NotInOrder&nbsp;=&nbsp;<span class="String">"NOT&nbsp;IN&nbsp;ORDER"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;ReverseOrder&nbsp;=&nbsp;<span class="String">"IN&nbsp;REVERSE&nbsp;ORDER"</span>;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">char</span>[]&nbsp;LettersOfWord&nbsp;=&nbsp;word.Trim().ToCharArray();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;(LettersOfWord.Length-2);&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(LettersOfWord[i]&nbsp;&gt;&nbsp;LettersOfWord[i&nbsp;+&nbsp;1])<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mIndexOfChars++;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(mIndexOfChars&nbsp;==&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;InOrder;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(mIndexOfChars&nbsp;==&nbsp;(LettersOfWord.Length&nbsp;-&nbsp;2))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;ReverseOrder;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;NotInOrder;<br />
                        }
               
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Check if input is a word</h4>
                    <div class="code">
                        <span class="InlineComment">//Check&nbsp;if&nbsp;input&nbsp;is&nbsp;a&nbsp;word</span><br />
                        <span class="Modifier">protected</span>&nbsp;Boolean&nbsp;IsWordsOnly(<span class="ReferenceType">string</span>&nbsp;str)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Regex.IsMatch(str,&nbsp;@<span class="String">"^[a-zA-Z]+$"</span>);<br />
                        }
               
                    </div>
                </div>
        </ContentTemplate>
        <Triggers>
        </Triggers>
    </asp:UpdatePanel>


    <script type="text/javascript">
        
    </script>
</asp:Content>
