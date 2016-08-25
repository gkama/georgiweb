<%@ Page Title="De Bruijn Sequence" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeBruijnSequence.aspx.cs" Inherits="georgiweb.Challenges.DeBruijnSequence" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">De Bruijn Sequence</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Intermediate
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <!-- De Bruijn Sequence -->
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p>
                        In combinatorial mathematics, a k-ary De Bruijn sequence B(k, n) of order n, named after the Dutch mathematician Nicolaas Govert de Bruijn, is a cyclic sequence of a given alphabet A with size k for which every possible subsequence of length n in A appears as a sequence of consecutive characters exactly once. At the terminus, you "wrap" the end of the sequence around to the beginning to get any remaining subsequences.<br />
                        Each B(k, n) has length kn.<br />
                        A De Bruijn sequence B(2, 3) (with alphabet 0 and 1) is therefore:<br />
                    </p>
                    <div class="code">
                        00010111
                    </div>
                    <p>
                        Similarly, B("abcd", 2) (with alphabet "a", "b", "c", and "d") is therefore:<br />
                    </p>
                    <div class="code">
                        aabacadbbcbdccdd
                    </div>
                    <p>
                        For those sequences of length, every trigram (for the former case) or bigram (for the latter case) is represented in the result.<br />
                        De Bruijn sequences have various applications, including in PIN pad testing and rotor angle calculation.<br />
                        <br />
                        <b>Input Description:</b><br />
                        You'll be given two inputs k and n, the first is an integer or a a string of unique characters, the second is the length of the subsequences to ensure are encoded.<br />
                        <br />
                        <b>Output Description:</b><br />
                        Your program should emit a string that encodes the De Bruijn sequence.<br />
                    </p>
                    <div class="code">
                        5&nbsp;3<br />
                        2&nbsp;4<br />
                        abcde&nbsp;4
                    </div>
                    <p>
                        The outputs expected for those (in order) are:<br />
                    </p>
                    <div class="code">
                        00010020030040110120130140210220230240310320330340410420430441112113114122123124132133134142143144222322423323424324433343444<br />
                        0000100110101111<br />
                        aaaabaaacaaadaaaeaabbaabcaabdaabeaacbaaccaacdaaceaadbaadcaaddaadeaaebaaecaaedaaeeababacabadabaeabbbabbcabbdabbeabcbabcca...
                    </div>
                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">De Bruijn Sequence Modal</button>

                    <!-- De Bruijn Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 800px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">De Bruijn Sequence</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <p><b>Input:</b></p>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <asp:Label runat="server">k:</asp:Label>
                                                    <asp:TextBox ID="inputKTxtBox" runat="server" CssClass="form-control" Style="font-family: 'Century Gothic'">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="col-sm-4">
                                                    <asp:Label runat="server">n:</asp:Label>
                                                    <asp:TextBox ID="inputNTxtBox" runat="server" CssClass="form-control" Style="font-family: 'Century Gothic'">
                                                    </asp:TextBox>
                                                </div>
                                                <div class="col-sm-4">
                                                </div>

                                            </div>
                                            <br />
                                            <p><b>Output:</b></p>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <asp:TextBox ID="outputTxtBox" CssClass="form-control" runat="server" Style="resize:none; height: 200px; font-family: 'Century Gothic'; font-size: 12px;"
                                                        TextMode="MultiLine" ReadOnly="true">
                                                    </asp:TextBox>
                                                </div>

                                            </div>
                                            <br />
                                            <asp:Button runat="server" ID="DBSButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="DBSButtonClick" Style="font-family: 'Century Gothic'" />
                                            <asp:Button runat="server" ID="DBSClearButton" Text="Clear Output!" CssClass="fancy-button" Width="110px"
                                                OnClick="DBSClearButtonClick" Style="font-family: 'Century Gothic'" Visible="false" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="fancy-button" data-dismiss="modal" style="font-family: 'Century Gothic'">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End of Container for De Bruijn -->
                    <hr />
                    <a name="sourceCodeAnchor"></a>
                    <br />
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">When the "Go" button is clicked to get the output</h4>
                    <div class="code">
                        <span class="InlineComment">//On&nbsp;'Go'&nbsp;Click</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;DBSButtonClick(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;k;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;n;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">bool</span>&nbsp;isKNumber&nbsp;=&nbsp;<span class="ValueType">int</span>.TryParse(inputKTxtBox.Text.ToString().Trim(),&nbsp;<span class="MethodParameter">out</span>&nbsp;k);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">bool</span>&nbsp;isNNumber&nbsp;=&nbsp;<span class="ValueType">int</span>.TryParse(inputNTxtBox.Text.ToString().Trim(),&nbsp;<span class="MethodParameter">out</span>&nbsp;n);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(isNNumber&nbsp;==&nbsp;<span class="Keyword">false</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Visible&nbsp;=&nbsp;<span class="Keyword">true</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Text&nbsp;=&nbsp;<span class="String">"Invalid&nbsp;Input!/r/n"</span>&nbsp;+&nbsp;<span class="String">"n&nbsp;must&nbsp;be&nbsp;numeric!"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Visible&nbsp;=&nbsp;<span class="Keyword">true</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(isKNumber)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Text&nbsp;+=&nbsp;<span class="String">"B("</span>+&nbsp;k&nbsp;+&nbsp;<span class="String">",&nbsp;"</span>&nbsp;+&nbsp;inputNTxtBox.Text.ToString().Trim()&nbsp;+&nbsp;<span class="String">"):&nbsp;"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;GetDeBruijnSequence(k,&nbsp;<span class="ValueType">int</span>.Parse(inputNTxtBox.Text.ToString().Trim()))&nbsp;+&nbsp;Environment.NewLine;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outputTxtBox.Text&nbsp;+=&nbsp;<span class="String">"B("</span>&nbsp;+&nbsp;inputKTxtBox.Text.ToString().Trim()&nbsp;+&nbsp;<span class="String">",&nbsp;"</span>&nbsp;+&nbsp;inputNTxtBox.Text.ToString().Trim()&nbsp;+&nbsp;<span class="String">"):&nbsp;"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+&nbsp;GetDeBruijnSequence(inputKTxtBox.Text.ToString().Trim(),&nbsp;<span class="ValueType">int</span>.Parse(inputNTxtBox.Text.ToString().Trim()))&nbsp;+&nbsp;Environment.NewLine;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        }
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">GetDeBruijnSequence with double int inputs</h4>
                    <div class="code">
                        <span class="InlineComment">//De&nbsp;Bruijn&nbsp;Sequence</span><br />
                        <span class="ReferenceType">string</span>&nbsp;GetDeBruijnSequence(<span class="ValueType">int</span>&nbsp;k,&nbsp;<span class="ValueType">int</span>&nbsp;n)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Call&nbsp;function</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Linq">var</span>&nbsp;seq&nbsp;=&nbsp;GetDeBruijnSequence(String.Concat(Enumerable.Range(0,&nbsp;k)),&nbsp;n);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;toReturn&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>(<span class="ValueType">int</span>&nbsp;i&nbsp;<span class="Statement">in</span>&nbsp;(seq.Select(s&nbsp;=&gt;&nbsp;(<span class="ValueType">int</span>)s&nbsp;-&nbsp;48).ToList()))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(i.ToString());<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Return&nbsp;built&nbsp;output&nbsp;string</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;toReturn.ToString();<br />
                        }
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">GetDeBruijnSequence with string and int inputs</h4>
                    <div class="code">
                        <span class="InlineComment">//De&nbsp;Bruijn&nbsp;Sequence&nbsp;Calculator&nbsp;Function</span><br />
                        <span class="ReferenceType">string</span>&nbsp;GetDeBruijnSequence(<span class="ReferenceType">string</span>&nbsp;s,&nbsp;<span class="ValueType">int</span>&nbsp;n)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Linq">var</span>&nbsp;k&nbsp;=&nbsp;s.Length;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Linq">var</span>&nbsp;Sequence&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;List&lt;<span class="ValueType">char</span>&gt;();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Linq">var</span>&nbsp;TempSequence&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;List&lt;<span class="ValueType">int</span>&gt;()&nbsp;{&nbsp;-1&nbsp;};<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">while</span>&nbsp;(TempSequence.Count&nbsp;&gt;&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TempSequence[TempSequence.Count&nbsp;-&nbsp;1]++;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(n&nbsp;%&nbsp;TempSequence.Count&nbsp;==&nbsp;0)&nbsp;TempSequence.ForEach(x&nbsp;=&gt;&nbsp;Sequence.Add(s[x]));<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;c&nbsp;=&nbsp;TempSequence.Count;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">while</span>&nbsp;(TempSequence.Count&nbsp;&lt;&nbsp;n)&nbsp;TempSequence.Add(TempSequence[TempSequence.Count&nbsp;-&nbsp;c]);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">while</span>&nbsp;(TempSequence.Count&nbsp;&gt;&nbsp;0&nbsp;&amp;&amp;&nbsp;TempSequence.Last()&nbsp;==&nbsp;k&nbsp;-&nbsp;1)&nbsp;TempSequence.RemoveAt(TempSequence.Count&nbsp;-&nbsp;1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;toReturn&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(<span class="ValueType">char</span>&nbsp;c&nbsp;<span class="Statement">in</span>&nbsp;Sequence)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(c.ToString());<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Return&nbsp;built&nbsp;output&nbsp;string</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;toReturn.ToString();<br />
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