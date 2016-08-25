<%@ Page Title="Abundant And Deficient Numbers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ADNumbersPage.aspx.cs" Inherits="georgiweb.Challenges.ADNumbersPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6;">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Abundant and Deficient Numbers</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Easy
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <!-- Container for AD Numbers -->
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p style="">
                        In Number Theory, a Deficient or Deficient Number is a number n for which the sum of divisors sigma(n) < 2n, or, equivalently, the sum of proper divisors (or aliquot sum) s(n) < n. 
                        The value The value 2n - sigma(n) (or n - s(n)) is called the number's deficiency. In contrast, an Abundant number or excessive number is a number for which the sum of its proper divisors is greater than the number itself.<br />
                        <br />
                        As an example, consider the number 21. Its divisors are 1, 3, 7 and 21, and their sum is 32. Because 32 is less than 2 x 21, the number 21 is Deficient. Its Deficiency is 2 x 21 - 32 = 10.<br />
                        <br />
                        The integer 12 is the first Abundant number. Its divisors are 1, 2, 3, 4, 6, and 12, and their sum is 28. Because 28 is greater than 2 x 12, the number 12 is Abundant. It's Abundant by is 28 - 24 = 4.<br />
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">Abundant and Deficient Numbers Modal</button>

                    <!-- AD Numbers Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'; color: black;">Abundant and Deficient Numbers</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Label runat="server" Style="font-family: 'Century Gothic'">Number:</asp:Label>
                                            <asp:TextBox runat="server" ID="ADNumbersInput" CssClass="form-control" BackColor="LightGray"
                                                Width="150px" Style="font-family: 'Century Gothic'"></asp:TextBox>
                                            <br>
                                            <asp:Button runat="server" ID="ADNumbersButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="ADNumbersButtonClick" Style="font-family: 'Century Gothic'" />
                                            <asp:Label runat="server" ID="ADNumbersInvalidInput" Style="font-family: 'Century Gothic'"></asp:Label>
                                            <br />
                                            <hr runat="server" id="ABOVE_OUTPUT_HR" visible="false" />
                                            <asp:Label runat="server" ID="ADNumbersButtonLabel" Style="font-family: 'Century Gothic'"></asp:Label>
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
                    <!-- End of Container for AD Numbers -->
                    <a name="sourceCodeAnchor"></a>
                    <br />
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Main function to get the Abundant/Deficient/Perfect number</h4>
                    <div class="code">
                        <span class="InlineComment">//Get&nbsp;Abundant&nbsp;and&nbsp;Deficient&nbsp;Numbers&nbsp;function</span><br />
                        <span class="Modifier">public</span>&nbsp;<span class="ValueType">int</span>&nbsp;GetADNumbers(<span class="ValueType">int</span>&nbsp;N)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Store&nbsp;divisors&nbsp;of&nbsp;N</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;List&lt;<span class="ValueType">int</span>&gt;&nbsp;NDivisors&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;List&lt;<span class="ValueType">int</span>&gt;();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;Result&nbsp;=&nbsp;1;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Add&nbsp;the&nbsp;two&nbsp;always&nbsp;true&nbsp;divisors,&nbsp;1&nbsp;and&nbsp;the&nbsp;number&nbsp;N.&nbsp;Midway,&nbsp;add&nbsp;the&nbsp;other&nbsp;divisors</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;NDivisors.Add(1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(<span class="Linq">var</span>&nbsp;divisor&nbsp;<span class="Statement">in</span>&nbsp;GetDivisors(N))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NDivisors.Add(divisor);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;NDivisors.Add(N);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Calculate&nbsp;the&nbsp;sum&nbsp;of&nbsp;the&nbsp;divisors</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;DivisorsSum&nbsp;=&nbsp;0;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;NDivisors.Count();&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DivisorsSum&nbsp;+=&nbsp;NDivisors[i];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Set&nbsp;Result&nbsp;to&nbsp;-1,&nbsp;-2&nbsp;or&nbsp;the&nbsp;abundant&nbsp;by&nbsp;number&nbsp;respectively&nbsp;since&nbsp;the&nbsp;result&nbsp;from&nbsp;the&nbsp;calculation&nbsp;of&nbsp;the&nbsp;abundancy</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//can&nbsp;never&nbsp;be&nbsp;negative.&nbsp;Based&nbsp;on&nbsp;the&nbsp;result,&nbsp;display&nbsp;if&nbsp;the&nbsp;number&nbsp;is&nbsp;deficient,&nbsp;abundandt&nbsp;or&nbsp;perfect</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(DivisorsSum&nbsp;==&nbsp;(2&nbsp;*&nbsp;N))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Result&nbsp;=&nbsp;-1;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(DivisorsSum&nbsp;&lt;&nbsp;(2&nbsp;*&nbsp;N))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Result&nbsp;=&nbsp;-2;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(DivisorsSum&nbsp;&gt;&nbsp;(2&nbsp;*&nbsp;N))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Result&nbsp;=&nbsp;DivisorsSum&nbsp;-&nbsp;(2&nbsp;*&nbsp;N);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Return&nbsp;result</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Result;<br />
                        }
               
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Get the divisors function </h4>
                    <div class="code">
                        <span class="InlineComment">//Get&nbsp;divisors&nbsp;function</span><br />
                        <span class="Modifier">protected</span>&nbsp;IEnumerable&lt;<span class="ValueType">int</span>&gt;&nbsp;GetDivisors(<span class="ValueType">int</span>&nbsp;N)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="Linq">from</span>&nbsp;Divisor&nbsp;<span class="Statement">in</span>&nbsp;Enumerable.Range(2,&nbsp;N&nbsp;/&nbsp;2)&nbsp;<span class="Linq">where</span>&nbsp;(N&nbsp;%&nbsp;Divisor&nbsp;==&nbsp;0)&nbsp;<span class="Linq">select</span>&nbsp;Divisor;<br />
                        }
               
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">The following displays the results as shown in the Modal </h4>
                    <div class="code">
                        <span class="ValueType">int</span>&nbsp;Result&nbsp;=&nbsp;GetADNumbers(ParsedNumber);<br />
                        <br />
                        <span class="Statement">if</span>&nbsp;(Result&nbsp;==&nbsp;-1)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Label.Text&nbsp;+=&nbsp;ParsedNumber&nbsp;+&nbsp;<span class="String">"&nbsp;is&nbsp;Perfect!"</span>&nbsp;+&nbsp;<span class="String">"\r\n"</span>;<br />
                        <span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(Result&nbsp;==&nbsp;-2)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Label.Text&nbsp;+=&nbsp;ParsedNumber&nbsp;+&nbsp;<span class="String">"&nbsp;is&nbsp;Deficient!"</span>&nbsp;+&nbsp;<span class="String">"\r\n"</span>;<br />
                        <span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Label.Text&nbsp;+=&nbsp;ParsedNumber&nbsp;+&nbsp;<span class="String">"&nbsp;is&nbsp;Abundant&nbsp;by&nbsp;"</span>&nbsp;+&nbsp;Result&nbsp;+&nbsp;<span class="String">"!"</span>&nbsp;+&nbsp;<span class="String">"\r\n"</span>;<br />
                        <br />
                        Label.Text&nbsp;=&nbsp;Label.Text.Replace(<span class="String">"\r\n"</span>,&nbsp;<span class="String">"&lt;br/&gt;"</span>);
                   
                    </div>
                </div>
        </ContentTemplate>
        <Triggers>
        </Triggers>
    </asp:UpdatePanel>


    <script type="text/javascript">
        
    </script>
</asp:Content>
