<%@ Page Title="Mirror Encryption" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MirrorEncryption.aspx.cs" Inherits="georgiweb.Challenges.MirrorEncryption" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6;">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Mirror Encryption</h3>
                <br />
                <h5 style="padding-left: 150px; padding-right: 150px;"><b>Description</b>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;Hard
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#myModalAnchor">Modal</a>
                    &nbsp;&nbsp;
                    &#8226;&nbsp;<a href="#sourceCodeAnchor">Source Code</a>
                </h5>
                <!-- Container for Critical Hit -->
                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <p>
                        Challange can be found <a href="https://www.reddit.com/r/dailyprogrammer/comments/4m3ddb/20160601_challenge_269_intermediate_mirror/" target="_blank">here</a>.
                    We are going to encrypt and decrypt with a mirror field.<br />
                        It works like this:<br />
                        We align letters to a mirror field:<br />
                    </p>
                    <div class="code">
                        &nbsp;ab<br />
                        A&nbsp;\c<br />
                        B\&nbsp;d<br />
                        &nbsp;CD
                    </div>
                    <p>
                        <br />
                        <br />
                        Every letter has now a mirror image<br />
                        For example A has as mirror image D<br />
                    </p>
                    <div class="code">
                        A-\&nbsp;<br />
                        &nbsp;&nbsp;|&nbsp;<br />
                        &nbsp;&nbsp;D
                    </div>
                    <p>
                        <br />
                        The / and \ act as a mirror that will turn the line 90 degrees like you would if you had a laserpointer pointed to a mirror.<br />
                        The full letter grid will look like this (without the seperators):<br />
                    </p>
                    <div class="code">
                        &nbsp;|a|b|c|d|e|f|g|h|i|j|k|l|m|<br />
                        -----------------------------<br />
                        A|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|n<br />
                        -----------------------------<br />
                        B|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|o<br />
                        -----------------------------<br />
                        C|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|p<br />
                        -----------------------------<br />
                        D|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|q<br />
                        -----------------------------<br />
                        E|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|r<br />
                        -----------------------------<br />
                        F|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|s<br />
                        -----------------------------<br />
                        G|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|t<br />
                        -----------------------------<br />
                        H|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|u<br />
                        -----------------------------<br />
                        I|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|v<br />
                        -----------------------------<br />
                        J|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|w<br />
                        -----------------------------<br />
                        K|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|x<br />
                        -----------------------------<br />
                        L|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|y<br />
                        -----------------------------<br />
                        M|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|&nbsp;|z<br />
                        -----------------------------<br />
                        &nbsp;|N|O|P|Q|R|S|T|U|V|W|X|Y|Z|
                    </div>
                    <p>
                        <br />
                        <br />
                        <br />
                        Input description:<br />
                        You'll get a grid of 13 by 13 with mirrors and a word.<br />
                    </p>
                    <div class="code">
                        &nbsp;&nbsp;&nbsp;\\&nbsp;&nbsp;/\&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<br />
                        &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;<br />
                        \&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        \/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        /&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;\/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;<br />
                        TpnQSjdmZdpoohd
                    </div>
                    <p>
                        <br />
                        <br />
                        Output description:<br />
                        Return the encrypted word:<br />
                        <i>DailyProgrammer</i><br />
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">Mirror Encryption Modal</button>

                    <!-- Critical Hit Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">Mirror Encryption</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-sm-8">
                                                    <p><b>Input:</b></p>
                                                    <asp:Label ID="inputLabel" runat="server" Style="font-family: 'Century Gothic'">
                                                    <p>TpnQSjdmZdpoohd</p>
                                                    </asp:Label>
                                                    <br />
                                                    <p><b>Output:</b></p>
                                                    <asp:Label ID="outputdivLabel" runat="server" Style="font-family: 'Century Gothic'"></asp:Label>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="code" runat="server" id="mirrorsLettersLabel">
                                                        &nbsp;abcdefghijklm&nbsp;<br />
                                                        A&nbsp;&nbsp;&nbsp;\\&nbsp;&nbsp;/\&nbsp;&nbsp;&nbsp;&nbsp;n<br />
                                                        B&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\o<br />
                                                        C&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;p<br />
                                                        D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\q<br />
                                                        E&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;r<br />
                                                        F&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;s<br />
                                                        G\&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;t<br />
                                                        H&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u<br />
                                                        I\/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;v<br />
                                                        J/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;w<br />
                                                        K&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;x<br />
                                                        L&nbsp;&nbsp;&nbsp;&nbsp;\/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;y<br />
                                                        M&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;z<br />
                                                        &nbsp;NOPQRSTUVWXYZ
                                                    </div>
                                                </div>
                                            </div>
                                            <br />
                                            <asp:Button runat="server" ID="MEButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="MEButtonClick" Style="font-family: 'Century Gothic'" />
                                            <asp:Label runat="server" ID="MEInvalidInput" Style="font-family: 'Century Gothic'"></asp:Label>
                                            <br />
                                            <hr runat="server" id="ABOVE_OUTPUT_HR" visible="false" />
                                            <asp:Label runat="server" ID="MEButtonLabel" Style="font-family: 'Century Gothic'"></asp:Label>
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
                </div>
                <!-- End of Container for Mirror Encrption -->
                <a name="sourceCodeAnchor"></a>
                <br />

                <div class="container-fluid" style="padding-left: 150px; padding-right: 150px;">
                    <h3 style="font-family: 'Century Gothic'; color: black;">Source Code</h3>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">When the "Go" button is clicked to get the output</h4>
                    <div class="code">
                        <span class="ValueType">enum</span>&nbsp;Direction&nbsp;{&nbsp;Up,&nbsp;Down,&nbsp;Left,&nbsp;Right&nbsp;}<br />
                        <span class="ValueType">char</span>[,]&nbsp;mirrorLetters&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ValueType">char</span>[15,15]{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'&nbsp;',&nbsp;'a',&nbsp;'b',&nbsp;'c',&nbsp;'d',&nbsp;'e',&nbsp;'f',&nbsp;'g',&nbsp;'h',&nbsp;'i',&nbsp;'j',&nbsp;'k',&nbsp;'l',&nbsp;'m',&nbsp;'&nbsp;'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'A',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'n'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'B',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'o'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'C',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'p'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'D',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'q'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'E',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'r'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'F',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'s'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'G',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'t'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'H',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'u'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'I',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'v'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'J',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'w'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'K',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'x'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'L',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'y'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'M',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'&nbsp;',&nbsp;'z'},<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{'&nbsp;',&nbsp;'N',&nbsp;'O',&nbsp;'P',&nbsp;'Q',&nbsp;'R',&nbsp;'S',&nbsp;'T',&nbsp;'U',&nbsp;'V',&nbsp;'W',&nbsp;'X',&nbsp;'Y',&nbsp;'Z',&nbsp;'&nbsp;'},<br />
                        };<br />
                        <br />
                        <span class="ReferenceType">string</span>&nbsp;mirrorsStr&nbsp;=&nbsp;@<span class="String">"&nbsp;&nbsp;&nbsp;\\&nbsp;&nbsp;/\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;<br />
                            /&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            /&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            /&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            /&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;"</span>;<br />
                        <span class="ReferenceType">string</span>&nbsp;inputWord&nbsp;=&nbsp;<span class="String">"TpnQSjdmZdpoohd"</span>;<br />
                        <br />
                        <span class="InlineComment">//Place&nbsp;the&nbsp;mirrors&nbsp;in&nbsp;the&nbsp;array</span><br />
                        <span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;x&nbsp;=&nbsp;1,&nbsp;c&nbsp;=&nbsp;0;&nbsp;x&nbsp;&lt;&nbsp;14;&nbsp;x++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;y&nbsp;=&nbsp;1;&nbsp;y&nbsp;&lt;&nbsp;14;&nbsp;y++,&nbsp;c++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mirrorLetters[x,&nbsp;y]&nbsp;=&nbsp;mirrorsStr[c];<br />
                        <br />
                        <br />
                        <span class="InlineComment">//Format&nbsp;thee&nbsp;mirror&nbsp;array&nbsp;to&nbsp;display</span><br />
                        <span class="InlineComment">//NOT&nbsp;currently&nbsp;used,&nbsp;but&nbsp;if&nbsp;needed&nbsp;it's&nbsp;available</span><br />
                        StringBuilder&nbsp;formatedArray&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        <span class="Statement">for</span>(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;15;&nbsp;i++)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;j&nbsp;=&nbsp;0;&nbsp;j&nbsp;&lt;&nbsp;15;&nbsp;j++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(mirrorLetters[i,&nbsp;j]&nbsp;==&nbsp;'&nbsp;')<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;formatedArray.Append(<span class="String">"&amp;nbsp;"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;formatedArray.Append(mirrorLetters[i,&nbsp;j].ToString());<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;formatedArray.Append(<span class="String">"&lt;br&nbsp;/&gt;"</span>);<br />
                        }<br />
                        <br />
                        <span class="InlineComment">//Decrypt</span><br />
                        <span class="ReferenceType">string</span>&nbsp;toReturn&nbsp;=&nbsp;<span class="ReferenceType">string</span>.Empty;<br />
                        <span class="Statement">foreach</span>&nbsp;(<span class="ValueType">char</span>&nbsp;s&nbsp;<span class="Statement">in</span>&nbsp;inputWord)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;toReturn&nbsp;+=&nbsp;GetMatchChar(mirrorLetters,&nbsp;GetLocation(s,&nbsp;mirrorLetters));<br />
                        <br />
                        <span class="InlineComment">//Set&nbsp;the&nbsp;text</span><br />
                        outputdivLabel.Text&nbsp;=&nbsp;toReturn;
                    </div>
                    <hr />

                    <h4 style="font-family: 'Century Gothic'; color: black;">GetMatchChar Function</h4>
                    <div class="code">
                        <span class="Modifier">static</span>&nbsp;<span class="ValueType">char</span>&nbsp;GetMatchChar(<span class="ValueType">char</span>[,]&nbsp;arr,&nbsp;Tuple&lt;<span class="ValueType">int</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;loc)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Direction&nbsp;current&nbsp;=&nbsp;GetDirection(loc);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;x&nbsp;=&nbsp;loc.Item1;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;y&nbsp;=&nbsp;loc.Item2;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">do</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">switch</span>&nbsp;(current)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Up:&nbsp;x--;&nbsp;<span class="Statement">break</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Down:&nbsp;x++;&nbsp;<span class="Statement">break</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Left:&nbsp;y--;&nbsp;<span class="Statement">break</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Right:&nbsp;y++;&nbsp;<span class="Statement">break</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;current&nbsp;=&nbsp;NextDirection(current,&nbsp;arr[x,&nbsp;y]);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="Statement">while</span>&nbsp;(!IsFinal(ToTuple(x,&nbsp;y)));<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;arr[x,&nbsp;y];<br />
                        }
                    </div>
                    <hr />

                    <h4 style="font-family: 'Century Gothic'; color: black;">GetDirection Function</h4>
                    <div class="code">
                        <span class="Modifier">static</span>&nbsp;Direction&nbsp;GetDirection(Tuple&lt;<span class="ValueType">int</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;initLocation)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(initLocation.Item1&nbsp;==&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Direction.Down;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(initLocation.Item1&nbsp;==&nbsp;14)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Direction.Up;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(initLocation.Item2&nbsp;==&nbsp;0)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Direction.Right;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Direction.Left;<br />
                        }
                    </div>
                    <hr />

                    <h4 style="font-family: 'Century Gothic'; color: black;">NextDirection Function</h4>
                    <div class="code">
                        <span class="Modifier">static</span>&nbsp;Direction&nbsp;NextDirection(Direction&nbsp;dir,&nbsp;<span class="ValueType">char</span>&nbsp;c)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(c&nbsp;==&nbsp;'&nbsp;')<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;dir;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(c&nbsp;==&nbsp;'/')<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">switch</span>&nbsp;(dir)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Down:&nbsp;<span class="Statement">return</span>&nbsp;Direction.Left;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Left:&nbsp;<span class="Statement">return</span>&nbsp;Direction.Down;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Up:&nbsp;<span class="Statement">return</span>&nbsp;Direction.Right;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Right:&nbsp;<span class="Statement">return</span>&nbsp;Direction.Up;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(c&nbsp;==&nbsp;'\\')<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">switch</span>&nbsp;(dir)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Down:&nbsp;<span class="Statement">return</span>&nbsp;Direction.Right;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Right:&nbsp;<span class="Statement">return</span>&nbsp;Direction.Down;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Up:&nbsp;<span class="Statement">return</span>&nbsp;Direction.Left;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">case</span>&nbsp;Direction.Left:&nbsp;<span class="Statement">return</span>&nbsp;Direction.Up;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Direction.Up;<br />
                        }
                    </div>
                    <hr />

                    <h4 style="font-family: 'Century Gothic'; color: black;">GetLocation Function</h4>
                    <div class="code">
                        <span class="Modifier">static</span>&nbsp;Tuple&lt;<span class="ValueType">int</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;GetLocation(<span class="ValueType">char</span>&nbsp;c,&nbsp;<span class="ValueType">char</span>[,]&nbsp;arr)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;x&nbsp;=&nbsp;0;&nbsp;x&nbsp;&lt;&nbsp;15;&nbsp;x++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;y&nbsp;=&nbsp;0;&nbsp;y&nbsp;&lt;&nbsp;15;&nbsp;y++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(arr[x,&nbsp;y]&nbsp;==&nbsp;c)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;ToTuple(x,&nbsp;y);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;ToTuple(0,&nbsp;0);<br />
                        }
                    </div>
                    <hr />

                    <h4 style="font-family: 'Century Gothic'; color: black;">ToTuple Function</h4>
                    <div class="code">
                        <span class="Modifier">static</span>&nbsp;Tuple&lt;<span class="ValueType">int</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;ToTuple(<span class="ValueType">int</span>&nbsp;a,&nbsp;<span class="ValueType">int</span>&nbsp;b)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="Keyword">new</span>&nbsp;Tuple&lt;<span class="ValueType">int</span>,&nbsp;<span class="ValueType">int</span>&gt;(a,&nbsp;b);<br />
                        }
                    </div>
                    <hr />

                    <h4 style="font-family: 'Century Gothic'; color: black;">IsFinal Function</h4>
                    <div class="code">
                        <span class="Modifier">static</span>&nbsp;<span class="ValueType">bool</span>&nbsp;IsFinal(Tuple&lt;<span class="ValueType">int</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;loc)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(loc.Item1&nbsp;==&nbsp;0&nbsp;||&nbsp;loc.Item1&nbsp;==&nbsp;14&nbsp;||&nbsp;loc.Item2&nbsp;==&nbsp;0&nbsp;||&nbsp;loc.Item2&nbsp;==&nbsp;14)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="Keyword">true</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="Keyword">false</span>;<br />
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
