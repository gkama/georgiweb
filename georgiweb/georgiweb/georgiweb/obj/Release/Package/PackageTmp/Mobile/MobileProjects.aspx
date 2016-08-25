<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/Mobile.Master" AutoEventWireup="true" CodeBehind="MobileProjects.aspx.cs" Inherits="georgiweb.Mobile.MobileProjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentMobile" runat="server">

    <asp:UpdatePanel ID="updatepanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="container-fluid">
                <!-- Personal Projects -->
                <div id="work-section" class="section active" style="padding: 0px;">
                    <div class="row">
                        <div class="col-xs-12">
                            <h3 class="section-title">android mobile applications</h3>
                        </div>
                    </div>

                    <div class="row" style="margin-bottom: 5px; margin-top: 5px;">
                        <div class="col-xs-12 col-xs-12 project-box" style="padding: 0px; margin: 0px;">
                            <a href="https://play.google.com/store/apps/details?id=converter.converter" style="color: #5d5d5d; text-decoration: none !important;">
                                <div class="image">
                                    <i class="fa fa-circle-o-notch fa-fw fa-4x"></i>
                                    <h1 class="title">Converter</h1>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="row" style="margin-bottom: 5px; margin-top: 5px;">
                        <div class="col-xs-12 col-xs-12 project-box" style="padding: 0px; margin: 0px;">
                            <a href="https://play.google.com/store/apps/details?id=animations.animations" style="color: #5d5d5d; text-decoration: none !important;">
                                <div class="image">
                                    <i class="fa fa-plus-square fa-fw fa-4x"></i>
                                    <h1 class="title">Dice Master</h1>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="row" style="margin-bottom: 5px; margin-top: 5px;">
                        <div class="col-xs-12 col-xs-12 project-box" style="padding: 0px; margin: 0px;">
                            <a href="https://play.google.com/store/apps/details?id=copypasta.copypasta" style="color: #5d5d5d; text-decoration: none !important;">
                                <div class="image">
                                    <i class="fa fa-files-o fa-fw fa-4x"></i>
                                    <h1 class="title">Copypasta</h1>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="row" style="margin-bottom: 5px; margin-top: 5px;">
                        <div class="col-xs-12 col-xs-12 project-box" style="padding: 0px; margin: 0px;">
                            <a href="https://play.google.com/store/apps/details?id=randomizer.randomizer" style="color: #5d5d5d; text-decoration: none !important;">
                                <div class="image">
                                    <i class="fa fa-random fa-fw fa-4x"></i>
                                    <h1 class="title">Randomizer</h1>
                                </div>
                            </a>
                        </div>
                    </div>



                    <div class="row">
                        <div class="col-xs-12">
                            <h3 class="section-title">asp.net web applications</h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-xs-12 project-box" style="padding: 0px; margin: 0px;">
                            <a href="/Mobile/MobileHome" style="color: #5d5d5d; text-decoration: none !important;">
                                <div class="image">
                                    <i class="fa fa-internet-explorer fa-fw fa-4x"></i>
                                    <h1 class="title">gkamacharov.com</h1>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
