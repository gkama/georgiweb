<%@ Page Title="Simplifying Fractions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SimplifyingFractions.aspx.cs" Inherits="georgiweb.Challenges.SimplifyingFractions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Simplifying Fractions</h3>
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
                        A fraction exists of a numerator (top part) and a denominator (bottom part) as you probably all know.<br />
                        Simplifying (or reducing) fractions means to make the fraction as simple as possible. Meaning that the denominator is a close 
                        to 1 as possible. This can be done by dividing the numerator and denominator by their greatest common divisor.<br />
                        <br />
                        You will be given a list with 2 numbers seperator by a space. The first is the numerator, the second the denominator<br />
                    </p>
                    <div class="code">
                        4&nbsp;8<br />
                        1536&nbsp;78360<br />
                        51478&nbsp;5536<br />
                        46410&nbsp;119340<br />
                        7673&nbsp;4729<br />
                        4096&nbsp;1024
                    </div>
                    <p>
                        <br />
                        The most simplified numbers<br />
                    </p>
                    <div class="code">
                        1&nbsp;2<br />
                        64&nbsp;3265<br />
                        25739&nbsp;2768<br />
                        7&nbsp;18<br />
                        7673&nbsp;4729<br />
                        4&nbsp;1
                    </div>
                    <p>
                        <br />
                        Most languages have by default this kind of functionality, but if you want to challenge yourself, you should go back to the basic theory and implement it yourself.<br />
                        <br />
                        <b>Bonus</b><br />
                        Instead of using numbers, we could also use letters.<br />
                        For instance:<br />
                    </p>
                    <div class="code">
                        ab&nbsp;&nbsp;&nbsp;a<br />
                        __&nbsp;=&nbsp;_<br />
                        cb&nbsp;&nbsp;&nbsp;c
                    </div>
                    <div class="code">
                        a&nbsp;&nbsp;&nbsp;&nbsp;1<br />
                        __&nbsp;=&nbsp;_<br />
                        a&nbsp;&nbsp;&nbsp;&nbsp;1<br />
                        <br />
                        aa&nbsp;&nbsp;&nbsp;a<br />
                        __&nbsp;=&nbsp;_<br />
                        a&nbsp;&nbsp;&nbsp;&nbsp;1
                    </div>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">Simplifying Fractions Modal</button>

                    <!-- Getting A Degree Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 800px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">Simplifying Fractions</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <p><b>Numerator (top part):</b></p>
                                                    <asp:TextBox runat="server" ID="numeratorInputTxtBox" CssClass="form-control"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-6">
                                                    <p><b>Denominator (bottom part):</b></p>
                                                    <asp:TextBox runat="server" ID="denominatorInputTxtBox" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <p><b>Output:</b></p>
                                                    <asp:Label runat="server" ID="outputLabel" Text="...">
                                                    </asp:Label>
                                                </div>
                                            </div>
                                            <br />
                                            <asp:Button runat="server" ID="SFButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="SFButtonClick" Style="font-family: 'Century Gothic'" />
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
                        <span class="InlineComment">//When&nbsp;'Go'&nbsp;button&nbsp;is&nbsp;clicked&nbsp;/&nbsp;main&nbsp;function</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;SFButtonClick(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Regext&nbsp;check&nbsp;input</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Regex&nbsp;numeric09&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Regex(@<span class="String">"^[0-9]+$"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Regex&nbsp;alphaAZ&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Regex(@<span class="String">"^[A-Za-z]+$"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Match&nbsp;matchNumberic09n&nbsp;=&nbsp;numeric09.Match(numeratorInputTxtBox.Text.ToString().Trim());<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Match&nbsp;matchalphaAZn&nbsp;=&nbsp;alphaAZ.Match(numeratorInputTxtBox.Text.ToString().Trim());<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Match&nbsp;matchNumberic09d&nbsp;=&nbsp;numeric09.Match(denominatorInputTxtBox.Text.ToString().Trim());<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Match&nbsp;matchalphaAZd&nbsp;=&nbsp;alphaAZ.Match(denominatorInputTxtBox.Text.ToString().Trim());<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//When&nbsp;regex&nbsp;matches</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(matchNumberic09n.Success&nbsp;&amp;&amp;&nbsp;matchNumberic09d.Success)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;numerator;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Int32.TryParse(numeratorInputTxtBox.Text.ToString().Trim(),&nbsp;<span class="MethodParameter">out</span>&nbsp;numerator);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;denominator;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Int32.TryParse(denominatorInputTxtBox.Text.ToString().Trim(),&nbsp;<span class="MethodParameter">out</span>&nbsp;denominator);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;GCD&nbsp;=&nbsp;numGCD(numerator,&nbsp;denominator);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outputLabel.Text&nbsp;=&nbsp;(numerator&nbsp;/&nbsp;GCD).ToString()&nbsp;+&nbsp;<span class="String">"&nbsp;/&nbsp;"</span>&nbsp;+&nbsp;(denominator&nbsp;/&nbsp;GCD).ToString();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(matchalphaAZn.Success&nbsp;&amp;&amp;&nbsp;matchalphaAZd.Success)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outputLabel.Text&nbsp;=&nbsp;lettersFraction(numeratorInputTxtBox.Text.ToString().Trim(),&nbsp;denominatorInputTxtBox.Text.ToString().Trim());<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;outputLabel.Text&nbsp;=&nbsp;<span class="String">"Incorrect&nbsp;Input!&nbsp;Please&nbsp;try&nbsp;again!"</span>;<br />
                        }<br />
                        <br />
                        <span class="InlineComment">//Euclid's&nbsp;algorithm&nbsp;for&nbsp;GCD&nbsp;-&nbsp;greatest&nbsp;common&nbsp;divisor</span><br />
                        <span class="Modifier">private</span>&nbsp;<span class="ValueType">int</span>&nbsp;numGCD(<span class="ValueType">int</span>&nbsp;num,&nbsp;<span class="ValueType">int</span>&nbsp;den)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">while</span>&nbsp;(num&nbsp;!=&nbsp;0&nbsp;&amp;&amp;&nbsp;den&nbsp;!=&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(num&nbsp;&gt;&nbsp;den)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;num&nbsp;%=&nbsp;den;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;den&nbsp;%=&nbsp;num;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(num&nbsp;==&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;den;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;num;<br />
                        }<br />
                        <br />
                        <span class="InlineComment">//GCD&nbsp;for&nbsp;letters</span><br />
                        <span class="Modifier">static</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;lettersFraction(<span class="ReferenceType">string</span>&nbsp;num,&nbsp;<span class="ReferenceType">string</span>&nbsp;den)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;toReturn&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;numLocal&nbsp;=&nbsp;num.Trim().ToLower();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;denLocal&nbsp;=&nbsp;den.Trim().ToLower();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(numLocal&nbsp;==&nbsp;denLocal)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;(<span class="String">"1&nbsp;/&nbsp;1"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(numLocal&nbsp;==&nbsp;<span class="String">""</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;(<span class="String">"1&nbsp;/&nbsp;"</span>&nbsp;+&nbsp;denLocal);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(denLocal&nbsp;==&nbsp;<span class="String">""</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;(numLocal&nbsp;+&nbsp;<span class="String">"&nbsp;/&nbsp;1"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//When&nbsp;numerator&nbsp;is&nbsp;just&nbsp;of&nbsp;size&nbsp;1</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(numLocal.Length&nbsp;==&nbsp;1)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(<span class="ValueType">char</span>&nbsp;c&nbsp;<span class="Statement">in</span>&nbsp;denLocal)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(c&nbsp;==&nbsp;numLocal[0])<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;denLocal&nbsp;=&nbsp;denLocal.Remove(denLocal.IndexOf(c),&nbsp;1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;numLocal&nbsp;=&nbsp;numLocal.Remove(numLocal.IndexOf(c),&nbsp;1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">break</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(denLocal&nbsp;==&nbsp;<span class="String">""</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;denLocal&nbsp;=&nbsp;<span class="String">"1"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(numLocal&nbsp;==&nbsp;<span class="String">""</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;numLocal&nbsp;=&nbsp;<span class="String">"1"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(numLocal&nbsp;+&nbsp;<span class="String">"&nbsp;/&nbsp;"</span>&nbsp;+&nbsp;denLocal);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(denLocal.Length&nbsp;==&nbsp;1)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(<span class="ValueType">char</span>&nbsp;c&nbsp;<span class="Statement">in</span>&nbsp;numLocal)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(c&nbsp;==&nbsp;denLocal[0])<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;numLocal&nbsp;=&nbsp;numLocal.Remove(numLocal.IndexOf(c),&nbsp;1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;denLocal&nbsp;=&nbsp;denLocal.Remove(denLocal.IndexOf(c),&nbsp;1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">break</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(denLocal&nbsp;==&nbsp;<span class="String">""</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;denLocal&nbsp;=&nbsp;<span class="String">"1"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(numLocal&nbsp;==&nbsp;<span class="String">""</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;numLocal&nbsp;=&nbsp;<span class="String">"1"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(numLocal&nbsp;+&nbsp;<span class="String">"&nbsp;/&nbsp;"</span>&nbsp;+&nbsp;denLocal);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//More&nbsp;than&nbsp;1</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;denD&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;denN&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;denN.Append(numLocal);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;denD.Append(denLocal);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;posN&nbsp;=&nbsp;0;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;posD&nbsp;=&nbsp;0;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;denN.Length;&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;j&nbsp;=&nbsp;0;&nbsp;j&nbsp;&lt;&nbsp;denD.Length;&nbsp;j++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(denN[i]&nbsp;==&nbsp;denD[j])<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;denN.Remove(posN,&nbsp;1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;denD.Remove(posD,&nbsp;1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;lettersFraction(denN.ToString(),&nbsp;denD.ToString());<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;posD++;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;posD&nbsp;=&nbsp;0;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;posN++;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(denN.ToString()&nbsp;==&nbsp;<span class="String">""</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;denN.Append(<span class="String">"1"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(denD.ToString()&nbsp;==&nbsp;<span class="String">""</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;denD.Append(<span class="String">"1"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(denN.ToString()&nbsp;+&nbsp;<span class="String">"&nbsp;/&nbsp;"</span>&nbsp;+&nbsp;denD.ToString());<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;toReturn.ToString();<br />
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