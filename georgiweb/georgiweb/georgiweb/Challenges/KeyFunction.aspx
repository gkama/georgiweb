<%@ Page Title="Key Function" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KeyFunction.aspx.cs" Inherits="georgiweb.Challenges.KeyFunction" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: Century Gothic">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6">
                <h3 style="font-family: 'Century Gothic'; letter-spacing: 10px; font-size: 25px; padding-left: 150px; padding-right: 150px; color: black;">Key Function</h3>
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
                        The key function is a higher order array function modelled in sql as group by and in J as /. For each key, apply a passed function to the entire subarray of items that share the same key.
                        function signature.<br />
                        <br />
                        key(<br />
                        &nbsp;&nbsp;&nbsp;elements:  an array/list of stuff. number of items is leading array dimension,<br />
                        &nbsp;&nbsp;&nbsp;key: an array/list of stuff.  Same amount of items as "elements".  If null, then defaults to same array as elements,<br />
                        &nbsp;&nbsp;&nbsp;applyfunction:  function that will be called for each group of elements that have the same key. Optionally, this function could also have the key parameter.<br />
                        &nbsp;&nbsp;&nbsp;Results are aggregated in order of key appearance.)<br />
                        <br />
                        key(3 4 5 6 , 2 0 1 2 , sum)<br />
                        Would produce<br />
                        9 4 5<br />
                        There are 2 elements with key 2, and so for key 2, sum is called with 3 6. Results accumulated in order of key seen.<br />
                        <br />
                        <b>Histogram</b><br />
                        For each item in input, return a record with the key and the item count for that key<br />
                        <br />
                        Input:<br />
                    </p>
                    <div class="code">
                        1&nbsp;9&nbsp;3&nbsp;4&nbsp;6&nbsp;6&nbsp;8&nbsp;8&nbsp;0&nbsp;4&nbsp;0&nbsp;6&nbsp;3&nbsp;2&nbsp;6&nbsp;3&nbsp;2&nbsp;3&nbsp;5&nbsp;7&nbsp;4&nbsp;2&nbsp;6&nbsp;7&nbsp;3&nbsp;9&nbsp;5&nbsp;<br />
                        7&nbsp;8&nbsp;9&nbsp;5&nbsp;6&nbsp;5&nbsp;6&nbsp;8&nbsp;3&nbsp;1&nbsp;8&nbsp;4&nbsp;6&nbsp;5&nbsp;6&nbsp;4&nbsp;8&nbsp;9&nbsp;5&nbsp;7&nbsp;8&nbsp;4&nbsp;4&nbsp;9&nbsp;2&nbsp;6&nbsp;10
                    </div>
                    <p>
                        Output:
                    </p>
                    <div class="code">
                        &nbsp;5&nbsp;13<br />
                        &nbsp;3&nbsp;12<br />
                        &nbsp;2&nbsp;&nbsp;8<br />
                        &nbsp;9&nbsp;14<br />
                        &nbsp;7&nbsp;&nbsp;8<br />
                        &nbsp;0&nbsp;&nbsp;4<br />
                        &nbsp;1&nbsp;&nbsp;5<br />
                        &nbsp;6&nbsp;13<br />
                        &nbsp;8&nbsp;11<br />
                        &nbsp;4&nbsp;12<br />
                        10&nbsp;&nbsp;1
                    </div>
                    <p>
                        <br />
                        <b>Grouped sum of field</b><br />
                        For each record use the first field as key, and return key and sum of field 2 (grouped by key)<br />
                        Input:<br />

                    </p>
                    <div class="code">
                        a&nbsp;14<br />
                        b&nbsp;21<br />
                        c&nbsp;82<br />
                        d&nbsp;85<br />
                        a&nbsp;54<br />
                        b&nbsp;96<br />
                        c&nbsp;9&nbsp;<br />
                        d&nbsp;61<br />
                        a&nbsp;43<br />
                        b&nbsp;49<br />
                        c&nbsp;16<br />
                        d&nbsp;34<br />
                        a&nbsp;73<br />
                        b&nbsp;59<br />
                        c&nbsp;36<br />
                        d&nbsp;24<br />
                        a&nbsp;45<br />
                        b&nbsp;89<br />
                        c&nbsp;77<br />
                        d&nbsp;68
                    </div>
                    <p>
                        Output:<br />
                    </p>
                    <div class="code">
                        ┌─┬───┐<br />
                        │a│229│<br />
                        ├─┼───┤<br />
                        │b│314│<br />
                        ├─┼───┤<br />
                        │c│220│<br />
                        ├─┼───┤<br />
                        │d│272│<br />
                        └─┴───┘
                    </div>
                    <p>
                        <br />
                        <b>Nub (easier)</b><br />
                        The "nub of an array" can be implemented with key. It is similar to sql first function.<br />
                        For the input from 2. return the first element keyed (grouped) by first column.<br />
                        Output:<br />
                    </p>
                    <div class="code">
                        &nbsp;&nbsp;(&gt;@{."1&nbsp;({./.)&nbsp;])&nbsp;b<br />
                        ┌─┬──┐<br />
                        │a│14│<br />
                        ├─┼──┤<br />
                        │b│21│<br />
                        ├─┼──┤<br />
                        │c│82│<br />
                        ├─┼──┤<br />
                        │d│85│<br />
                        └─┴──┘
                    </div>
                    <a name="myModalAnchor"></a>
                    <hr />
                    <!-- Trigger the modal with a button -->
                    <button type="button" class="fancy-button" data-toggle="modal" data-target="#myModalAD">Key Function Modal</button>

                    <!-- Getting A Degree Modal -->
                    <div class="modal fade" id="myModalAD" role="dialog">
                        <div class="modal-dialog modal-md" style="width: 800px;">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="font-family: 'Century Gothic'">Key Function</h4>
                                </div>
                                <div class="modal-body">
                                    <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <p><b>Input for Sum:</b></p>
                                                    <div class="code">
                                                        {"a","b","c","d","a","b","c","d","a","b",<br />
                                                        "c","d","a","b","c","d","a","b","c","d"}<br />
                                                        <br />
                                                        {14,&nbsp;21,&nbsp;82,&nbsp;85,&nbsp;54,&nbsp;96,&nbsp;9,&nbsp;61,&nbsp;43,&nbsp;49,&nbsp;<br />
                                                        16,&nbsp;34,&nbsp;73,&nbsp;59,&nbsp;36,&nbsp;24,&nbsp;45,&nbsp;89,&nbsp;77,&nbsp;68}
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <asp:Label runat="server" ID="outputSumLabel">

                                                    </asp:Label>
                                                </div>


                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <p><b>Input for Histogram:</b></p>
                                                    <div class="code">
                                                        5&nbsp;3&nbsp;5&nbsp;2&nbsp;2&nbsp;9&nbsp;7&nbsp;0&nbsp;7&nbsp;5&nbsp;9&nbsp;2&nbsp;9&nbsp;1&nbsp;9&nbsp;9&nbsp;6&nbsp;<br />
                                                        6&nbsp;8&nbsp;5&nbsp;1&nbsp;1&nbsp;4&nbsp;8&nbsp;5&nbsp;0&nbsp;3&nbsp;5&nbsp;8&nbsp;2&nbsp;3&nbsp;8&nbsp;3&nbsp;4&nbsp;<br />
                                                        6&nbsp;4&nbsp;9&nbsp;3&nbsp;4&nbsp;3&nbsp;4&nbsp;5&nbsp;9&nbsp;9&nbsp;9&nbsp;7&nbsp;7&nbsp;1&nbsp;9&nbsp;3&nbsp;4&nbsp;<br />
                                                        6&nbsp;6&nbsp;8&nbsp;8&nbsp;0&nbsp;4&nbsp;0&nbsp;6&nbsp;3&nbsp;2&nbsp;6&nbsp;3&nbsp;2&nbsp;3&nbsp;5&nbsp;7&nbsp;4&nbsp;<br />
                                                        2&nbsp;6&nbsp;7&nbsp;3&nbsp;9&nbsp;5&nbsp;7&nbsp;8&nbsp;9&nbsp;5&nbsp;6&nbsp;5&nbsp;6&nbsp;8&nbsp;3&nbsp;1&nbsp;8&nbsp;<br />
                                                        4&nbsp;6&nbsp;5&nbsp;6&nbsp;4&nbsp;8&nbsp;9&nbsp;5&nbsp;7&nbsp;8&nbsp;4&nbsp;4&nbsp;9&nbsp;2&nbsp;6&nbsp;10
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <asp:Label runat="server" ID="outputHistogramLabel">

                                                    </asp:Label>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <p><b>Input for "Nub of an Array":</b></p>
                                                    <div class="code">
                                                        {"a","b","c","d","a","b","c","d","a","b",<br />
                                                        "c","d","a","b","c","d","a","b","c","d"}<br />
                                                        <br />
                                                        {14,&nbsp;21,&nbsp;82,&nbsp;85,&nbsp;54,&nbsp;96,&nbsp;9,&nbsp;61,&nbsp;43,&nbsp;49,&nbsp;<br />
                                                        16,&nbsp;34,&nbsp;73,&nbsp;59,&nbsp;36,&nbsp;24,&nbsp;45,&nbsp;89,&nbsp;77,&nbsp;68}
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <asp:Label runat="server" ID="outputNubofanarrayLabel">

                                                    </asp:Label>
                                                </div>
                                            </div>
                                            <hr />

                                            <asp:Button runat="server" ID="KFButton" Text="Go!" CssClass="fancy-button" Width="50px"
                                                OnClick="KFButtonClick" Style="font-family: 'Century Gothic'" />
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
                        <span class="Modifier">protected</span>&nbsp;<span class="ValueType">void</span>&nbsp;KFButtonClick(<span class="ReferenceType">object</span>&nbsp;sender,&nbsp;EventArgs&nbsp;e)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Input&nbsp;for&nbsp;sum</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>[]&nbsp;elements&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ReferenceType">string</span>[]&nbsp;{&nbsp;<span class="String">"a"</span>,<span class="String">"b"</span>,<span class="String">"c"</span>,<span class="String">"d"</span>,<span class="String">"a"</span>,<span class="String">"b"</span>,<span class="String">"c"</span>,<span class="String">"d"</span>,<span class="String">"a"</span>,<span class="String">"b"</span>,<span class="String">"c"</span>,<span class="String">"d"</span>,<span class="String">"a"</span>,<span class="String">"b"</span>,<span class="String">"c"</span>,<span class="String">"d"</span>,<span class="String">"a"</span>,<span class="String">"b"</span>,<span class="String">"c"</span>,<span class="String">"d"</span>&nbsp;};<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>[]&nbsp;key&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ValueType">int</span>[]&nbsp;{&nbsp;14,&nbsp;21,&nbsp;82,&nbsp;85,&nbsp;54,&nbsp;96,&nbsp;9,&nbsp;61,&nbsp;43,&nbsp;49,&nbsp;16,&nbsp;34,&nbsp;73,&nbsp;59,&nbsp;36,&nbsp;24,&nbsp;45,&nbsp;89,&nbsp;77,&nbsp;68&nbsp;};<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;outputSumLabel.Text&nbsp;=&nbsp;keyFunction(elements,&nbsp;key,&nbsp;<span class="String">"sum"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Input&nbsp;for&nbsp;histogram</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>[]&nbsp;histogramElements&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ReferenceType">string</span>[]&nbsp;{&nbsp;};<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>[]&nbsp;histogramKey&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ValueType">int</span>[]&nbsp;{&nbsp;5,&nbsp;3,&nbsp;5,&nbsp;2,&nbsp;2,&nbsp;9,&nbsp;7,&nbsp;0,&nbsp;7,&nbsp;5,&nbsp;9,&nbsp;2,&nbsp;9,&nbsp;1,&nbsp;9,&nbsp;9,&nbsp;6,&nbsp;6,&nbsp;8,&nbsp;5,&nbsp;1,&nbsp;1,&nbsp;4,&nbsp;8,&nbsp;5,&nbsp;0,&nbsp;3,&nbsp;5,&nbsp;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8,&nbsp;2,&nbsp;3,&nbsp;8,&nbsp;3,&nbsp;4,&nbsp;6,&nbsp;4,&nbsp;9,&nbsp;3,&nbsp;4,&nbsp;3,&nbsp;4,&nbsp;5,&nbsp;9,&nbsp;9,&nbsp;9,&nbsp;7,&nbsp;7,&nbsp;1,&nbsp;9,&nbsp;3,&nbsp;4,&nbsp;6,&nbsp;6,&nbsp;8,&nbsp;8,&nbsp;0,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4,&nbsp;0,&nbsp;6,&nbsp;3,&nbsp;2,&nbsp;6,&nbsp;3,&nbsp;2,&nbsp;3,&nbsp;5,&nbsp;7,&nbsp;4,&nbsp;2,&nbsp;6,&nbsp;7,&nbsp;3,&nbsp;9,&nbsp;5,&nbsp;7,&nbsp;8,&nbsp;9,&nbsp;5,&nbsp;6,&nbsp;5,&nbsp;6,&nbsp;8,&nbsp;3,&nbsp;1,<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8,&nbsp;4,&nbsp;6,&nbsp;5,&nbsp;6,&nbsp;4,&nbsp;8,&nbsp;9,&nbsp;5,&nbsp;7,&nbsp;8,&nbsp;4,&nbsp;4,&nbsp;9,&nbsp;2,&nbsp;6,&nbsp;10&nbsp;};<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;outputHistogramLabel.Text&nbsp;=&nbsp;keyFunction(histogramElements,&nbsp;histogramKey,&nbsp;<span class="String">"histogram"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Input&nbsp;for&nbsp;"Nub&nbsp;of&nbsp;an&nbsp;array"</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;outputNubofanarrayLabel.Text&nbsp;=&nbsp;nubofanarray(elements,&nbsp;key);<br />
                        }<br />
                        <br />
                        <span class="InlineComment">//Key&nbsp;Function</span><br />
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;keyFunction(<span class="ReferenceType">string</span>[]&nbsp;elements,&nbsp;<span class="ValueType">int</span>[]&nbsp;key,&nbsp;<span class="ReferenceType">string</span>&nbsp;functionName)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>&nbsp;toReturn&nbsp;=&nbsp;<span class="String">""</span>;<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(functionName.Trim()&nbsp;==&nbsp;<span class="String">"sum"</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn&nbsp;=&nbsp;sum(elements,&nbsp;key);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span>&nbsp;<span class="Statement">if</span>&nbsp;(functionName.Trim()&nbsp;==&nbsp;<span class="String">"histogram"</span>)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn&nbsp;=&nbsp;histogram(key);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Return&nbsp;result</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;toReturn;<br />
                        }<br />
                        <br />
                        <span class="InlineComment">//Sum&nbsp;function</span><br />
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;sum(<span class="ReferenceType">string</span>[]&nbsp;elements,&nbsp;<span class="ValueType">int</span>[]&nbsp;key)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;toReturn&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Dictionary&lt;<span class="ReferenceType">string</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;elementsSum&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Dictionary&lt;<span class="ReferenceType">string</span>,&nbsp;<span class="ValueType">int</span>&gt;();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Calculate&nbsp;the&nbsp;sum</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;elements.Count();&nbsp;i++&nbsp;)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(!(elementsSum.ContainsKey(elements[i])))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;elementsSum.Add(elements[i],&nbsp;key[i]);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;elementsSum[elements[i]]&nbsp;+=&nbsp;key[i];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Create&nbsp;output</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(KeyValuePair&lt;<span class="ReferenceType">string</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;entry&nbsp;<span class="Statement">in</span>&nbsp;elementsSum)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(entry.Key&nbsp;+&nbsp;<span class="String">":&nbsp;"</span>&nbsp;+&nbsp;entry.Value&nbsp;+&nbsp;<span class="String">"&lt;/br&gt;"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Return&nbsp;result</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;toReturn.ToString();<br />
                        }<br />
                        <br />
                        <span class="InlineComment">//Histogram&nbsp;function</span><br />
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;histogram(<span class="ValueType">int</span>[]&nbsp;key)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;toReturn&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;Dictionary&lt;<span class="ValueType">int</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;keysHistogram&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;Dictionary&lt;<span class="ValueType">int</span>,&nbsp;<span class="ValueType">int</span>&gt;();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Calculate&nbsp;the&nbsp;sum</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;key.Count();&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">if</span>&nbsp;(!(keysHistogram.ContainsKey(key[i])))<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;keysHistogram.Add(key[i],&nbsp;1);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">else</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;keysHistogram[key[i]]&nbsp;+=&nbsp;1;<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Create&nbsp;output</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">foreach</span>&nbsp;(KeyValuePair&lt;<span class="ValueType">int</span>,&nbsp;<span class="ValueType">int</span>&gt;&nbsp;entry&nbsp;<span class="Statement">in</span>&nbsp;keysHistogram)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(entry.Key&nbsp;+&nbsp;<span class="String">":&nbsp;"</span>&nbsp;+&nbsp;entry.Value&nbsp;+&nbsp;<span class="String">"&lt;/br&gt;"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Return&nbsp;result</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">return</span>&nbsp;toReturn.ToString();<br />
                        }<br />
                        <br />
                        <span class="InlineComment">//Nub&nbsp;of&nbsp;an&nbsp;array</span><br />
                        <span class="Modifier">private</span>&nbsp;<span class="ReferenceType">string</span>&nbsp;nubofanarray(<span class="ReferenceType">string</span>[]&nbsp;elements,&nbsp;<span class="ValueType">int</span>[]&nbsp;keys)<br />
                        {<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;StringBuilder&nbsp;toReturn&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;StringBuilder();<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ReferenceType">string</span>[]&nbsp;elementsDist&nbsp;=&nbsp;elements.Distinct().ToArray();<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="ValueType">int</span>[]&nbsp;indexOfElements&nbsp;=&nbsp;<span class="Keyword">new</span>&nbsp;<span class="ValueType">int</span>[elementsDist.Count()];<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;i&nbsp;=&nbsp;0;&nbsp;i&nbsp;&lt;&nbsp;elementsDist.Count();&nbsp;i++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;{<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;indexOfElements[i]&nbsp;=&nbsp;Array.IndexOf(elements,&nbsp;elementsDist[i]);<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;}<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Create&nbsp;output</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="Statement">for</span>&nbsp;(<span class="ValueType">int</span>&nbsp;j&nbsp;=&nbsp;0;&nbsp;j&nbsp;&lt;&nbsp;indexOfElements.Count();&nbsp;j++)<br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;toReturn.Append(elementsDist[j]&nbsp;+&nbsp;<span class="String">":&nbsp;"</span>&nbsp;+&nbsp;keys[indexOfElements[j]]&nbsp;+&nbsp;<span class="String">"&lt;/br&gt;"</span>);<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;<span class="InlineComment">//Return&nbsp;result</span><br />
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