<%@ Page Title="Basic Formatting" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="BasicFormatting.aspx.cs" Inherits="georgiweb.Challenges.BasicFormatting" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6;">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Basic Formatting</h3>
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
                    <p>
                        It's the year 2095. In an interesting turn of events, it was decided 50 years ago that BASIC is by far the universally best language.<br />
                        <br />
                        You work for a company by the name of SpaceCorp, who has recently merged with a much smaller company MixCo. While SpaceCorp has rigorous formatting guidelines, 
                    exactly 4 space per level of indentation, MixCo developers seem to format however they please at the moment. The task is to bring MixCo's development projects up to standards.
                    <br />
                        <br />
                        The input will consist of a number N representing the number of lines of BASIC code. Following that will be a line containing the text to use for indentation, which will be '....' for
                    the purposes of visibility. Finally, there will be N lines of pseudocode mixing indentation types (spaces and tabs, represented by '.' and '>>' for visibility) that need to be reindented.<br />
                        Blocks are denoted by 'IF' and 'ENDIF', as well as 'FOR' and 'NEXT'.<br />
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModal">Basic Formatting Modal</button>

                    <!-- Basic Formatting Modal -->
                    <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-md">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'; color: black;">Basic Formatting</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Label runat="server" Style="font-family: 'Century Gothic'">Input:</asp:Label>
                                            <br />
                                            <asp:Label runat="server" Style="font-family: 'Century Gothic'">
                                            12<br />
                                            ····<br />
                                            VAR I<br />
                                            ·FOR I=1 TO 31<br />
                                            »»»»IF !(I MOD 3) THEN<br />
                                            ··PRINT "FIZZ"<br />
                                            ··»»ENDIF<br />
                                            »»»»····IF !(I MOD 5) THEN<br />
                                            »»»»··PRINT "BUZZ"<br />
                                            ··»»»»»»ENDIF<br />
                                            »»»»IF (I MOD 3) && (I MOD 5) THEN<br />
                                            ······PRINT "FIZZBUZZ"<br />
                                            ··»»ENDIF<br />
                                            »»»»·NEXT<br />
                                            </asp:Label>
                                            <br>
                                            <asp:Button runat="server" ID="BFGoButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="BFGoButtonClick" Style="font-family: 'Century Gothic'" />
                                            <asp:Label runat="server" ID="BFInvalidInput" Style="font-family: 'Century Gothic'"></asp:Label>
                                            <br />
                                            <hr runat="server" id="ABOVE_OUTPUT_HR" visible="false" />
                                            <div class="code" runat="server" id="formatLabel" visible="false">
                                            </div>
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
                    <h4 style="font-family: 'Century Gothic'; color: black;">Main function to get Basic Formatted generated output</h4>
                    <div class="code">
                        <span class="Modifier">static</span>&nbsp;<span class="ValueType">int</span>&nbsp;lineCount;<br />
                        <span class="Modifier">static</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;indent;<br />
                        <br />
                        <span class="ReferenceType">string</span>[]&nbsp;Input&nbsp;=&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"12"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"····"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"VAR&nbsp;I"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"·FOR&nbsp;I=1&nbsp;TO&nbsp;31"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"»»»»IF&nbsp;!(I&nbsp;MOD&nbsp;3)&nbsp;THEN"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"··PRINT&nbsp;\"FIZZ\""</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"··»»ENDIF"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"»»»»····IF&nbsp;!(I&nbsp;MOD&nbsp;5)&nbsp;THEN"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"»»»»··PRINT&nbsp;\"BUZZ\""</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"··»»»»»»ENDIF"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"»»»»IF&nbsp;(I&nbsp;MOD&nbsp;3)&nbsp;&amp;&amp;&nbsp;(I&nbsp;MOD&nbsp;5)&nbsp;THEN"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"······PRINT&nbsp;\"FIZZBUZZ\""</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"··»»ENDIF"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"»»»»·NEXT"</span><br />
                        };<br />
                        <br />
                        lineCount&nbsp;=&nbsp;<span class="ValueType">int</span>.Parse(Input[0]);<br />
                        <span class="ReferenceType">string</span>[]&nbsp;inputCode&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ReferenceType">string</span>[lineCount];<br />
                        indent&nbsp;=&nbsp;Input[1];<br />
                        <span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;<br />
                        <span class="ReferenceType">string</span>&nbsp;line;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        <span class="Statement">while</span>&nbsp;(i&nbsp;&lt;&nbsp;lineCount)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;line&nbsp;=&nbsp;Input[i+2];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;inputCode[i]&nbsp;=&nbsp;line;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;i++;<br />
                        }<br />
                        BFButtonLabel.Text&nbsp;=&nbsp;(FormatCode(inputCode));
                    </div>

                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">FormatCode function</h4>
                    <div class="code">
                        <span class="InlineComment">//FormatCode&nbsp;function</span><br />
                        <span class="Modifier">static</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;FormatCode(<span class="ReferenceType">string</span>[]&nbsp;lines)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;result&nbsp;=&nbsp;<span class="String">""</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;emptyLine,&nbsp;startsWith;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;indentLevel&nbsp;=&nbsp;0;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;lineCount;&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;emptyLine&nbsp;=&nbsp;<span class="ReferenceType">string</span>.Join(<span class="String">""</span>,&nbsp;lines[i].Split('»',&nbsp;'·'));<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;startsWith&nbsp;=&nbsp;emptyLine.Split()[0];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(startsWith&nbsp;==&nbsp;<span class="String">"ENDIF"</span>&nbsp;||&nbsp;startsWith&nbsp;==&nbsp;<span class="String">"NEXT"</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;indentLevel&nbsp;-=&nbsp;1;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;j&nbsp;=&nbsp;0;&nbsp;j&nbsp;&lt;&nbsp;indentLevel;&nbsp;j++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result&nbsp;+=&nbsp;indent;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result&nbsp;+=&nbsp;emptyLine&nbsp;+&nbsp;<span class="String">"\n"</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(startsWith&nbsp;==&nbsp;<span class="String">"IF"</span>&nbsp;||&nbsp;startsWith&nbsp;==&nbsp;<span class="String">"FOR"</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;indentLevel&nbsp;+=&nbsp;1;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;result;<br />
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
