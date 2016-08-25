<%@ Page Title="Splurthian Chemistry 101" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SplurthianChemistry101.aspx.cs" Inherits="georgiweb.Challenges.SplurthianChemistry101" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Splurthian Chemistry 101</h3>
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
                        The inhabitants of the planet Splurth are building their own periodic table of the elements. 
                        Just like Earth's periodic table has a chemical symbol for each element (H for Hydrogen, Li for Lithium, etc.), so does Splurth's. 
                        However, their chemical symbols must follow certain rules:<br />
                        1. All chemical symbols must be exactly two letters, so B is not a valid symbol for Boron.<br />
                        <br />
                        2. Both letters in the symbol must appear in the element name, but the first letter of the element name does not necessarily need to appear in the symbol. So Hg is not valid for Mercury, but Cy is.<br />
                        3. The two letters must appear in order in the element name. So Vr is valid for Silver, but Rv is not. To be clear, both Ma and Am are valid for Magnesium, because there is both an a that appears after an m, and an m that appears after an a.<br />
                        4. If the two letters in the symbol are the same, it must appear twice in the element name. So Nn is valid for Xenon, but Xx and Oo are not.<br />
                        As a member of the Splurth Council of Atoms and Atom-Related Paraphernalia, you must determine whether a proposed chemical symbol fits these rules.<br />
                        <br />
                    </p>
                    <p>
                        Write a function that, given two strings, one an element name and one a proposed symbol for that element, determines whether the symbol follows the rules. If you like, you may parse the program's input and output the result, but this is not necessary.<br />
                        <br />
                        The symbol will have exactly two letters. Both element name and symbol will contain only the letters a-z. Both the element name and the symbol will have their first letter capitalized, with the rest lowercase. (If you find that too challenging, it's okay to instead assume that both will be completely lowercase.)<br />
                        <br />
                    </p>
                    <p>
                        <b>Examples:</b><br />
                    </p>
                    <div class="code">
                        Spenglerium,&nbsp;Ee&nbsp;-&gt;&nbsp;true<br />
                        Zeddemorium,&nbsp;Zr&nbsp;-&gt;&nbsp;true<br />
                        Venkmine,&nbsp;Kn&nbsp;-&gt;&nbsp;true<br />
                        Stantzon,&nbsp;Zt&nbsp;-&gt;&nbsp;false<br />
                        Melintzum,&nbsp;Nn&nbsp;-&gt;&nbsp;false<br />
                        Tullium,&nbsp;Ty&nbsp;-&gt;&nbsp;false
                    </div>
                    <p>
                        <br />
                    </p>
                    <p>
                        <b>Optional bonus challenges:</b><br />
                        Given an element name, find the valid symbol for that name that's first in alphabetical order. E.g. Gozerium -> Ei, Slimyrine -> Ie.<br />
                    </p>

                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">Splurthian Chemistry 101</button>

                    <!-- Getting A Degree Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 800px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">Splurthian Chemistry 101</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <p><b>Input:</b></p>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <asp:Label runat="server">Element Name:</asp:Label>
                                                    <asp:TextBox runat="server" ID="elementNameTxtBox" CssClass="form-control">

                                                    </asp:TextBox>
                                                </div>
                                                <div class="col-sm-4">
                                                    <asp:Label runat="server">Element Symbol:</asp:Label>
                                                    <asp:TextBox runat="server" ID="elementSymbolTxtBox" CssClass="form-control">

                                                    </asp:TextBox>
                                                </div>

                                                <div class="col-sm-4">
                                                </div>

                                            </div>
                                            <br />
                                            <p><b>Is it valid?</b></p>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <asp:Label runat="server" ID="outputLabel">

                                                    </asp:Label>
                                                </div>

                                            </div>
                                            <br />
                                            <hr />
                                            <p><b>Challenge 1</b></p>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <asp:Label runat="server">Element Name:</asp:Label>
                                                    <asp:TextBox runat="server" ID="challengeTxtBox" CssClass="form-control">

                                                    </asp:TextBox>
                                                </div>
                                                <div class="col-sm-4">
                                                    <asp:Label runat="server" ID="challenge1OutputLabel" Visible="false"></asp:Label>
                                                </div>

                                            </div>
                                            <br />
                                            <hr />
                                            <br />
                                            <asp:Button runat="server" ID="SCButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="SCButtonClick" Style="font-family: 'Century Gothic'" />
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
                    <h4 style="font-family: 'Century Gothic'; color: black;">When the "Go" button is clicked to check if the conditions apply</h4>
                    <div class="code">
                        <span class="Modifier">private</span>&nbsp;Boolean&nbsp;checkConditions(<span class="ReferenceType">string</span>&nbsp;eleName,&nbsp;<span class="ReferenceType">string</span>&nbsp;eleSymbol)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">char</span>&nbsp;symbolChar1&nbsp;=&nbsp;Char.ToLower(eleSymbol[0]);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">char</span>&nbsp;symbolChar2&nbsp;=&nbsp;Char.ToLower(eleSymbol[1]);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;eleName&nbsp;=&nbsp;eleName.ToLower();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;List&lt;<span class="ValueType">int</span>&gt;&nbsp;listSymbolChar1Pos&nbsp;=&nbsp;FindIndeces(eleName,&nbsp;symbolChar1.ToString()).ToList();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;List&lt;<span class="ValueType">int</span>&gt;&nbsp;listSymbolChar2Pos&nbsp;=&nbsp;FindIndeces(eleName,&nbsp;symbolChar2.ToString()).ToList();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//First&nbsp;condition:&nbsp;All&nbsp;chemical&nbsp;symbols&nbsp;must&nbsp;be&nbsp;exactly&nbsp;two&nbsp;letters</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(eleSymbol.Length&nbsp;!=&nbsp;2)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;<span class="Statement">return</span>&nbsp;<span class="Keyword">false</span>;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Second&nbsp;condition:&nbsp;Both&nbsp;letters&nbsp;in&nbsp;the&nbsp;symbol&nbsp;must&nbsp;appear&nbsp;in&nbsp;the&nbsp;element&nbsp;name,&nbsp;</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//but&nbsp;the&nbsp;first&nbsp;letter&nbsp;of&nbsp;the&nbsp;element&nbsp;name&nbsp;does&nbsp;not&nbsp;necessarily&nbsp;need&nbsp;to&nbsp;appear&nbsp;in&nbsp;the&nbsp;symbol</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;eleSymbol.Count();&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(!eleName.Contains(Char.ToLower(eleSymbol[i])))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;<span class="Statement">return</span>&nbsp;<span class="Keyword">false</span>;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Third&nbsp;condition:&nbsp;The&nbsp;two&nbsp;letters&nbsp;must&nbsp;appear&nbsp;in&nbsp;order&nbsp;in&nbsp;the&nbsp;element&nbsp;name</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(symbolChar1&nbsp;!=&nbsp;symbolChar2)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;counter&nbsp;=&nbsp;0;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;listSymbolChar1Pos.Count;&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;j&nbsp;=&nbsp;0;&nbsp;j&nbsp;&lt;&nbsp;listSymbolChar2Pos.Count;&nbsp;j++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>(listSymbolChar1Pos[i]&nbsp;&gt;&nbsp;listSymbolChar2Pos[j])<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;counter++;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>((listSymbolChar1Pos.Count&nbsp;*&nbsp;listSymbolChar2Pos.Count)&nbsp;==&nbsp;counter)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;<span class="Statement">return</span>&nbsp;<span class="Keyword">false</span>;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Last&nbsp;condition:&nbsp;If&nbsp;the&nbsp;two&nbsp;letters&nbsp;in&nbsp;the&nbsp;symbol&nbsp;are&nbsp;the&nbsp;same,&nbsp;it&nbsp;must&nbsp;appear&nbsp;twice&nbsp;in&nbsp;the&nbsp;element&nbsp;name</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(symbolChar1&nbsp;==&nbsp;symbolChar2)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(eleName.Count(x&nbsp;=&gt;&nbsp;x&nbsp;==&nbsp;symbolChar1)&nbsp;&lt;&nbsp;2)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="Keyword">false</span>;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//If&nbsp;they&nbsp;all&nbsp;pasee,&nbsp;return&nbsp;true</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;<span class="Keyword">true</span>;<br />
                        }
                    </div>
                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">FindIndeces function</h4>
                    <div class="code">
                        <span class="Modifier">private</span>&nbsp;IEnumerable&lt;<span class="ValueType">int</span>&gt;&nbsp;FindIndeces(<span class="ReferenceType">string</span>&nbsp;text,&nbsp;<span class="ReferenceType">string</span>&nbsp;query)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;Enumerable.Range(0,&nbsp;text.Length&nbsp;-&nbsp;query.Length)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.Where(i&nbsp;=&gt;&nbsp;query.Equals(text.Substring(i,&nbsp;query.Length)));<br />
                        }
                    </div>

                    <hr />
                    <h4 style="font-family: 'Century Gothic'; color: black;">FindIndeces function</h4>
                    <div class="code">
                        <span class="InlineComment">//Bonus&nbsp;Challenge&nbsp;1</span><br />
                        <span class="ReferenceType">string</span>&nbsp;bonusChallenge1(<span class="ReferenceType">string</span>&nbsp;element)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;element&nbsp;=&nbsp;element.ToLower();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;toReturnSymbol&nbsp;=&nbsp;<span class="String">""</span>;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;symbolLength&nbsp;=&nbsp;2;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;nextSymbolLetterPlace&nbsp;=&nbsp;-1;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>&nbsp;elementLetterToStartFrom&nbsp;=&nbsp;0;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">do</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nextSymbolLetterPlace++;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">char</span>&nbsp;nextAlphabeticalIndexer&nbsp;=&nbsp;'z';<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">char</span>&nbsp;nextSymbolLetterToAdd&nbsp;=&nbsp;'a';<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;elementLetterToStartFrom;&nbsp;i&nbsp;&lt;&nbsp;element.Length;&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(element[i]&nbsp;&lt;=&nbsp;nextAlphabeticalIndexer&nbsp;&amp;&amp;&nbsp;i&nbsp;+&nbsp;1&nbsp;&lt;=&nbsp;element.Length&nbsp;-&nbsp;(symbolLength&nbsp;-&nbsp;nextSymbolLetterPlace&nbsp;-&nbsp;1))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nextAlphabeticalIndexer&nbsp;=&nbsp;element[i];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;nextSymbolLetterToAdd&nbsp;=&nbsp;element[i];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;elementLetterToStartFrom&nbsp;=&nbsp;i&nbsp;+&nbsp;1;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturnSymbol&nbsp;+=&nbsp;nextSymbolLetterToAdd;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;<span class="Statement">while</span>&nbsp;(nextSymbolLetterPlace&nbsp;+&nbsp;1&nbsp;&lt;&nbsp;symbolLength);<br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">char</span>[]&nbsp;s&nbsp;=&nbsp;toReturnSymbol.ToCharArray();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;s[0]&nbsp;=&nbsp;Char.ToUpper(s[0]);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;toReturnSymbol&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ReferenceType">string</span>(s);<br />
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