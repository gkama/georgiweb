<%@ Page Title="Personal Projects" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonalProjects.aspx.cs" Inherits="georgiweb.PersonalProjects.PersonalProjects" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        @media screen and (max-width: 700px) {
            .work-layer-open .back-button {
                opacity: 1;
            }
        }

        .section {
            max-width: 100%;
            padding-bottom: 7.5rem;
            margin-left: auto;
            margin-right: auto;
        }

        @media screen and (min-width: 700px) {
            .section {
                background-color: #e6e6e6;
                padding-left: 65px;
                padding-right: 65px;
            }
        }

        .project-box {
            margin-bottom: 10px;
            cursor: pointer;
        }

            .project-box:nth-child(4n+1) {
                clear: left;
            }

        @media screen and (max-width: 991px) {
            .project-box:nth-child(2n+1) {
                clear: left;
            }
        }

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
            height: 120px;
            background-color: #ddd;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            -ms-flex-pack: center;
            justify-content: center;
            transition: all .2s ease;
        }

        a {
            color: #5d5d5d;
            text-decoration: none !important;
        }

        hr {
            margin-top: 0px;
            opacity: 0.3;
        }
    </style>

    <asp:UpdatePanel runat="server" ID="updatepanel" UpdateMode="Conditional" style="font-family: 'Century Gothic'">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6; margin: 0; padding: 0;">
                <!-- Personal Projects -->
                <div id="work-section" class="section active">
                    <div class="row">
                        <div class="col-sm-6">
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-md-8">
                                    <h2 class="section-title">android mobile applications</h2>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-xs-10 col-md-10 project-box">
                                    <a href="https://play.google.com/store/apps/details?id=converter.converter" target="_blank" style="color: #5d5d5d; text-decoration: none !important;">
                                        <div class="image">
                                            <i class="fa fa-circle-o-notch fa-fw fa-4x"></i>
                                            <h3 class="title">Unit Converter</h3>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-10 col-md-10 project-box">
                                    <a href="https://play.google.com/store/apps/details?id=animations.animations" target="_blank" style="color: #5d5d5d; text-decoration: none !important;">
                                        <div class="image">
                                            <i class="fa fa-plus-square fa-fw fa-4x"></i>
                                            <h3 class="title">Dice Master</h3>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-10 col-md-10 project-box">
                                    <a href="https://play.google.com/store/apps/details?id=copypasta.copypasta" target="_blank" style="color: #5d5d5d; text-decoration: none !important;">
                                        <div class="image">
                                            <i class="fa fa-files-o fa-fw fa-4x"></i>
                                            <h3 class="title">Copypasta</h3>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-10 col-md-10 project-box">
                                    <a href="https://play.google.com/store/apps/details?id=randomizer.randomizer" target="_blank" style="color: #5d5d5d; text-decoration: none !important;">
                                        <div class="image">
                                            <i class="fa fa-random fa-fw fa-4x"></i>
                                            <h3 class="title">Randomizer</h3>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- asp.net web applications -->
                        <div class="col-sm-6">
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-md-8">
                                    <h2 class="section-title">asp.net web applications</h2>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-xs-10 col-md-10 project-box">
                                    <a href="/HomePage" style="color: #5d5d5d; text-decoration: none !important;">
                                        <div class="image">
                                            <i class="fa fa-internet-explorer fa-fw fa-4x"></i>
                                            <h3 class="title">gkamacharov.com</h3>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-xs-10 col-md-10 project-box">
                                    <a href="/PersonalProjects/WinTheDay" style="color: #5d5d5d; text-decoration: none !important;">
                                        <div class="image">
                                            <i class="fa fa-money fa-fw fa-4x"></i>
                                            <h3 class="title">Win The Day</h3>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <!-- DLL -->
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-md-8">
                                    <h2 class="section-title">.net dynamic link libraries</h2>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-xs-8 col-md-8 project-box">
                                    <a href="https://github.com/gogyprogramming/UnitConverter-DLL/tree/master/UnitConverter/UnitConverter/bin/Release" target="_blank" style="color: #5d5d5d; text-decoration: none !important;">
                                        <div class="image">
                                            <i class="fa fa-cogs fa-fw fa-4x"></i>
                                            <h3 class="title">Unit Converter</h3>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-xs-2 col-md-2 project-box">
                                    <a href="UnitConvert.aspx" style="color: #5d5d5d; text-decoration: none !important;">
                                        <div class="image">
                                            <i class="fa fa-chevron-right fa-fw fa-2x"></i>
                                            <h4 class="title">Try it</h4>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>


                        <!-- C# Coding -->
                        <div class="col-sm-6">
                            <br />
                            <br />
                            <div class="row">
                                <div class="col-md-12">
                                    <h2 class="section-title">c# coding</h2>
                                </div>
                            </div>
                            <hr />

                            <div class="row">
                                <div class="col-xs-12 col-md-12 project-box">
                                    <a data-toggle="collapse" href="#collapse1" style="color: #5d5d5d; text-decoration: none !important;">
                                        <div class="image">
                                            <i class="fa fa-code fa-fw fa-5x"></i>
                                            <h3 class="title">C# Coding Challenges</h3>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-md-12 project-box">
                                    <div id="collapse1" class="panel-collapse collapse out">
                                        <div class="panel-body">
                                            <p>
                                                Below is a list of c# programming challenges projects I have completed. Also accessible through the drop down menu in the navigation bar.<br />
                                            </p>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <p>
                                                        <a href="../Challenges/ADNumbersPage.aspx">
                                                            <img src="../Images/right_black.png"></img>Abundant and Deficient Numbers</a><br />
                                                        <a href="../Challenges/AtbashCipher.aspx">
                                                            <img src="../Images/right_black.png"></img>Atbash Cipher</a><br />
                                                        <a href="../Challenges/BasicFormatting.aspx">
                                                            <img src="../Images/right_black.png"></img>Basic Formatting</a><br />
                                                        <a href="../Challenges/ConvertMinutesPage.aspx">
                                                            <img src="../Images/right_black.png"></img>Convert Minutes</a><br />
                                                        <a href="../Challenges/DeBruijnSequence.aspx">
                                                            <img src="../Images/right_black.png"></img>De Bruijn Sequence</a><br />
                                                        <a href="../Challenges/GameOfThrees.aspx">
                                                            <img src="../Images/right_black.png"></img>Game Of Threes</a><br />
                                                        <a href="../Challenges/TwistUpAMessage.aspx">
                                                            <img src="../Images/right_black.png"></img>Twist Up A Message</a><br />
                                                        <a href="../Challenges/TypoglycemiaPage.aspx">
                                                            <img src="../Images/right_black.png"></img>Typoglycemia</a><br />
                                                    </p>
                                                </div>
                                                <div class="col-sm-4">
                                                    <p>
                                                        <a href="../Challenges/GettingADegree.aspx">
                                                            <img src="../Images/right_black.png"></img>Getting A Degree</a><br />
                                                        <a href="../Challenges/KeyFunction.aspx">
                                                            <img src="../Images/right_black.png"></img>Key Function</a><br />
                                                        <a href="../Challenges/LettersInAlphaOrder.aspx">
                                                            <img src="../Images/right_black.png"></img>Letters In Alpha Order</a><br />
                                                        <a href="../Challenges/MirrorEncryption.aspx">
                                                            <img src="../Images/right_black.png"></img>Mirror Encryption</a><br />
                                                        <a href="../Challenges/PuzzleSwapper.aspx">
                                                            <img src="../Images/right_black.png"></img>Puzzle Swapper</a><br />
                                                        <a href="../Challenges/ToBaseN.aspx">
                                                            <img src="../Images/right_black.png"></img>To Base N</a><br />
                                                        <a href="../Challenges/WhatsInTheBag.aspx">
                                                            <img src="../Images/right_black.png"></img>What's In The Bag?</a><br />
                                                    </p>
                                                </div>
                                                <div class="col-sm-4">
                                                    <p>
                                                        <a href="../Challenges/RandomBagSystem.aspx">
                                                            <img src="../Images/right_black.png"></img>Random Bag System</a><br />
                                                        <a href="../Challenges/SailorsAndMonkeys.aspx">
                                                            <img src="../Images/right_black.png"></img>Sailors And Monkeys</a><br />
                                                        <a href="../Challenges/SimplifyingFractions.aspx">
                                                            <img src="../Images/right_black.png"></img>Simplifying Fractions</a><br />
                                                        <a href="../Challenges/SplurthianChemistry101.aspx">
                                                            <img src="../Images/right_black.png"></img>Splurthihan Chemistry 101</a><br />
                                                        <a href="../Challenges/StreamCipher.aspx">
                                                            <img src="../Images/right_black.png"></img>Stream Cipher</a><br />
                                                        <a href="../Challenges/TheNameGame.aspx">
                                                            <img src="../Images/right_black.png"></img>The Name Game</a><br />
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <script>
    </script>
</asp:Content>
