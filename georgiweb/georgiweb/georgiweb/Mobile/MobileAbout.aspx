<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/Mobile.Master" AutoEventWireup="true" CodeBehind="MobileAbout.aspx.cs" Inherits="georgiweb.Mobile.MobileAbout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentMobile" runat="server">
    <asp:UpdatePanel ID="updatepanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="container-fluid">
                <div style="padding: 5px; font-family: 'Century Gothic';">
                    <p>
                        A little bit about me. My name is Georgi T. Kamacharov and I was born in a small Eastern Europen country called Bulgaria. I came to the United States of America about 8 years ago
                    and I have liked it ever since. I became a citizen roughly 3 years ago and now posses dual citizenship with Bulgaria and the US. 
                    <br />
                        <br />
                        Furthermore, after I graduated High School, I was uncertain of what career I would like to pursue once I graduated college. 
                    After my first year of college with an undecided major, I decided to give Computer Science a try.
                    I fell in love with it and have been developing my CS skills ever since.
                    <br />
                        <br />
                        I have/am a:
                    <br />
                        <ul>
                            <li>Developer / Programmer / Engineer.</li>
                            <li>Computer Science major, Mathematics minor, graduate from <a href="http://www.uky.edu/UKHome/" target="_blank">University of Kentucky</a>.</li>
                            <li>Programmer at <a href="http://www.convergys.com/" target="_blank">Convergys Corporation</a>, Cincinnati, Ohio.</li>
                            <li>Proficient in C# Programming Language and <a href="http://www.asp.net/" target="_blank">ASP.NET</a>.</li>
                            <li>2 years of professional development experience with <a href="https://www.microsoft.com/net" target="_blank">Microsoft .NET</a> framework.</li>
                        </ul>
                    </p>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
