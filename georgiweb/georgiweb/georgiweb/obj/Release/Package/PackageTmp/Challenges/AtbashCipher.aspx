<%@ Page Title="Atbash Cipher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AtbashCipher.aspx.cs" Inherits="georgiweb.Challenges.AtbashCipher" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Atbash Cipher</h3>
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
                        Atbash is a simple substitution cipher originally for the Hebrew alphabet, but possible with any known alphabet. It emerged around 500-600 BCE. It works by substituting the first letter of an alphabet for the last letter, the second letter for the second to last and so on, effectively reversing the alphabet. Here is the Atbash substitution table:<br />
                    </p>
                    <div class="code">
                        Plain:&nbsp;&nbsp;abcdefghijklmnopqrstuvwxyz<br />
                        Cipher:&nbsp;ZYXWVUTSRQPONMLKJIHGFEDCBA
                    </div>
                    <p>
                        Amusingly, some English words Atbash into their own reverses, e.g., "wizard" = "draziw."
                        This is not considered a strong cipher but was at the time.
                        For more information on the cipher, please see the Wikipedia page on Atbash.<br />
                        <br />
                    </p>
                    <p>
                        <b>Input Description:</b><br />
                        For this challenge you'll be asked to implement the Atbash cipher and encode (or decode) some English language words. If the character is NOT part of the English alphabet (a-z), you can keep the symbol intact. Examples:<br />
                    </p>
                    <div class="code">
                        foobar<br />
                        wizard<br />
                        /r/dailyprogrammer<br />
                        gsrh&nbsp;rh&nbsp;zm&nbsp;vcznkov&nbsp;lu&nbsp;gsv&nbsp;zgyzhs&nbsp;xrksvi
                    </div>
                    <p>
                        <b>Output Description:</b><br />
                        Your program should emit the following strings as ciphertext or plaintext:<br />
                    </p>
                    <div class="code">
                        ullyzi<br />
                        draziw<br />
                        /i/wzrobkiltiznnvi<br />
                        this&nbsp;is&nbsp;an&nbsp;example&nbsp;of&nbsp;the&nbsp;atbash&nbsp;cipher
                    </div>
                    <p>
                        <b>Bonus:</b><br />
                        Preserve case.<br />
                    </p>


                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">Atbash Cipher Modal</button>

                    <!-- Getting A Degree Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 800px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">Atbash Cipher</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <p><b>Word/Sentence:</b></p>
                                                    <asp:TextBox runat="server" ID="inputTxtBox" CssClass="form-control"
                                                        TextMode="MultiLine" Height="80px" Width="100%" Style="resize: none">

                                                    </asp:TextBox>
                                                </div>

                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <p><b>Encoded/Decoded Atbash:</b></p>
                                                    <asp:TextBox runat="server" ID="outputTxtBox" CssClass="form-control"
                                                        TextMode="MultiLine" Height="80px" Width="100%" ReadOnly="true" Style="resize: none">

                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                            <br />

                                            <asp:Button runat="server" ID="ACButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="ACButtonClick" Style="font-family: 'Century Gothic'" />
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
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;plain&nbsp;=&nbsp;<span class="String">"aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"</span>;<br />
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;cipher&nbsp;=&nbsp;<span class="String">"zZyYxXwWvVuUtTsSrRqQpPoOnNmMlLkKjJiIhHgGfFeEdDcCbBaA"</span>;<br />
                        <br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;Page_Load(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Do&nbsp;nothing</span><br />
                        }<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        <span class="InlineComment">//Go&nbsp;button&nbsp;clicked</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;ACButtonClick(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Text&nbsp;=&nbsp;atbashCipher(inputTxtBox.Text.ToString().Trim());<br />
                        }<br />
                        <br />
                        <span class="InlineComment">//Encode/Decode&nbsp;the&nbsp;Atbash&nbsp;Cipher</span><br />
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;atbashCipher(<span class="ReferenceType">string</span>&nbsp;input)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;toReturn&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(<span class="ValueType">char</span>&nbsp;c&nbsp;<span class="Statement">in</span>&nbsp;input)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(plain.Contains(c))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(cipher[plain.IndexOf(c)]);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(c);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;toReturn.ToString();<br />
                        }
                    </div>
        </ContentTemplate>
        <Triggers>
        </Triggers>
    </asp:UpdatePanel>


    <script type="text/javascript">
        
    </script>
</asp:Content>