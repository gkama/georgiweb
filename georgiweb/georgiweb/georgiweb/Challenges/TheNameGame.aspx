<%@ Page Title="TheNameGame" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TheNameGame.aspx.cs" Inherits="georgiweb.Challenges.TheNameGame" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6;">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">The Name Game</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Intermediate
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <!-- Container for The Name Game -->
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p style="color: black;">
                        If computer programmers had a "patron musician" (if such a thing even exists), it would surely be the great Shirley Ellis. It is my opinion that in the history of music, not song has ever come closer to replicating the experience of programming as her 1964 novelty hit The Name Game. In the lyrics of that song she lays out quite an elegant and fun algorithm for making a rhyme out of anybody's name. The lyrics are almost like sung pseudo-code!<br />
                        <br />
                        Program implements a computer program that can play Ms. Ellis' Name Game. User will recieve a name for input, and output the rhyme for that name.<br />
                        <br />
                        It should be noted that while the rhyming algorithm is very elegant and easy for humans to follow, Ms. Ellis description is not quite rigorous. For instance, there's an extra rule that she doesn't mention that only applies when names start with a vowel (such as "Arnold"), and it's not quite fully clear exactly what one should do when the names start with M, F or B.<br />
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">The Name Game Modal</button>

                    <!-- AD Numbers Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'; color: black;">The Name Game</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Label runat="server" Style="font-family: 'Century Gothic'">Name:</asp:Label>
                                            <asp:TextBox runat="server" ID="TheNameGameInput" CssClass="form-control" BackColor="LightGray"
                                                Width="150px" Style="font-family: 'Century Gothic'"></asp:TextBox>
                                            <br>
                                            <asp:Button runat="server" ID="TheNameGameButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="TheNameGameButtonClick" Style="font-family: 'Century Gothic'" />
                                            <asp:Label runat="server" ID="TheNameGameInvalidInput" Style="font-family: 'Century Gothic'"></asp:Label>
                                            <br />
                                            <hr runat="server" id="ABOVE_OUTPUT_HR" visible="false" />
                                            <asp:Label runat="server" ID="TheNameGameResultLabel" Style="font-family: 'Century Gothic'"></asp:Label>
                                            <hr runat="server" id="BELOW_OUTPUT_HR" visible="false" />
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
                <!-- End of Container for AD Numbers -->
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Appends the Lyrics according to rules</h4>
                    <div class="code">
                        <span class="Modifier">protected</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;GetSongLyrics(<span class="ReferenceType">string</span>&nbsp;name)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Linq">var</span>&nbsp;Vowels&nbsp;=&nbsp;<span class="String">"aeiou"</span>;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;Lyrics&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//This&nbsp;only&nbsp;applies&nbsp;if&nbsp;name&nbsp;does&nbsp;not&nbsp;start&nbsp;with&nbsp;a&nbsp;B,&nbsp;F,&nbsp;or&nbsp;M</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(Vowels.Contains(name.ToLower()[0]))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//First&nbsp;append&nbsp;the&nbsp;name&nbsp;twice</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(name.ToUpper()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">",&nbsp;"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(name.ToUpper()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"&nbsp;"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Then&nbsp;append&nbsp;"bo"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(<span class="String">"Bo-B"</span>&nbsp;+&nbsp;name.ToLower()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">","</span>&nbsp;+&nbsp;<span class="String">"\r\n"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Then&nbsp;append&nbsp;'Banana-Fana&nbsp;Fo-F-name"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(<span class="String">"Banana-Fana&nbsp;Fo-F"</span>&nbsp;+&nbsp;name.ToLower()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"\r\n"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Then&nbsp;append&nbsp;'Fee-Fi-Mo-M-name"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(<span class="String">"Fee-Fi-Mo-M"</span>&nbsp;+&nbsp;name.ToLower()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"\r\n"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Finally&nbsp;append&nbsp;name</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(name.ToUpper()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"!"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(name.ToLower()[0]&nbsp;!=&nbsp;'m'&nbsp;&amp;&amp;&nbsp;name.ToLower()[0]&nbsp;!=&nbsp;'b'&nbsp;&amp;&amp;&nbsp;name.ToLower()[0]&nbsp;!=&nbsp;'f')<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//First&nbsp;append&nbsp;the&nbsp;name&nbsp;twice</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(name.ToUpper()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">",&nbsp;"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(name.ToUpper()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"&nbsp;"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Then&nbsp;append&nbsp;"bo"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(<span class="String">"Bo-B"</span>&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">","</span>&nbsp;+&nbsp;<span class="String">"\r\n"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Then&nbsp;append&nbsp;'Banana-Fana&nbsp;Fo-F-name"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(<span class="String">"Banana-Fana&nbsp;Fo-F"</span>&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"\r\n"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Then&nbsp;append&nbsp;'Fee-Fi-Mo-M-name"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(<span class="String">"Fee-Fi-Mo-M"</span>&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"\r\n"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Finally&nbsp;append&nbsp;name</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(name.ToUpper()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"!"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//First&nbsp;append&nbsp;the&nbsp;name&nbsp;twice</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(name.ToUpper()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">",&nbsp;"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(name.ToUpper()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"&nbsp;"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Then&nbsp;append&nbsp;"bo"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(<span class="String">"Bo-"</span>&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">","</span>&nbsp;+&nbsp;<span class="String">"\r\n"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Then&nbsp;append&nbsp;'Banana-Fana&nbsp;Fo-F-name"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(<span class="String">"Banana-Fana&nbsp;Fo-"</span>&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"\r\n"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Then&nbsp;append&nbsp;'Fee-Fi-Mo-M-name"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(<span class="String">"Fee-Fi-Mo-"</span>&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"\r\n"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Finally&nbsp;append&nbsp;name</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lyrics.Append(name.ToUpper()[0]&nbsp;+&nbsp;name.Remove(0,&nbsp;1)&nbsp;+&nbsp;<span class="String">"!"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Lyrics.ToString();<br />
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
