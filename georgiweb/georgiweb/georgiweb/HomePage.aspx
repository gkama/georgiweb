<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="HomePage.aspx.cs" Inherits="georgiweb.HomePage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        h3, h4 {
            margin: 10px 0 30px 0;
            letter-spacing: 0px;
            font-size: 20px;
            color: #111;
        }

        @media (max-width: 600px) {
            .carousel-caption {
                 /* Hide the carousel text when the screen is less than 600 pixels wide */
            }
        }
        /*Jumbo - top style*/
        .jumbotron {
            color: #000;
            padding: 35px 25px;
            padding-bottom: 20px;
            font-family: Century Gothic;
            margin: 0 auto;
            background-size: cover;
            margin-top: 0px;
            height: 200px;
            width: 100%;
            left: 100%;
            overflow: hidden;
        }

        #jb1 {
            background-color: #e6e6e6;
            width: 100%;
            height: 100%;
        }


        .container-fluid {
            margin: 0;
            margin-right: 0px;
            padding: 0 !important;
        }

        .container-div {
            padding-top: 20px;
        }


        .row {
            padding-right: 0px;
            margin-right: 0px;
            margin-left: 0px;
        }

        .user {
            display: inline-block;
            width: 150px;
            height: 150px;
            border-radius: 50%;
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
        }

        /* Personal Projects*/
        @media screen and (max-width: 700px) {
            .work-layer-open .back-button {
                opacity: 1;
            }
        }

        .section {
            max-width: 1280px;
            padding-bottom: 7.5rem;
            margin-left: auto;
            margin-right: auto;
        }

        @media screen and (min-width: 700px) {
            .section {
                background-color: #e6e6e6;
                padding-left: 20px;
                padding-right: 20px;
            }
        }

        .project-box {
            margin-bottom: 5px;
            cursor: pointer;
        }

            /*.project-box:nth-child(4n+1) {
                clear: left;
            }

        @media screen and (max-width: 991px) {
            .project-box:nth-child(2n+1) {
                clear: left;
            }
        }*/

            .project-box .title {
                opacity: .7;
                font-weight: 300;
                font-size: 14px;
                transition: all .2s ease;
            }

            .project-box:hover .title {
                font-family: 'Century Gothic';
                font-weight: 500;
                letter-spacing: 2px;
                text-decoration: none !important;
                opacity: 1;
                color: #5d5d5d;
            }

            .project-box:hover .image {
                background-color: #e6e6e6;
            }

            .project-box .image {
                height: 80px;
                background-color: #e6e6e6;
                display: -ms-flexbox;
                display: flex;
                -ms-flex-align: center;
                align-items: center;
                -ms-flex-pack: center;
                justify-content: center;
                transition: all .2s ease;
            }

        /*fa icons transparent
        i[class*=fa-user]::before {
            background: transparent;
        }

        i[class*=fa-globe]::before {
            background: transparent;
        }

        i[class*=fa-phone]::before {
            background: transparent;
        }

        i[class*=fa-android]::before {
            background: transparent;
        }

        i[class*=fa-github]::before {
            background: transparent;
        }

        i[class*=fa-linkedin]::before {
            background: transparent;
        }

        i[class*=fa-files-o]::before {
            background: transparent;
        }

        i[class*=fa-internet-explorer]::before {
            background: transparent;
        }

        i[class*=fa-money]::before {
            background: transparent;
        }

        i[class*=fa-random]::before {
            background: transparent;
        }

        i[class*=fa-latop]::before {
            background: transparent;
        }

        /*Looking for a full time .NET Development position where I can apply and further improve
                            my talents and skills to provide quality applications for end users.*/
        h4 {
            display: block;
            font-size: 1.5em;
            font-weight: bold;
        }

        hr {
            opacity: 0.5;
            border: 1px thin;
        }
    </style>

    <asp:UpdatePanel runat="server" ID="mainUpdatePanelHome" UpdateMode="Conditional" style="font-family: Century Gothic; background-color: #e6e6e6; min-height: 100%;">
        <ContentTemplate>
            <div id="jb1" class="jumbotron text-left">
                <div class="row">
                    <div class="col-sm-3" style="width: 320px;">
                        <img runat="server" src="~/Images/georgipic.jpg" class="img-circle person" alt="Georgi Kamacharov" width="300" height="300">
                    </div>

                    <div class="col-sm-9">
                        <h1 id="gkamtitle" style="font-family: Arial Black, Gadget, sans-serif; color: black; font-size: 40px; ">GEORGI KAMACHAROV</h1>
                        <h4 id="pertitle1" style="font-family: Century Gothic; font-style: italic; color: black; ">Developer • Programmer • Engineer</h4>
                        <hr id="hrtitle" style="" />
                        <h4 id="pertitle" style="font-style: italic; font-size: 14px; color: black;  margin-top: 10px; margin-bottom: 10px; padding-left: 30px;">• Computer Science major, Mathematics minor, graduate from <a href="http://www.uky.edu/UKHome/" target="_blank">University of Kentucky</a>
                            <br />
                            <br />
                            • 2 years of professional development experience with <a href="https://www.microsoft.com/net" target="_blank">Microsoft .NET</a> framework
                            <br />
                            <br />
                            • Proficient in C# Programming Language and <a href="http://www.asp.net/" target="_blank">ASP.NET</a>
                            <br />
                            <br />
                            • Programmer at <a href="http://www.convergys.com/" target="_blank">Convergys Corporation</a>, Cincinnati, Ohio
                            <br />
                            <br />
                        </h4>



                        <!-- Links -->
                        <div id="links-section" class="section active" style=" margin-top: 20px;">
                            <div class="row">
                                <div class="col-sm-6">
                                    <hr id="hrtitle2" style="" />
                                    <div class="col-xs-4 col-md-4 project-box">
                                        <a href="/Resume/Resume" style="color: #5d5d5d; text-decoration: none !important;">
                                            <div class="image">
                                                <i class="fa fa-user fa-fw fa-4x"></i>
                                            </div>
                                            <h3 class="title text-center">Resume</h3>
                                        </a>
                                    </div>
                                    <div class="col-xs-4 col-md-4 project-box">
                                        <a href="/Experience/Experience" style="color: #5d5d5d; text-decoration: none !important;">
                                            <div class="image">
                                                <i class="fa fa-globe fa-fw fa-4x"></i>
                                            </div>
                                            <h3 class="title text-center">Experience</h3>
                                        </a>
                                    </div>
                                    <div class="col-xs-4 col-md-4 project-box">
                                        <a href="/PersonalProjects/PersonalProjects" style="color: #5d5d5d; text-decoration: none !important;">
                                            <div class="image">
                                                <i class="fa fa-laptop fa-fw fa-4x"></i>
                                            </div>
                                            <h3 class="title text-center">Projects</h3>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <hr id="hrtitle3" style="" />
                                    <div class="row">
                                        <div class="col-xs-4 col-md-4 project-box">
                                            <a href="https://play.google.com/store/apps/developer?id=Georgi+Kamacharov" target="_blank" style="color: #5d5d5d; text-decoration: none !important;">
                                                <div class="image">
                                                    <i class="fa fa-android fa-fw fa-4x"></i>
                                                </div>
                                                <h3 class="title text-center">Google Play</h3>
                                            </a>
                                        </div>
                                        <div class="col-xs-4 col-md-4 project-box">
                                            <a href="https://github.com/gogyprogramming/georgiweb" target="_blank" style="color: #5d5d5d; text-decoration: none !important;">
                                                <div class="image">
                                                    <i class="fa fa-github fa-fw fa-4x"></i>
                                                </div>
                                                <h3 class="title text-center">Github</h3>
                                            </a>
                                        </div>
                                        <div class="col-xs-4 col-md-4 project-box">
                                            <a href="/Contact/Contact" style="color: #5d5d5d; text-decoration: none !important;">
                                                <div class="image">
                                                    <i class="fa fa-phone fa-fw fa-4x"></i>
                                                </div>
                                                <h3 class="title text-center">Contact/LinkedIn</h3>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </ContentTemplate>
        <Triggers>
        </Triggers>
    </asp:UpdatePanel>


    <script type="text/javascript">
        $(document).ready(function () {
            $('[data-toggle="popover"]').popover();

            $("#projectsCollapse").on("hide.bs.collapse", function () {
                $("#btn1").html('<span class="glyphicon glyphicon-collapse-down"></span> Projects');
            });
            $("#projectsCollapse").on("show.bs.collapse", function () {
                $("#btn1").html('<span class="glyphicon glyphicon-collapse-up"></span> Projects');
            });

            /*$("#gkamtitle").fadeIn(2000);
            $("#pertitle").fadeIn(2000);
            $("#pertitle1").fadeIn(2000);
            $("#hrtitle").fadeIn(1000);
            $("#hrtitle2").fadeIn(1000);
            $("#hrtitle3").fadeIn(1000);

            $("#gkamtitle").animate({ opacity: '1.0' }, 1500);
            $("#pertitle").animate({ opacity: '1.0' }, 1500);
            $("#pertitle1").animate({ opacity: '1.0' }, 1500);


            $("#links-section").fadeIn(2000);*/
        });
    </script>

</asp:Content>
