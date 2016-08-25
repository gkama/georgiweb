<%@ Page Title="Stream Cipher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StreamCipher.aspx.cs" Inherits="georgiweb.Challenges.StreamCipher" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Stream Cipher</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Intermediate
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <!-- Getting A Degree Sequence -->
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p>
                        Stream ciphers like RC4 operate very simply: they have a strong psuedo-random number generator that takes a 
                        key and produces a sequence of psuedo-random bytes as long as the message to be encoded, which is then XORed 
                        against the plaintext to provide the cipher text. The strength of the cipher then depends on the strength of 
                        the generated stream of bytes - its randomness (or lack thereof) can lead to the text being recoverable.<br />
                        <br />
                        Your program should have the following components:<br />
                        &#8226;&nbsp;A psuedo-random number generator which takes a key and produces a consistent stream of psuedo-random bytes. A very simple one to implement is the linear congruential generator (LCG).<br />
                        &#8226;&nbsp;An "encrypt" function (or method) that takes a key and a plaintext and returns a ciphertext.<br />
                        &#8226;&nbsp;A "decrypt" function (or method) that takes a key and the ciphertext and returns the plaintext.<br />
                        An example use of this API might look like this (in Python):<br />
                    </p>
                    <div class="code">
                        key&nbsp;=&nbsp;31337<br />
                        msg&nbsp;=&nbsp;"Attack&nbsp;at&nbsp;dawn"<br />
                        ciphertext&nbsp;=&nbsp;enc(msg,&nbsp;key)<br />
                        #&nbsp;send&nbsp;to&nbsp;a&nbsp;recipient<br />
                        <br />
                        #&nbsp;this&nbsp;is&nbsp;on&nbsp;a&nbsp;recipient's&nbsp;side<br />
                        plaintext&nbsp;=&nbsp;dec(ciphertext,&nbsp;key)
                    </div>
                    <p>
                        At this point, plaintext should equal the original msg value.<br />
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">Stream Cipher Modal</button>

                    <!-- Getting A Degree Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 800px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">Stream Cipher</h4>
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
                                                    <p><b>Encoded/Decoded Stream Cipher:</b></p>
                                                    <asp:TextBox runat="server" ID="outputTxtBox" CssClass="form-control"
                                                        TextMode="MultiLine" Height="80px" Width="100%" ReadOnly="true" Style="resize: none">

                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                            <br />

                                            <asp:Button runat="server" ID="SCButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="SCButtonClick" Style="font-family: 'Century Gothic'" />
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
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;SCButtonClick(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Output</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Text&nbsp;=&nbsp;<span class="String">"Original&nbsp;Message:&nbsp;"</span>&nbsp;+&nbsp;inputTxtBox.Text.Trim()<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;<span class="String">"\r\n"</span>&nbsp;+<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"Encrypted&nbsp;Message:&nbsp;"</span>&nbsp;+&nbsp;encryptMsg(inputTxtBox.Text.Trim(),&nbsp;31337)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;<span class="String">"\r\n"</span>&nbsp;+<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"Decrypted&nbsp;Message:&nbsp;"</span>&nbsp;+&nbsp;decryptMsg(encryptMsg(inputTxtBox.Text.Trim(),&nbsp;31337),&nbsp;31337);<br />
                        }<br />
                        <br />
                        <span class="InlineComment">//Encrypt&nbsp;the&nbsp;Message</span><br />
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;encryptMsg(<span class="ReferenceType">string</span>&nbsp;msg,&nbsp;<span class="ValueType">int</span>&nbsp;key)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;streamCipher(msg,&nbsp;key);<br />
                        }<br />
                        <span class="InlineComment">//Dencrypt&nbsp;the&nbsp;Message</span><br />
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;decryptMsg(<span class="ReferenceType">string</span>&nbsp;msg,&nbsp;<span class="ValueType">int</span>&nbsp;key)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;streamCipher(msg,&nbsp;key);<br />
                        }<br />
                        <br />
                        <span class="InlineComment">//Cipher&nbsp;functionality</span><br />
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;streamCipher(<span class="ReferenceType">string</span>&nbsp;msg,&nbsp;<span class="ValueType">int</span>&nbsp;key)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">byte</span>[]&nbsp;rmArray&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ValueType">byte</span>[msg.Length];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">byte</span>[]&nbsp;msgArray&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ValueType">byte</span>[msg.Length];<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Random&nbsp;randomGenerator&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Random(key);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;randomGenerator.NextBytes(rmArray);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;msgArray&nbsp;=&nbsp;Encoding.Default.GetBytes(msg);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">byte</span>[]&nbsp;convertedMsgArray&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ValueType">byte</span>[msg.Length];<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;convertedMsgArray.Length;&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;convertedMsgArray[i]&nbsp;=&nbsp;(<span class="ValueType">byte</span>)(rmArray[i]&nbsp;^&nbsp;msgArray[i]);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;System.Text.Encoding.Default.GetString(convertedMsgArray);<br />
                        }
                    </div>
        </ContentTemplate>
        <Triggers>
        </Triggers>
    </asp:UpdatePanel>


    <script type="text/javascript">
        
    </script>
</asp:Content>