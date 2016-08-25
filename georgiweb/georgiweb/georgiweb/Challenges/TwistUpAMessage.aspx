<%@ Page Title="Twist Up A Message" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TwistUpAMessage.aspx.cs" Inherits="georgiweb.Challenges.TwistUpAMessage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Twist Up A Message</h3>
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
                        As we know English uses Latin alphabet consisting of 26 characters, both upper- and lower-case:<br />

                    </p>
                    <div class="code">
                        Aa&nbsp;Bb&nbsp;Cc&nbsp;Dd&nbsp;Ee&nbsp;Ff&nbsp;Gg&nbsp;Hh&nbsp;Ii&nbsp;Jj&nbsp;Kk&nbsp;Ll&nbsp;Mm&nbsp;Nn&nbsp;Oo&nbsp;Pp&nbsp;Qq&nbsp;Rr&nbsp;Ss&nbsp;Tt&nbsp;Uu&nbsp;Vv&nbsp;Ww&nbsp;Xx&nbsp;Yy&nbsp;Zz
                    </div>
                    <p>
                        However, many other languages use its modified version, with some of the letters removed and additional diacritics added to some of them. For instance, Czech alphabet has following additional characters:<br />
                    </p>
                    <div class="code">
                        Áá&nbsp;Čč&nbsp;Ďď&nbsp;Éé&nbsp;Ěě&nbsp;Íí&nbsp;Ňň&nbsp;Óó&nbsp;Řř&nbsp;Šš&nbsp;Ťť&nbsp;Úú&nbsp;Ůů&nbsp;Ýý&nbsp;Žž
                    </div>
                    <p>
                        The worst of all is probably Vietnamese:<br />
                    </p>
                    <div class="code">
                        Áá&nbsp;Àà&nbsp;Ãã&nbsp;Ảả&nbsp;Ạạ&nbsp;Ââ&nbsp;Ấấ&nbsp;Ầầ&nbsp;Ẫẫ&nbsp;Ẩẩ&nbsp;Ậậ&nbsp;Ăă&nbsp;Ắắ&nbsp;Ằằ&nbsp;Ẵẵ&nbsp;Ẳẳ&nbsp;Ặặ&nbsp;Đđ&nbsp;Éé&nbsp;Èè&nbsp;Ẽẽ&nbsp;Ẻẻ&nbsp;Ẹẹ&nbsp;Êê&nbsp;Ếế&nbsp;Ềề&nbsp;Ễễ&nbsp;Ểể&nbsp;Ệệ<br />
                        Íí&nbsp;Ìì&nbsp;Ĩĩ&nbsp;Ỉỉ&nbsp;Ịị&nbsp;Óó&nbsp;Òò&nbsp;Õõ&nbsp;Ỏỏ&nbsp;Ọọ&nbsp;Ôô&nbsp;Ốố&nbsp;Ồồ&nbsp;Ỗỗ&nbsp;Ổổ&nbsp;Ộộ&nbsp;Ơơ&nbsp;Ớớ&nbsp;Ờờ&nbsp;Ỡỡ&nbsp;Ởở&nbsp;Ợợ<br />
                        Úú&nbsp;Ùù&nbsp;Ũũ&nbsp;Ủủ&nbsp;Ụụ&nbsp;Ưư&nbsp;Ứứ&nbsp;Ừừ&nbsp;Ữữ&nbsp;Ửử&nbsp;Ựự&nbsp;Ýý&nbsp;Ỳỳ&nbsp;Ỹỹ&nbsp;Ỷỷ&nbsp;Ỵỵ
                    </div>
                    <p>
                        Your job is to write a method twistUp which "twists up" a string, making it as much filled with diacritics as possible.<br />
                        <br />
                        <b>Input:</b><br />
                        Your input will consist of one string of any letters of the English alphabet, digits and special characters. Characters that cannot be diactriticized should be returned in its original form.<br />
                        <br />
                        <b>Output:</b><br />
                        Output will consist of a modified text.<br />
                        <br />
                        <br />
                        <b>Sample Input</b><br />
                    </p>
                    <div class="code">
                        For,&nbsp;after&nbsp;all,&nbsp;how&nbsp;do&nbsp;we&nbsp;know&nbsp;that&nbsp;two&nbsp;and&nbsp;two&nbsp;make&nbsp;four?&nbsp;<br />
                        Or&nbsp;that&nbsp;the&nbsp;force&nbsp;of&nbsp;gravity&nbsp;works?&nbsp;Or&nbsp;that&nbsp;the&nbsp;past&nbsp;is&nbsp;unchangeable?&nbsp;<br />
                        If&nbsp;both&nbsp;the&nbsp;past&nbsp;and&nbsp;the&nbsp;external&nbsp;world&nbsp;exist&nbsp;only&nbsp;in&nbsp;the&nbsp;mind,&nbsp;<br />
                        and&nbsp;if&nbsp;the&nbsp;mind&nbsp;itself&nbsp;is&nbsp;controllable&nbsp;–&nbsp;what&nbsp;then?
                    </div>
                    <p>
                        <b>Sample Output</b><br />
                    </p>
                    <div class="code">
                        Ƒǒṝ,&nbsp;āᶂťȅŗ&nbsp;ąľḷ,&nbsp;ħṓẃ&nbsp;ᶁớ&nbsp;ẅē&nbsp;ḵȵȭŵ&nbsp;ŧⱨąť&nbsp;ȶẁô&nbsp;ǎǹḍ&nbsp;ẗŵȫ&nbsp;ᶆầᶄĕ&nbsp;ḟõṵɍ?&nbsp;<br />
                        Ȯᵳ&nbsp;ƫẖẩť&nbsp;ṯħê&nbsp;ḟṑȑćẽ&nbsp;ỏᵮ&nbsp;ǧŗảᶌıⱦỳ&nbsp;ẘǒᵲᶄṧ?&nbsp;Ṍᵲ&nbsp;țḩᶏᵵ&nbsp;ⱦḥḙ&nbsp;ṗᶏşʈ&nbsp;ḯş&nbsp;ůǹḉḧẳṇģḕâɓƚė?<br />
                        Ǐḟ&nbsp;Ƅȫţȟ&nbsp;țḧè&nbsp;ƥāṣț&nbsp;ặňḓ&nbsp;ŧħᶒ&nbsp;ḙxᵵęȑᶇȁȴ&nbsp;ẁőŕȴɗ&nbsp;ȩxĭʂƫ&nbsp;ǫȵľȳ&nbsp;ȋɳ&nbsp;ȶḥẽ&nbsp;ṁįƞḋ,&nbsp;<br />
                        ǡǹƌ&nbsp;ᵻḟ&nbsp;ṱȟë&nbsp;ḿīᵰᶑ&nbsp;ḭẗᵴḛɫᵮ&nbsp;ɨś&nbsp;čổɲȶṙŏłḹạɓɭḕ&nbsp;–&nbsp;ŵḫāṯ&nbsp;ƫḩḕñ?
                    </div>
                    <p>
                        <b>Notes</b><br />
                        If your browser/compiler/console cannot display diacritics, switch encoding to UTF-8.<br />
                        Other than diacritics, you can use similar-looking characters like Cyrillic И for N<br />
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">Twist Up A Message Modal</button>

                    <!-- Getting A Degree Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 800px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">Twist Up A Message</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <p><b>Input:</b></p>
                                                    <asp:TextBox runat="server" ID="InputTxtBox" CssClass="form-control"
                                                        TextMode="MultiLine" Height="100px" Width="100%" Style="resize: none">

                                                    </asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <p><b>Output:</b></p>
                                                    <asp:TextBox runat="server" ID="OutputTxtBox" CssClass="form-control"
                                                        TextMode="MultiLine" Height="100px" Width="100%" ReadOnly="true" Style="resize: none"></asp:TextBox>
                                                </div>
                                            </div>
                                            <br />
                                            <asp:Button runat="server" ID="TWAMButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="TWAMButtonClick" Style="font-family: 'Century Gothic'" />
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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Modifier">private</span>&nbsp;List&lt;<span class="ReferenceType">string</span>&gt;&nbsp;twistedLetters&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;List&lt;<span class="ReferenceType">string</span>&gt;()<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;<span class="String">"AÁĂẮẶẰẲẴǍÂẤẬẦẨẪÄẠÀẢĀĄÅǺÃ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"BḄƁᛒ𐌱ɃḂḆ฿β"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"CĆČÇĈĊƆʗ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"DĎḒḌƊḎĐÐ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"EÉĔĚÊẾỆỀỂỄËĖẸÈẺĒĘẼƐ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"FƑḞ𐌅₣"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"GǴĞǦĢĜĠḠʛ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"HḪĤḤĦ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"IÍĬǏÎÏİỊÌỈĪĮĨ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"JĴɈʝ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"KĶḲƘḴ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"LĹȽĽĻḼḶḸḺĿŁ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"MḾṀṂ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"NŃŇŅṊṄṆǸƝṈÑ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"OÓŎǑÔỐỘỒỔỖÖỌŐÒỎƠỚỢỜỞỠŌƟǪØǾÕ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"PÞ𐌐ṔṖⱣƤ₱♇"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"QꝖɊ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"RŔŘŖṘṚṜṞʁ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"SŚŠŞŜȘṠṢ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"TŤŢṰȚṬṮŦ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"UÚŬǓÛÜǗǙǛǕỤŰÙỦƯỨỰỪỬỮŪŲŮŨ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"VṼṾƲ℣∨"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"WẂŴẄẀʬ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"XχẌẊⲬ𐍇"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"YÝŶŸẎỴỲƳỶȲỸ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"ZŹŽŻẒẔƵ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"aáăắặằẳẵǎâấậầẩẫäạàảāąåǻãɑɐɒ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"bḅɓß♭␢Б"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"cćčçĉɕċ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"dďḓḍɗḏđɖ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"eéĕěêếệềểễëėẹèẻēęẽɘəɚ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"fƒſʃʆʅɟʄ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"gǵğǧģĝġɠḡɡ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"hḫĥḥɦẖħɧ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"iíĭǐîïịìỉīįɨĩɩı"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"jǰĵʝȷɟʄ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"kķḳƙḵĸʞ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"lĺƚɬľļḽḷḹḻŀɫɭł"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"mḿṁṃɱɯɰ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"nŉńňņṋṅṇǹɲṉɳñŋ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"oóŏǒôốộồổỗöọőòỏơớợờởỡōǫøǿõɵʘ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"pɸþᵱƥᵽṗṕ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"qʠꝗɋq̃ϙ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"rŕřŗṙṛṝɾṟɼɽɿɹɻ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"sśšşŝșṡṣʂ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"tťţṱțẗṭṯʈŧ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"uʉúŭǔûüǘǚǜǖụűùủưứựừửữūųůũʊ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"vʋʌⱴṿṽ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"wẃŵẅẁʍ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"xχẍẋⲭ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"yýŷÿẏỵỳƴỷȳỹʎ"</span>,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="String">"zźžʑżẓẕʐƶ"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;Page_Load(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Do&nbsp;nothing</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;TWAMButtonClick(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OutputTxtBox.Text&nbsp;=&nbsp;twistUp(InputTxtBox.Text.ToString().Trim());<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;twistUp(<span class="ReferenceType">string</span>&nbsp;text)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;toReturn&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>[]&nbsp;splitText&nbsp;=&nbsp;text.Split('&nbsp;');<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(<span class="ReferenceType">string</span>&nbsp;word&nbsp;<span class="Statement">in</span>&nbsp;splitText)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(<span class="ValueType">char</span>&nbsp;c&nbsp;<span class="Statement">in</span>&nbsp;word)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(twistUpLetter(c));<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(<span class="String">"&nbsp;"</span>);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;toReturn.ToString();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Find&nbsp;the&nbsp;letter&nbsp;in&nbsp;the&nbsp;List</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Modifier">private</span>&nbsp;<span class="ValueType">char</span>&nbsp;twistUpLetter(<span class="ValueType">char</span>&nbsp;letter)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">char</span>&nbsp;toReturn&nbsp;=&nbsp;letter;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(<span class="ReferenceType">string</span>&nbsp;tw&nbsp;<span class="Statement">in</span>&nbsp;twistedLetters)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">char</span>&nbsp;englishChar&nbsp;=&nbsp;tw[0];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(letter&nbsp;==&nbsp;englishChar)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn&nbsp;=&nbsp;tw[RandomNumber(1,&nbsp;tw.Length)];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;toReturn;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Function&nbsp;to&nbsp;get&nbsp;random&nbsp;number</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Modifier">private</span>&nbsp;<span class="Modifier">static</span>&nbsp;<span class="Modifier">readonly</span>&nbsp;Random&nbsp;random&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Random();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Modifier">private</span>&nbsp;<span class="Modifier">static</span>&nbsp;<span class="Modifier">readonly</span>&nbsp;<span class="ReferenceType">object</span>&nbsp;syncLock&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ReferenceType">object</span>();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Modifier">public</span>&nbsp;<span class="Modifier">static</span>&nbsp;<span class="ValueType">int</span>&nbsp;RandomNumber(<span class="ValueType">int</span>&nbsp;min,&nbsp;<span class="ValueType">int</span>&nbsp;max)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">lock</span>&nbsp;(syncLock)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;<span class="InlineComment">//&nbsp;synchronize</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;random.Next(min,&nbsp;max);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
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
