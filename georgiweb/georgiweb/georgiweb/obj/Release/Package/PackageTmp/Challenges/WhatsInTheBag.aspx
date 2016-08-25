<%@ Page Title="What's In The Bag?" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WhatsInTheBag.aspx.cs" Inherits="georgiweb.Challenges.FormattingJCode" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">What's In The Bag?</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Intermediate
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <!-- Container for What's In The Bag? -->
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p>
                        Scrabble is a popular word game where players remove tiles with letters on them from a bag and use them to create words on a board. The total number of tiles as well as the frequency of each letter does not change between games.
                        For this challenge we will be using the tile set from the English edition, which has 100 tiles total. <a href="http://scrabblewizard.com/scrabble-tile-distribution/" target="_blank">Here's a reference for the distribution and point value of each tile</a>.<br />
                        Each tile will be represented by the letter that appears on it, with the exception that blank tiles are represented by underscores _.<br />
                        <br />
                        The tiles already in play are inputted as an uppercase string. For example, if 14 tiles have been removed from the bag and are in play, you would be given an input like this:<br />
                    </p>
                    <div class="code">
                        AEERTYOXMCNB_S
                    </div>
                    <br />
                    <p>
                        You should output the tiles that are left in the bag. The list should be in descending order of the quantity of each tile left in the bag, skipping over amounts that have no tiles.<br />
                        In cases where more than one letter has the same quantity remaining, output those letters in alphabetical order, with blank tiles at the end.<br />
                    </p>
                    <div class="code">
                        10:&nbsp;E<br />
                        9:&nbsp;I<br />
                        8:&nbsp;A<br />
                        7:&nbsp;O<br />
                        5:&nbsp;N,&nbsp;R,&nbsp;T<br />
                        4:&nbsp;D,&nbsp;L,&nbsp;U<br />
                        3:&nbsp;G,&nbsp;S<br />
                        2:&nbsp;F,&nbsp;H,&nbsp;P,&nbsp;V,&nbsp;W<br />
                        1:&nbsp;B,&nbsp;C,&nbsp;J,&nbsp;K,&nbsp;M,&nbsp;Q,&nbsp;Y,&nbsp;Z,&nbsp;_<br />
                        0:&nbsp;X
                    </div>

                    <p>
                        If more tiles have been removed from the bag than possible, such as 3 Qs, you should give a helpful error message instead of printing the list.<br />
                    </p>
                    <div class="code">
                        Invalid&nbsp;input.&nbsp;More&nbsp;Q's&nbsp;have&nbsp;been&nbsp;taken&nbsp;from&nbsp;the&nbsp;bag&nbsp;than&nbsp;possible.
                    </div>
                    <br />
                    <br />
                    <p>
                        <b>Challenge Inputs:</b><br />
                    </p>
                    <div class="code">
                        &nbsp;PQAREIOURSTHGWIOAE_<br />
                        &nbsp;LQTOONOEFFJZT<br />
                        &nbsp;AXHDRUIOR_XHJZUQEE
                    </div>
                    <p>
                        <b>Challenge Outputs:</b><br />
                    </p>
                    <div class="code">
                        10:&nbsp;E<br />
                        7:&nbsp;A,&nbsp;I<br />
                        6:&nbsp;N,&nbsp;O<br />
                        5:&nbsp;T<br />
                        4:&nbsp;D,&nbsp;L,&nbsp;R<br />
                        3:&nbsp;S,&nbsp;U<br />
                        2:&nbsp;B,&nbsp;C,&nbsp;F,&nbsp;G,&nbsp;M,&nbsp;V,&nbsp;Y<br />
                        1:&nbsp;H,&nbsp;J,&nbsp;K,&nbsp;P,&nbsp;W,&nbsp;X,&nbsp;Z,&nbsp;_<br />
                        0:&nbsp;Q
                    </div>
                    <div class="code">
                        11:&nbsp;E<br />
                        9:&nbsp;A,&nbsp;I<br />
                        6:&nbsp;R<br />
                        5:&nbsp;N,&nbsp;O<br />
                        4:&nbsp;D,&nbsp;S,&nbsp;T,&nbsp;U<br />
                        3:&nbsp;G,&nbsp;L<br />
                        2:&nbsp;B,&nbsp;C,&nbsp;H,&nbsp;M,&nbsp;P,&nbsp;V,&nbsp;W,&nbsp;Y,&nbsp;_<br />
                        1:&nbsp;K,&nbsp;X<br />
                        0:&nbsp;F,&nbsp;J,&nbsp;Q,&nbsp;Z
                    </div>
                    <div class="code">
                        Invalid&nbsp;input.&nbsp;More&nbsp;X's&nbsp;have&nbsp;been&nbsp;taken&nbsp;from&nbsp;the&nbsp;bag&nbsp;than&nbsp;possible.
                    </div>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">What's In The Bag? Modal</button>

                    <!-- What's In The Bag? Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 1024px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">What's In The Bag?</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <p><b>Input:</b></p>
                                                    <asp:Label ID="inputLabel" runat="server" Style="font-family: 'Century Gothic'">
                                                    <p>AEERTYOXMCNB_S</p>
                                                    </asp:Label>
                                                </div>
                                                <div class="col-sm-3">
                                                    <p><b>Challenge Input 1:</b></p>
                                                    <asp:Label ID="challengeInput1Label" runat="server" Style="font-family: 'Century Gothic'">
                                                    <p>PQAREIOURSTHGWIOAE_</p>
                                                    </asp:Label>
                                                </div>
                                                <div class="col-sm-3">
                                                    <p><b>Challenge Input 2:</b></p>
                                                    <asp:Label ID="challengeInput2Label" runat="server" Style="font-family: 'Century Gothic'">
                                                    <p>LQTOONOEFFJZT</p>
                                                    </asp:Label>
                                                </div>
                                                <div class="col-sm-3">
                                                    <p><b>Challenge Input 3:</b></p>
                                                    <asp:Label ID="challengeInput3Label" runat="server" Style="font-family: 'Century Gothic'">
                                                    <p>AXHDRUIOR_XHJZUQEE</p>
                                                    </asp:Label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <p><b>Output:</b></p>
                                                    <asp:Label ID="outputLabel" runat="server" Style="font-family: 'Century Gothic'"></asp:Label>
                                                </div>
                                                <div class="col-sm-3">
                                                    <p><b>Challenge Output 1:</b></p>
                                                    <asp:Label ID="challengeOutput1Label" runat="server" Style="font-family: 'Century Gothic'"></asp:Label>
                                                </div>
                                                <div class="col-sm-3">
                                                    <p><b>Challenge Output 2:</b></p>
                                                    <asp:Label ID="challengeOutput2Label" runat="server" Style="font-family: 'Century Gothic'"></asp:Label>
                                                </div>
                                                <div class="col-sm-3">
                                                    <p><b>Challenge Output 3:</b></p>
                                                    <asp:Label ID="challengeOutput3Label" runat="server" Style="font-family: 'Century Gothic'"></asp:Label>
                                                </div>
                                            </div>
                                            <br />
                                            <asp:Button runat="server" ID="WITBButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="WITBButtonClick" Style="font-family: 'Century Gothic'" />
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

                    <!-- End of Container for Mirror Encrption -->
                    <a name="sourceCodeAnchor"></a>
                    <br />
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">When the "Go" button is clicked to get the output</h4>
                    <div class="code">
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;WITBButtonClick(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;Input&nbsp;=&nbsp;<span class="String">"AEERTYOXMCNB_S"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;ChallengeInput1&nbsp;=&nbsp;<span class="String">"PQAREIOURSTHGWIOAE_"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;ChallengeInput2&nbsp;=&nbsp;<span class="String">"LQTOONOEFFJZT"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;ChallengeInput3&nbsp;=&nbsp;<span class="String">"AXHDRUIOR_XHJZUQEE"</span>;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;outputLabel.Text&nbsp;=&nbsp;GetOutput(Input);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;challengeOutput1Label.Text&nbsp;=&nbsp;GetOutput(ChallengeInput1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;challengeOutput2Label.Text&nbsp;=&nbsp;GetOutput(ChallengeInput2);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;challengeOutput3Label.Text&nbsp;=&nbsp;GetOutput(ChallengeInput3);<br />
                        }
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">GetOutput Function</h4>
                    <div class="code">
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;GetOutput(<span class="ReferenceType">string</span>&nbsp;Input)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Dictionary&lt;<span class="ReferenceType">string</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;tilesInPlay&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Dictionary&lt;<span class="ReferenceType">string</span>,&nbsp;<span class="ValueType">int</span>&gt;();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Dictionary&lt;<span class="ReferenceType">string</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;resultTiles&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Dictionary&lt;<span class="ReferenceType">string</span>,&nbsp;<span class="ValueType">int</span>&gt;();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Dictionary&lt;<span class="ReferenceType">string</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;tileDis&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Dictionary&lt;<span class="ReferenceType">string</span>,&nbsp;<span class="ValueType">int</span>&gt;()<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<span class="String">"A"</span>,&nbsp;9},&nbsp;{<span class="String">"B"</span>,&nbsp;2},&nbsp;{<span class="String">"C"</span>,&nbsp;2},&nbsp;{<span class="String">"D"</span>,&nbsp;4},&nbsp;{<span class="String">"E"</span>,&nbsp;12},&nbsp;{<span class="String">"F"</span>,&nbsp;2},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<span class="String">"G"</span>,&nbsp;3},&nbsp;{<span class="String">"H"</span>,&nbsp;2},&nbsp;{<span class="String">"I"</span>,&nbsp;9},&nbsp;{<span class="String">"J"</span>,&nbsp;1},&nbsp;{<span class="String">"K"</span>,&nbsp;1},&nbsp;&nbsp;{<span class="String">"L"</span>,&nbsp;4},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<span class="String">"M"</span>,&nbsp;2},&nbsp;{<span class="String">"N"</span>,&nbsp;6},&nbsp;{<span class="String">"O"</span>,&nbsp;8},&nbsp;{<span class="String">"P"</span>,&nbsp;2},&nbsp;{<span class="String">"Q"</span>,&nbsp;1},&nbsp;&nbsp;{<span class="String">"R"</span>,&nbsp;6},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<span class="String">"S"</span>,&nbsp;4},&nbsp;{<span class="String">"T"</span>,&nbsp;6},&nbsp;{<span class="String">"U"</span>,&nbsp;4},&nbsp;{<span class="String">"V"</span>,&nbsp;2},&nbsp;{<span class="String">"W"</span>,&nbsp;2},&nbsp;&nbsp;{<span class="String">"X"</span>,&nbsp;1},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<span class="String">"Y"</span>,&nbsp;2},&nbsp;{<span class="String">"Z"</span>,&nbsp;1},&nbsp;{<span class="String">"_"</span>,&nbsp;2},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Process&nbsp;input</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(<span class="ValueType">char</span>&nbsp;c&nbsp;<span class="Statement">in</span>&nbsp;Input)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(!tilesInPlay.ContainsKey(c.ToString()))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tilesInPlay.Add(c.ToString(),&nbsp;1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tilesInPlay[c.ToString()]&nbsp;+=&nbsp;1;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Go&nbsp;through&nbsp;dictionaries</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(KeyValuePair&lt;<span class="ReferenceType">string</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;entry&nbsp;<span class="Statement">in</span>&nbsp;tileDis)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(tilesInPlay.ContainsKey(entry.Key))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;resultTiles.Add(entry.Key,&nbsp;tileDis[entry.Key]&nbsp;-&nbsp;tilesInPlay[entry.Key]);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;resultTiles.Add(entry.Key,&nbsp;entry.Value);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Compile&nbsp;the&nbsp;result</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Dictionary&lt;<span class="ValueType">int</span>,&nbsp;<span class="ReferenceType">string</span>&gt;&nbsp;resultDic&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Dictionary&lt;<span class="ValueType">int</span>,&nbsp;<span class="ReferenceType">string</span>&gt;();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;toReturn&nbsp;=&nbsp;<span class="ReferenceType">string</span>.Empty;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(KeyValuePair&lt;<span class="ReferenceType">string</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;entry&nbsp;<span class="Statement">in</span>&nbsp;resultTiles.OrderByDescending(key&nbsp;=&gt;&nbsp;key.Value))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(entry.Value&nbsp;&lt;&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn&nbsp;+=&nbsp;<span class="String">"Invalid&nbsp;input.&nbsp;More&nbsp;"</span>&nbsp;+&nbsp;entry.Key&nbsp;+&nbsp;<span class="String">"'s"</span>&nbsp;+&nbsp;<span class="String">"&nbsp;have&nbsp;been&nbsp;taken&nbsp;from&nbsp;the&nbsp;bag&nbsp;than&nbsp;possible.\r\n"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(!resultDic.ContainsKey(entry.Value))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;resultDic.Add(entry.Value,&nbsp;entry.Key);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(resultDic.ContainsKey(entry.Value))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;resultDic[entry.Value]&nbsp;+=&nbsp;<span class="String">",&nbsp;"</span>&nbsp;+&nbsp;entry.Key;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;OutputStr&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(<span class="ReferenceType">string</span>.IsNullOrEmpty(toReturn))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(KeyValuePair&lt;<span class="ValueType">int</span>,&nbsp;<span class="ReferenceType">string</span>&gt;&nbsp;entry&nbsp;<span class="Statement">in</span>&nbsp;resultDic)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OutputStr.Append(entry.Key&nbsp;+&nbsp;<span class="String">":&nbsp;"</span>&nbsp;+&nbsp;entry.Value&nbsp;+&nbsp;<span class="String">"&lt;br&nbsp;/&gt;"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OutputStr.Append(toReturn&nbsp;+&nbsp;<span class="String">"&lt;br&nbsp;/&gt;"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Return&nbsp;the&nbsp;output</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;OutputStr.ToString();<br />
                        }
                    </div>
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