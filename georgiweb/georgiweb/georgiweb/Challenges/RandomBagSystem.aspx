<%@ Page Title="RandomBagSystem" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RandomBagSystem.aspx.cs" Inherits="georgiweb.Challenges.RandomBagSystem" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6;">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Random Bag System</h3>
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
                        Contrary to popular belief, the tetromino pieces you are given in a game of Tetris are not randomly selected. Instead, all seven pieces are placed into a "bag". A piece is randomly removed from the bag and presented to the player until the bag is empty. When the bag is empty, it is refilled and the process is repeated for any additional pieces that are needed.<br />
                        <br />
                        In this way, it is assured that the player will never go too long without seeing a particular piece. It is possible for the player to receive two identical pieces in a row, but never three or more. Goal is to implement this system.<br />
                        <br />
                        Program outputs string signifying 3 sections of 5x7 bags of tetromino pieces given to the player using the random bag system. Each bag will be on a single line.<br />
                        The pieces in a bag are as follows: O I S Z L J T
                   
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button class="fancy-button" data-target="#myModalRB" data-toggle="modal" type="button">Random Bag System Modal</button>
                    <!-- Random Bag System Modal -->
                    <div id="myModalRB" class="modal fade" role="dialog">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button class="close" data-dismiss="modal" type="button">
                                        ×
                                   
                                    </button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'; color: black;">Random Bag System</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <asp:Label runat="server" Style="font-family: 'Century Gothic'">Randomize Results </asp:Label>
                                            <asp:Button ID="RandomBagSystemButton" runat="server" CssClass="fancy-button" OnClick="RandomBagSystemButtonClick" Style="font-family: 'Century Gothic'" Text="Go!" Width="50px" />
                                            <asp:Label ID="RandomBagSystemInvalidInputLabel" runat="server" Style="font-family: 'Century Gothic'"></asp:Label>
                                            <br />
                                            <hr runat="server" id="ABOVE_OUTPUT_HR" visible="false" />
                                            <asp:Label ID="RandomBagSystemResultLabel" runat="server" Style="font-family: 'Century Gothic'"></asp:Label>
                                            <hr runat="server" id="BELOW_OUTPUT_HR" visible="false" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                                <div class="modal-footer">
                                    <button class="fancy-button" data-dismiss="modal" style="font-family: 'Century Gothic'" type="button">
                                        Close
                                   
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <hr />
                    <a name="sourceCodeAnchor"></a>
                    <br />
                    <!-- End of Container for Random Bag System -->
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Randomizes and builds the output</h4>
                    <div class="code">
                        <span class="InlineComment">//Get&nbsp;Randomized&nbsp;Result</span><br />
                        <span class="Modifier">protected</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;GetRandomizeResult()<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;Result&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>[]&nbsp;Pieces&nbsp;=&nbsp;{<span class="String">"O"</span>,&nbsp;<span class="String">"I"</span>,&nbsp;<span class="String">"S"</span>,&nbsp;<span class="String">"Z"</span>,&nbsp;<span class="String">"L"</span>,&nbsp;<span class="String">"J"</span>,&nbsp;<span class="String">"T"</span>};<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Loop&nbsp;through&nbsp;3&nbsp;sections</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;section&nbsp;=&nbsp;0;&nbsp;section&nbsp;&lt;&nbsp;3;&nbsp;section++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Loop&nbsp;5&nbsp;times,&nbsp;to&nbsp;get&nbsp;5&nbsp;Bags&nbsp;of&nbsp;7&nbsp;-&nbsp;that&nbsp;much&nbsp;in&nbsp;1&nbsp;section</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;loop&nbsp;=&nbsp;0;&nbsp;loop&nbsp;&lt;&nbsp;5;&nbsp;loop++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Result.Append(<span class="String">"Bag&nbsp;"</span>&nbsp;+&nbsp;(loop+1)&nbsp;+&nbsp;<span class="String">":&nbsp;"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Get&nbsp;new&nbsp;random&nbsp;numbers&nbsp;every&nbsp;Bag&nbsp;(7&nbsp;items)</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;List&lt;<span class="ValueType">int</span>&gt;&nbsp;RandNums&nbsp;=&nbsp;RandomNumbers();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;Pieces.Length;&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Result.Append(Pieces[RandNums[i]&nbsp;-&nbsp;1]);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Result.Append(<span class="String">"\r\n"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//New&nbsp;line&nbsp;on&nbsp;each&nbsp;section</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Result.Append(<span class="String">"\r\n"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Result.ToString();<br />
                        }
                   
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">Sets the random numbers (non repetitive)</h4>
                    <div class="code">
                        <span class="InlineComment">//Make&nbsp;sure&nbsp;it&nbsp;is&nbsp;truly&nbsp;a&nbsp;random&nbsp;number</span><br />
                        <span class="InlineComment">//If&nbsp;it&nbsp;is&nbsp;inside&nbsp;the&nbsp;loop,&nbsp;it&nbsp;will&nbsp;be&nbsp;the&nbsp;same&nbsp;result&nbsp;each&nbsp;time&nbsp;-&nbsp;calling&nbsp;the&nbsp;function&nbsp;too&nbsp;frequent&nbsp;=&nbsp;same&nbsp;random&nbsp;seed</span><br />
                        Random&nbsp;random&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Random();<br />
                        <span class="InlineComment">//Get&nbsp;Random&nbsp;Numbers&nbsp;in&nbsp;a&nbsp;Bag</span><br />
                        <span class="Modifier">protected</span>&nbsp;List&lt;<span class="ValueType">int</span>&gt;&nbsp;RandomNumbers()<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;List&lt;<span class="ValueType">int</span>&gt;&nbsp;nums&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;List&lt;<span class="ValueType">int</span>&gt;&nbsp;{1,&nbsp;2,&nbsp;3,&nbsp;4,&nbsp;5,&nbsp;6,&nbsp;7};<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;List&lt;<span class="ValueType">int</span>&gt;&nbsp;result&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;List&lt;<span class="ValueType">int</span>&gt;();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">while</span>(nums.Count&nbsp;&gt;&nbsp;0){<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;idx&nbsp;=&nbsp;random.Next(0,&nbsp;nums.Count);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;result.Add(nums[idx]);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nums.RemoveAt(idx);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;result;<br />
                        }
               
                    </div>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
