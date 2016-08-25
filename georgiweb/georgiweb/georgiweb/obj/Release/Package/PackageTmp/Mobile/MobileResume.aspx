<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/Mobile.Master" AutoEventWireup="true" CodeBehind="MobileResume.aspx.cs" Inherits="georgiweb.Mobile.MobileResume" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentMobile" runat="server">
    <asp:UpdatePanel ID="updatepanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="container-fluid">
                <div style="padding: 5px;">
                    <div style="font-family: 'Century Gothic'; text-align: center">
                    </div>
                    <div style="font-family: 'Century Gothic'">
                        <!-- Resume -->
                        <p style="text-align: center">
                            <b>Georgi T. Kamacharov </b>
                            <br />
                            <!-- <i><font size="2.5"> 2957 Holly Hill Drive, Burlington, Kentucky, 41005</font></i><br />
                    <i><font size="2.5"> (859) 802-3479</font></i><br /> -->
                            <i>gkamacharov@gmail.com</i>
                        </p>

                        <!-- Border -->
                        <hr style="height: 1px; border: none; color: #333; background-color: #333;" />

                        <!-- Education -->
                        <p>
                            <b>Education </b>
                            <br />
                            <b><a href="http://www.uky.edu/UKHome/" target="_blank" style="text-decoration: none !important;">University of Kentucky - Lexington, Kentucky</a></b>
                            <br />
                            <i>B.S. in Computer Science </i>
                            <br />
                            <i class="right">Minor in Mathematics </i>
                            <br />
                            <i>Major GPA: 3.026 </i>
                        </p>

                        <!-- Border -->
                        <hr style="height: 1px; border: none; color: #333; background-color: #333;" />

                        <!-- Work Experience -->
                        <p>
                            <b>Work Experience </b>
                            <br />
                            <!-- Add more here -->

                            <b><a href="http://www.convergys.com/" target="_blank" style="text-decoration: none !important;">Convergys Corporation (Cincinnati, Ohio)</a></b><br />
                            <i>Associate Programmer (August, 2014 - Present)</i><br />
                        </p>

                        <!-- Convergys duties and tasks -->
                        <ul>
                            <li>Act as Primary .NET Developer, in a team environment, for a project with key objective of moving all required functionality off a Mainframe.</li>
                            <li>Developed Dynamic Link Libraries (DLL's) & an ASP.NET web application, for internal users, as part of a migration process off a Mainframe.</li>
                            <!--<li>Prepared, designed, and developed internal ASP.NET web application to assist teams in more flexible and convenient data manipulation.</li>-->
                            <li>Acted as a Primary Kronos Timekeeping Admin, responsible for troubleshooting and solving issues preventing users from accessing the web application.</li>
                            <li>Served as a Primary Tester in a team environment to assist in the deployment of an internal Timekeeping system to new geographical locations.</li>
                        </ul>

                        <!-- DMR Management -->
                        <p>
                            <br />
                            <b>DMR Management Fast Track Auction Sales (Cincinnati, Ohio)</b><br />
                            <i>Independent Contractor (Summer 2013)</i><br />
                            <!-- add duties and tasks with bullet points <li></li>-->
                        </p>
                        <h6><a name="languageanchor"></a></h6>
                        <ul>
                            <li>Worked with Microsoft Excel to create user-friendly product descriptions</li>
                            <li>Assisted customers with purchases, returns, and issues</li>
                            <li>Operated a forklift</li>
                        </ul>

                        <!-- Border -->
                        <hr style="height: 1px; border: none; color: #333; background-color: #333;" />

                        <!-- Computer Skills -->
                        <p>
                            <b>Computer Skills </b>
                            <br />
                        </p>

                        <ul>
                            <li><b>Languages: </b>C# (.NET, ASP.NET), HTML, MySQL, CSS, Java, Java Script, PHP, C, C++, Objective C, CSX, Perl, Python, VB.</li>
                            <li><b>Software: </b>Microsoft Visual Studio 2015/2013/2012/2010, Xamarin Studio, Android Studio, Eclipse, NetBeans, Microsoft Office, Adobe Photoshop, AutoCAD, PuTTY.</li>
                            <li><b>Operating Systems: </b>Windows (95, 2000, XP, Vista, 7, 8, 10), Linux.</li>
                            <li><b>Technical: </b>Android and iOS Mobile Applications, MatLab, MultiLab.</li>
                        </ul>

                        <!-- Border -->
                        <hr style="height: 1px; border: none; color: #333; background-color: #333;" />

                        <!-- Activities start, and World Change Coalition -->
                        <p>
                            <b>Activities </b>
                            <br />
                            <b>World Change Coalition (Lexington, Kentucky)</b><br />
                            <i>Member (Fall 2010 - Spring 2013)</i><br />
                        </p>
                        <ul>
                            <li>Sold bracelets to raise money in order to build a school for underprivileged children in Cambodia.</li>
                            <li>Assisted the club's president with organizing and staffing fundraising events.</li>
                        </ul>

                        <!-- Senior Design Project -->
                        <p>
                            <b>Senior Design Project  (Lexington, Kentucky)</b><br />
                            <b><a href="https://sites.google.com/site/cs499learntocode/home" target="_blank">Project Link</a></b>  (Spring 2014 - Summer 2014)<br />
                        </p>
                        <ul>
                            <li>Worked with Nick Such from Awesome Inc. Lexington, KY to built a self-guided tutorial iOS application for users, and a course creating tool for educators</li>
                            <li>Implemented embedded videos and assisted with user progress tracking, syntax highlighting and in-app display of interpreted/compiled code</li>
                        </ul>

                        <!-- Java Projects -->
                        <!--<p>
                        <b>School Java Projects</b><br />
                    </p>
                    <ul>
                        <li>Developed an <a href="https://play.google.com/store/apps/details?id=copypasta.copypasta" target="_blank">Android mobile application </a>that serves as a reference for comments for a streaming website and online forum</li>
                        <li>Created Android mobile applications which ranged from a simple quiz to 3D object manipulation such as a basketball shooter game</li>
                        <li>Developed five different stages of a compiler - symbol table, scanner, parser, type checker, and code generator using CSX and Jflex</li>
                        <li>Implemented the ElGamal public key cryptosystem which involves large integer arithmetic and multiple mathematical algorithms</li>
                    </ul>-->

                        <!-- Databse Project -->
                        <!--<p>
                        <b>Database Projects</b><br />
                    </p>
                    <ul>
                        <li>Developed a user friendly online retail website that included a dozen different products available for virtual purchase. Based on their position, users,
                    could login and alter all of the products' price, quantity, description, sale, and also order more if needed</li>
                    </ul>-->

                        <!-- Border -->
                        <hr style="height: 1px; border: none; color: #333; background-color: #333;" />

                        <!-- Language Fluency -->
                        <p>
                            <b>Language Fluency</b><br />
                        </p>
                        <ul>
                            <li>English</li>
                            <li>Bulgarian</li>
                        </ul>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
