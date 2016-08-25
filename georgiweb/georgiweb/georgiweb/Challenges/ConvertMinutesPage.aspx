<%@ Page Title="ConvertMinutesPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="ConvertMinutesPage.aspx.cs" Inherits="georgiweb.Challenges.ConvertMinutesPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6;">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Convert Minutes</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Easy
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <!-- Container for Convert Minutes -->
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p style="color: black;">
                        Here's a surprisingly tricky challenge I ran into today for those wanting some practice.<br />
                        <br />
                        The objective is to create a function that accepts minutes and returns a formatted, easy to read time string that is in 'years, months, days, hours, minutes' format.<br />
                        <br />
                        To give you some context, I was working on a report that calculated the total time required to complete a goal based on an array of tasks each with their own time expressed in minutes.<br />
                        <br />
                        Some of these goals took over a year to complete. For readability purposes, only the two uppermost of yr/mo/day/hr/min should be shown (and 0 values must be removed). The only exception to this is if the goal takes longer than a year (A whole month is a lot of time to round off); in which case year, month, and day must be used.<br />
                        <br />
                        A few examples of what I mean:<br />
                        120 mins = 2 hours (no minutes shown)<br />
                        121 mins = 2 hours, 1 minute (Note that minute is not plural)<br />
                        1501 mins = 1 day, 1 hour (note that minutes are not shown, we rounded down)<br />
                        1,672,804 mins = 3 years, 2 months, 5 days<br />
                        527,390 mins = 1 year, 1 day (note month was skipped because it's a 0 value)<br />
                    </p>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModal">Convert Minutes Modal</button>

                    <!-- Convert Minutes Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'; color: black;">Convert Minutes</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Label runat="server" Style="font-family: 'Century Gothic'">Minutes:</asp:Label>
                                            <asp:TextBox runat="server" ID="InputConvertingMinutes" CssClass="form-control" BackColor="LightGray"
                                                Width="150px" Style="font-family: 'Century Gothic'"></asp:TextBox>
                                            <br>
                                            <asp:Button runat="server" ID="ConvertingMinutesButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="ConvertingMinutesButtonClick" Style="font-family: 'Century Gothic'" />
                                            <asp:Label runat="server" ID="ConvertingMinutesInvalidInputLabel" Style="font-family: 'Century Gothic'"></asp:Label>
                                            <br />
                                            <hr runat="server" id="ABOVE_OUTPUT_HR" visible="false" />
                                            <asp:Label runat="server" ID="ConvertingMinutesResultLabel" Style="font-family: 'Century Gothic'"></asp:Label>
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
                    <a name="myModalAnchor"></a>
                    <hr />

                    <!-- End of Container for Convert Minutes -->
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Main function to convert minutes</h4>
                    <div class="code">
                        <span class="InlineComment">//&nbsp;Converting&nbsp;Minutes&nbsp;to&nbsp;readable&nbsp;string</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;ConvertingMinutes(<span class="ValueType">int</span>&nbsp;Minutes)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Error&nbsp;check</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(Minutes&nbsp;&lt;&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="String">"Minutes&nbsp;is&nbsp;negative!"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(Minutes&nbsp;==&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="String">"Minutes&nbsp;is&nbsp;0!"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Map&nbsp;time&nbsp;units&nbsp;to&nbsp;the&nbsp;number&nbsp;of&nbsp;minutes&nbsp;they&nbsp;contain</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//(i.e.&nbsp;60&nbsp;minutes&nbsp;per&nbsp;hour)</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SortedDictionary&lt;String,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;timeUnits&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;&nbsp;SortedDictionary&lt;String,&nbsp;<span class="ValueType">int</span>&gt;();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;timeUnits.Add(<span class="String">"minute"</span>,&nbsp;1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;timeUnits.Add(<span class="String">"hour"</span>,&nbsp;60);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;timeUnits.Add(<span class="String">"day"</span>,&nbsp;60&nbsp;*&nbsp;24);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;timeUnits.Add(<span class="String">"month"</span>,&nbsp;60&nbsp;*&nbsp;24&nbsp;*&nbsp;30);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;timeUnits.Add(<span class="String">"year"</span>,&nbsp;60&nbsp;*&nbsp;24&nbsp;*&nbsp;365);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Result&nbsp;from&nbsp;conversion</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SortedDictionary&lt;String,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;Results&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;SortedDictionary&lt;String,&nbsp;<span class="ValueType">int</span>&gt;();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Sort&nbsp;the&nbsp;time&nbsp;in&nbsp;descending&nbsp;order</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>[]&nbsp;Names&nbsp;=&nbsp;{&nbsp;<span class="String">"year"</span>,&nbsp;<span class="String">"month"</span>,&nbsp;<span class="String">"day"</span>,&nbsp;<span class="String">"hour"</span>,&nbsp;<span class="String">"minute"</span>&nbsp;};<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;minutesRemaining&nbsp;=&nbsp;Minutes;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(<span class="ReferenceType">string</span>&nbsp;unit&nbsp;<span class="Statement">in</span>&nbsp;Names)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;divisor&nbsp;=&nbsp;timeUnits[unit];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Results.Add(unit,&nbsp;minutesRemaining&nbsp;/&nbsp;divisor);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;minutesRemaining&nbsp;%=&nbsp;divisor;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Composing&nbsp;out&nbsp;string</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;MinutesSB&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder(Minutes&nbsp;+&nbsp;<span class="String">"&nbsp;minutes&nbsp;=&nbsp;"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Check&nbsp;the&nbsp;results&nbsp;for&nbsp;a&nbsp;maximal&nbsp;time&nbsp;unit&nbsp;to&nbsp;have&nbsp;a&nbsp;non-zero&nbsp;value</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//and&nbsp;remember&nbsp;the&nbsp;unit's&nbsp;position&nbsp;in&nbsp;the&nbsp;sorted&nbsp;"names"&nbsp;array</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;Position&nbsp;=&nbsp;-1;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;Names.Count();&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(Results[Names[i]]&nbsp;!=&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Position&nbsp;=&nbsp;i;&nbsp;<span class="Statement">break</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Limit&nbsp;output&nbsp;to&nbsp;3&nbsp;consecutive&nbsp;values&nbsp;if&nbsp;input&nbsp;larger&nbsp;than&nbsp;year,&nbsp;2&nbsp;otherwise</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;Offset&nbsp;=&nbsp;Names[Position].Equals(<span class="String">"year"</span>)&nbsp;?&nbsp;3&nbsp;:&nbsp;2;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Iterate&nbsp;through&nbsp;appropriate&nbsp;time&nbsp;units&nbsp;and&nbsp;append&nbsp;their&nbsp;respective&nbsp;values</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//to&nbsp;the&nbsp;output&nbsp;string:</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;Position;&nbsp;i&nbsp;&lt;&nbsp;Position&nbsp;+&nbsp;Offset&nbsp;&amp;&amp;&nbsp;i&nbsp;&lt;&nbsp;Names.Count();&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;n&nbsp;=&nbsp;Results[Names[i]];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(n&nbsp;==&nbsp;0)&nbsp;<span class="Statement">continue</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(i&nbsp;&gt;&nbsp;Position)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Add&nbsp;comma&nbsp;or&nbsp;"and"&nbsp;between&nbsp;the&nbsp;values</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MinutesSB.Append(i&nbsp;==&nbsp;Position&nbsp;+&nbsp;Offset&nbsp;-&nbsp;1&nbsp;?&nbsp;<span class="String">"&nbsp;and&nbsp;"</span>&nbsp;:&nbsp;<span class="String">",&nbsp;"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MinutesSB.Append(n&nbsp;+&nbsp;<span class="String">"&nbsp;"</span>&nbsp;+&nbsp;Names[i]);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Plural&nbsp;suffix</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(n&nbsp;&gt;&nbsp;1)&nbsp;MinutesSB.Append(<span class="String">"s"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Return&nbsp;the&nbsp;result</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;MinutesSB.ToString().Trim();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
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
