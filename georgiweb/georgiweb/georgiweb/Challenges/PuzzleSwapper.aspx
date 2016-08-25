<%@ Page Title="Puzzle Swapper" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PuzzleSwapper.aspx.cs" Inherits="georgiweb.Challenges.PuzzleSwapper" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Puzzle Swapper</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Hard
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <!-- Getting A Degree Sequence -->
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p>
                        You have a 4x4 grid containing pieces numbered 1 to 16, of which you choose the order. 
                        To move the pieces you swap the positions of 2 pieces (this is not a slider puzzle - there's no open space). 
                        Tiles must be swapped with adjacent tiles. The goal to to solve the puzzle in as few moves as possible, showing all steps. 
                        The steps are which 2 pieces swap positions for each move. Pieces could be referred to by their position or their number.<br />
                        <br />
                        <b>Input:</b><br />

                    </p>
                    <div class="code">
                        4&nbsp;6&nbsp;2&nbsp;14<br />
                        15&nbsp;8&nbsp;13&nbsp;1<br />
                        10&nbsp;5&nbsp;9&nbsp;12<br />
                        7&nbsp;11&nbsp;16&nbsp;3
                    </div>
                    <p>
                        <b>The solved puzzle is:</b><br />
                    </p>
                    <div class="code">
                        1&nbsp;2&nbsp;3&nbsp;4<br />
                        5&nbsp;6&nbsp;7&nbsp;8<br />
                        9&nbsp;10&nbsp;11&nbsp;12<br />
                        13&nbsp;14&nbsp;15&nbsp;16
                    </div>
                    <p>
                        It may be too hard to guarantee a solution in the fewest possible moves. You may instead use a strategy that is quick enough, if you want.<br />
                    </p>


                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">Puzzle Swapper Modal</button>

                    <!-- Getting A Degree Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 800px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">Puzzle Swapper</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <p><b>Input:</b></p>
                                                    <asp:TextBox runat="server" ID="InputTxtBox" CssClass="form-control"
                                                        TextMode="MultiLine" Height="110px" Width="100%" ReadOnly="true" Style="resize: none">

                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <p><b>Output:</b></p>
                                                    <asp:TextBox runat="server" ID="OutputTxtBox" CssClass="form-control"
                                                        TextMode="MultiLine" Height="200px" Width="100%" ReadOnly="true" Style="resize: none"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <asp:Button runat="server" ID="PSButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="PSButtonClick" Style="font-family: 'Century Gothic'" />
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
                        &nbsp;&nbsp;<span class="Modifier">private</span>&nbsp;List&lt;<span class="ValueType">int</span>&gt;&nbsp;puzzleToSolve&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;List&lt;<span class="ValueType">int</span>&gt;()&nbsp;<br />
                        &nbsp;&nbsp;{&nbsp;4,&nbsp;6,&nbsp;2,&nbsp;14,&nbsp;15,&nbsp;8,&nbsp;13,&nbsp;1,&nbsp;10,&nbsp;5,&nbsp;9,&nbsp;12,&nbsp;7,&nbsp;11,&nbsp;16,&nbsp;3&nbsp;};<br />
                        <br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;Page_Load(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Display&nbsp;input&nbsp;puzzle</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;InputTxtBox.Text&nbsp;=&nbsp;printPuzzle(puzzleToSolve);<br />
                        }<br />
                        <br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;PSButtonClick(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;PuzzleSwapper&nbsp;swapper&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;PuzzleSwapper(puzzleToSolve);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;OutputTxtBox.Text&nbsp;+=&nbsp;swapper.GetSolution();<br />
                        }<br />
                        <br />
                        <br />
                        <span class="Modifier">private</span>&nbsp;<span class="Modifier">readonly</span>&nbsp;List&lt;<span class="ValueType">int</span>&gt;&nbsp;_layout;<br />
                        <span class="Modifier">private</span>&nbsp;<span class="Modifier">readonly</span>&nbsp;<span class="ValueType">int</span>&nbsp;_size;<br />
                        <br />
                        <span class="Modifier">public</span>&nbsp;PuzzleSwapper()&nbsp;{&nbsp;}<br />
                        <br />
                        <span class="Modifier">public</span>&nbsp;PuzzleSwapper(List&lt;<span class="ValueType">int</span>&gt;&nbsp;layout)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;_layout&nbsp;=&nbsp;layout;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;_size&nbsp;=&nbsp;(<span class="ValueType">int</span>)Math.Sqrt(layout.Count);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>(_size&nbsp;*&nbsp;_size&nbsp;!=&nbsp;layout.Count)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">throw</span>&nbsp;<span class="Keyword">new</span>&nbsp;ArgumentException(<span class="String">"Must&nbsp;be&nbsp;a&nbsp;squared&nbsp;layout&nbsp;(length&nbsp;was&nbsp;"</span>&nbsp;+&nbsp;layout.Count&nbsp;+&nbsp;<span class="String">")"</span>);<br />
                        }<br />
                        <br />
                        <span class="Modifier">public</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;GetSolution()<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;solution&nbsp;=&nbsp;<span class="String">""</span>;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;_layout.Count;&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;targetY&nbsp;=&nbsp;i/_size;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;targetX&nbsp;=&nbsp;i&nbsp;-&nbsp;targetY&nbsp;*&nbsp;_size;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;curIndex&nbsp;=&nbsp;_layout.FindIndex(x&nbsp;=&gt;&nbsp;x&nbsp;==&nbsp;i&nbsp;+&nbsp;1);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;curY&nbsp;=&nbsp;curIndex/_size;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;curX&nbsp;=&nbsp;curIndex&nbsp;-&nbsp;curY&nbsp;*&nbsp;_size;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//First&nbsp;X</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">while</span>&nbsp;(curX&nbsp;!=&nbsp;targetX)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;delta&nbsp;=&nbsp;targetX&nbsp;-&nbsp;curX;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;toMove&nbsp;=&nbsp;Math.Min(Math.Max(-1,&nbsp;delta),&nbsp;1);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SwapValues(curX,&nbsp;curY,&nbsp;curX&nbsp;+&nbsp;toMove,&nbsp;curY);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;solution&nbsp;+=&nbsp;(<span class="String">"Swap&nbsp;("</span>&nbsp;+&nbsp;curX&nbsp;+&nbsp;<span class="String">",&nbsp;"</span>&nbsp;+&nbsp;curY&nbsp;+&nbsp;<span class="String">")&nbsp;and&nbsp;("</span>&nbsp;+&nbsp;curX&nbsp;+&nbsp;toMove&nbsp;+&nbsp;<span class="String">",&nbsp;"</span>&nbsp;+&nbsp;curY&nbsp;+&nbsp;<span class="String">")\n"</span>).ToString();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curX&nbsp;+=&nbsp;toMove;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Then&nbsp;Y</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">while</span>&nbsp;(curY&nbsp;!=&nbsp;targetY)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;delta&nbsp;=&nbsp;targetY&nbsp;-&nbsp;curY;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;toMove&nbsp;=&nbsp;Math.Min(Math.Max(-1,&nbsp;delta),&nbsp;1);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SwapValues(curX,&nbsp;curY,&nbsp;curX,&nbsp;curY&nbsp;+&nbsp;toMove);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;solution&nbsp;+=&nbsp;(<span class="String">"Swap&nbsp;("</span>&nbsp;+&nbsp;curX&nbsp;+&nbsp;<span class="String">",&nbsp;"</span>&nbsp;+&nbsp;curY&nbsp;+&nbsp;&nbsp;<span class="String">")&nbsp;and&nbsp;("</span>&nbsp;+&nbsp;curX&nbsp;+&nbsp;<span class="String">",&nbsp;"</span>&nbsp;+&nbsp;curY&nbsp;+&nbsp;toMove&nbsp;+&nbsp;<span class="String">")\n"</span>).ToString();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;curY&nbsp;+=&nbsp;toMove;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;solution;<br />
                        }<br />
                        <br />
                        <span class="Modifier">private</span>&nbsp;<span class="ValueType">int</span>&nbsp;GetValue(<span class="ValueType">int</span>&nbsp;x,&nbsp;<span class="ValueType">int</span>&nbsp;y)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;_layout[y&nbsp;*&nbsp;_size&nbsp;+&nbsp;x];<br />
                        }<br />
                        <br />
                        <span class="Modifier">private</span>&nbsp;<span class="ValueType">void</span>&nbsp;SetValue(<span class="ValueType">int</span>&nbsp;x,&nbsp;<span class="ValueType">int</span>&nbsp;y,&nbsp;<span class="ValueType">int</span>&nbsp;value)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;_layout[y&nbsp;*&nbsp;_size&nbsp;+&nbsp;x]&nbsp;=&nbsp;value;<br />
                        }<br />
                        <br />
                        <span class="Modifier">private</span>&nbsp;<span class="ValueType">void</span>&nbsp;SwapValues(<span class="ValueType">int</span>&nbsp;x1,&nbsp;<span class="ValueType">int</span>&nbsp;y1,&nbsp;<span class="ValueType">int</span>&nbsp;x2,&nbsp;<span class="ValueType">int</span>&nbsp;y2)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;temp&nbsp;=&nbsp;GetValue(x1,&nbsp;y1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;SetValue(x1,&nbsp;y1,&nbsp;GetValue(x2,&nbsp;y2));<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;SetValue(x2,&nbsp;y2,&nbsp;temp);<br />
                        }<br />
                        <br />
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;printPuzzle(List&lt;<span class="ValueType">int</span>&gt;&nbsp;puzzle)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;inputString&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;1;&nbsp;i&nbsp;&lt;&nbsp;puzzle.Count()&nbsp;+&nbsp;1;&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;inputString.Append(puzzle[i&nbsp;-&nbsp;1].ToString()&nbsp;+&nbsp;<span class="String">",&nbsp;"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(i&nbsp;%&nbsp;4&nbsp;==&nbsp;0&nbsp;&amp;&amp;&nbsp;i&nbsp;&lt;=&nbsp;16)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;inputString.Append(<span class="String">"\r\n"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;inputString.Remove(inputString.Length&nbsp;-&nbsp;4,&nbsp;4);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;inputString.ToString();<br />
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