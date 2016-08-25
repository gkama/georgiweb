<%@ Page Title="TypoglycemiaPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TypoglycemiaPage.aspx.cs" Inherits="georgiweb.Challenges.TypoglycemiaPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6;">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Typoclycemia</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Intermediate
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p style="color: black;">
                        Typoglycemia is a relatively new word given to a purported recent discovery about how people read written text. As <i>Wikipedia</i> puts it:<br />
                        <br />
                        <i>The legend, propagated by email and message boards, purportedly demonstrates that readers can understand the meaning of words in a sentence even when the interior letters of each word are scrambled. As long as all the necessary letters are present, and the first and last letters remain the same, readers appear to have little trouble reading the text.</i><br />
                        <br />
                        As per <i>Urban Dictionary</i>:<br />
                        <br />
                        <i>Typoglycemia<br />
                            The mind's ability to decipher a mis-spelled word if the first and last letters of the word are correct.<br />
                            The word Typoglycemia describes Teh mdin's atbiliy to dpeihecr a msi-selpeld wrod if the fsirt and lsat lteetrs of the wrod are cerorct.</i><br />
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalT">Typoclycemia Modal</button>

                    <!-- Typoclycemia Modal -->
                    <div class="modal fade" id="myModalT" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'; color: black;">Typoclycemia</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:TextBox ID="TypoglycemiaInput" runat="server" Style="resize: none; font-family: 'Century Gothic'" CssClass="form-control"
                                                Width="100%" Height="170px" Font-Italic="true" TextMode="MultiLine"></asp:TextBox>
                                            <br>
                                            <asp:Button runat="server" ID="TypoclycemiaButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="TypoclycemiaButtonClick" Style="font-family: 'Century Gothic'" />
                                            <br />
                                            <asp:Label runat="server" ID="TypoclycemiaInvalidInput" Style="font-family: 'Century Gothic'"></asp:Label>
                                            <br />
                                            <asp:TextBox ID="TypoglycemiaInputResult" runat="server" Style="resize: none; font-family: 'Century Gothic'" CssClass="form-control"
                                                Width="100%" Height="170px" Font-Italic="true" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
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
                    <!-- End of Container for Typoclycemia -->
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Main two functions</h4>
                    <div class="code">
                        <span class="Modifier">protected</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;GetTypoglycemia(<span class="ReferenceType">string</span>&nbsp;input)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Regex&nbsp;used&nbsp;to&nbsp;divide&nbsp;word&nbsp;up&nbsp;</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Linq">var</span>&nbsp;WordRegex&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Regex(@<span class="String">"(?&lt;Word&gt;(?&lt;FirstLetter&gt;\w)(?&lt;MiddleOfWord&gt;[\w']{2,})(?&lt;LastLetter&gt;\w))"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Linq">var</span>&nbsp;Matches&nbsp;=&nbsp;WordRegex.Matches(input);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Linq">var</span>&nbsp;OutputString&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder(input.Length);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(Match&nbsp;match&nbsp;<span class="Statement">in</span>&nbsp;Matches)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Append&nbsp;the&nbsp;result&nbsp;via&nbsp;RegEx&nbsp;matches&nbsp;in&nbsp;the&nbsp;word</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OutputString.Append(input.Substring(OutputString.Length,&nbsp;match.Index&nbsp;-&nbsp;OutputString.Length)&nbsp;+&nbsp;match.Groups[<span class="String">"FirstLetter"</span>].Value&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;RandomizeWord(match.Groups[<span class="String">"MiddleOfWord"</span>].Value)&nbsp;+&nbsp;match.Groups[<span class="String">"LastLetter"</span>].Value);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;OutputString.ToString();<br />
                        }<br />
                        <br />
                        <span class="InlineComment">//Randomize&nbsp;middle&nbsp;of&nbsp;word</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;RandomizeWord(<span class="ReferenceType">string</span>&nbsp;Word)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Linq">var</span>&nbsp;RandomNum&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Random();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;RandomizedWord;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//&nbsp;Make&nbsp;sure&nbsp;the&nbsp;word&nbsp;is&nbsp;actually&nbsp;randomized</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">do</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//&nbsp;If&nbsp;the&nbsp;middle&nbsp;of&nbsp;a&nbsp;word&nbsp;is&nbsp;2&nbsp;letters&nbsp;long&nbsp;-&nbsp;then&nbsp;the&nbsp;only&nbsp;way&nbsp;to&nbsp;randomize&nbsp;it&nbsp;is&nbsp;to&nbsp;switch&nbsp;position</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//&nbsp;of&nbsp;the&nbsp;two&nbsp;letters,&nbsp;otherwise&nbsp;randomize&nbsp;it</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RandomizedWord&nbsp;=&nbsp;<span class="ReferenceType">string</span>.Join(<span class="String">""</span>,&nbsp;Word.Length&nbsp;==&nbsp;2&nbsp;?&nbsp;Word.Reverse()&nbsp;:&nbsp;Word.OrderBy(c&nbsp;=&gt;&nbsp;RandomNum.Next()));<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="Statement">while</span>&nbsp;(RandomizedWord&nbsp;==&nbsp;Word);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;RandomizedWord;<br />
                        }
               
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Additionally, I have a validation of input function</h4>
                    <div class="code">
                        <span class="InlineComment">//Validate&nbsp;Input</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">bool</span>&nbsp;ValidateInput(<span class="ReferenceType">string</span>&nbsp;input)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>[]&nbsp;SplitInput&nbsp;=&nbsp;input.Split('&nbsp;',&nbsp;'\n');<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Linq">var</span>&nbsp;ValidResult&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Regex(@<span class="String">"^[a-zA-Z0-9\p{P}]+$"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Linq">var</span>&nbsp;Matches&nbsp;=&nbsp;ValidResult.Matches(input);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(<span class="ReferenceType">string</span>&nbsp;s&nbsp;<span class="Statement">in</span>&nbsp;SplitInput)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(ValidResult.IsMatch(s)&nbsp;==&nbsp;<span class="Keyword">false</span>&nbsp;&amp;&amp;&nbsp;s&nbsp;!=&nbsp;<span class="String">""</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="Keyword">false</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="Keyword">true</span>;<br />
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
