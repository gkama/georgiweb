<%@ Page Title="SailorsAndMonkeys" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SailorsAndMonkeys.aspx.cs" Inherits="georgiweb.Challenges.SailorsAndMonkeys" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6;">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Sailors And Monkeys</h3>
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
                        A number of sailors (let's call it N) are stranded on an island with a huge pile of coconuts and a monkey. During the night, each sailor (in turn) does the following without the others knowing:<br />
                        <br />
                        1. He takes one N'th (e.g. if N=5, one fifth) of the coconuts in the pile and hides them<br />
                        2. The division leaves one coconut left over, which is given to the monkey.<br />
                        <br />
                        In the morning, they split the remaining coconuts between them. This time the split is even. There's nothing left over for the monkey.<br />
                        <br />
                        Goal: Given the number of sailors (N), how many coconuts were in the pile to begin with (lowest possible number)?<br />
                        Input must be between 2 and 5 Sailors.<br />
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalSM">Sailors And Coconuts Modal</button>

                    <!-- Convert Minutes Modal -->
                    <div class="modal fade" id="myModalSM" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'; color: black;">Sailors And Coconuts</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Label runat="server" Style="font-family: 'Century Gothic'">Sailors:</asp:Label>
                                            <asp:TextBox runat="server" ID="InputSailorsAndMonkeys" CssClass="form-control" BackColor="LightGray"
                                                Width="150px" Style="font-family: 'Century Gothic'"></asp:TextBox>
                                            <br>
                                            <asp:Button runat="server" ID="SailorsAndMonkeysButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="SailorsAndMonkeysButtonClick" Style="font-family: 'Century Gothic'" />
                                            <asp:Label runat="server" ID="SailorsAndMonkeysInvalidInputLabel" Style="font-family: 'Century Gothic'"></asp:Label>
                                            <br />
                                            <hr runat="server" id="ABOVE_OUTPUT_HR" visible="false" />
                                            <asp:Label runat="server" ID="SailorsAndMonkeysResultLabel" Style="font-family: 'Century Gothic'"></asp:Label>
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
                    <!-- End of Container for Sailors And Coconuts -->
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Main function</h4>
                    <div class="code">
                        <span class="InlineComment">//Gets&nbsp;the&nbsp;number&nbsp;of&nbsp;coconuts.&nbsp;If&nbsp;n&nbsp;is&nbsp;returned&nbsp;(number&nbsp;of&nbsp;sailors)&nbsp;then&nbsp;it&nbsp;failed&nbsp;to&nbsp;get&nbsp;the&nbsp;coconuts</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">int</span>&nbsp;GetCoconuts(<span class="ValueType">int</span>&nbsp;n)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;loop&nbsp;=&nbsp;1;&nbsp;loop&nbsp;&lt;&nbsp;10000;&nbsp;loop++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;pool&nbsp;=&nbsp;loop;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;person&nbsp;=&nbsp;1;&nbsp;person&nbsp;&lt;=&nbsp;n+1;&nbsp;person++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(pool&nbsp;&lt;=&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">break</span>;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;share&nbsp;=&nbsp;GetShare(pool,&nbsp;n);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;remainder&nbsp;=&nbsp;GetRemainder(pool,&nbsp;n);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(share&nbsp;==&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">break</span>;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(person&nbsp;&lt;&nbsp;n&nbsp;+&nbsp;1)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(remainder&nbsp;!=&nbsp;1)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">break</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(remainder&nbsp;!=&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">break</span>;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pool&nbsp;-=&nbsp;share;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(person&nbsp;&lt;&nbsp;n&nbsp;+&nbsp;1)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pool&nbsp;-=&nbsp;1;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;loop;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;n;<br />
                        }
               
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">GetShare function</h4>
                    <div class="code">
                        <span class="InlineComment">//Gets&nbsp;share&nbsp;-&nbsp;1/nth&nbsp;of&nbsp;pool</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">int</span>&nbsp;GetShare(<span class="ValueType">int</span>&nbsp;pool,&nbsp;<span class="ValueType">int</span>&nbsp;n)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;(pool&nbsp;/&nbsp;n);<br />
                        }
               
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">GetRemainder function</h4>
                    <div class="code">
                        <span class="InlineComment">//Get&nbsp;remainder</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">int</span>&nbsp;GetRemainder(<span class="ValueType">int</span>&nbsp;pool,&nbsp;<span class="ValueType">int</span>&nbsp;n)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;(pool&nbsp;%&nbsp;n);<br />
                        }
               
                    </div>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
