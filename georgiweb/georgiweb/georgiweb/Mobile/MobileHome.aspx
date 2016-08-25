<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/Mobile.Master" AutoEventWireup="true" CodeBehind="MobileHome.aspx.cs" Inherits="georgiweb.Mobile.MobileHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContentMobile" runat="server">
    <style>
        
    </style>
    <asp:UpdatePanel runat="server" ID="updatepanel" UpdateMode="Conditional" style="font-family: 'Century Gothic'">
        <ContentTemplate>
            <div class="container-fluid">
                <!-- Home Page -->
                <div id="work-section" class="section active" style="padding: 0px;">
                    <div class="row" style="margin-bottom: 5px; margin-top: 5px;">
                        <div class="col-xs-12 col-xs-12 project-box" style="padding: 0px; margin: 0px;">
                            <a href="/Mobile/MobileAbout" style="color: #5d5d5d; text-decoration: none !important;">
                                <div class="image">
                                    <i class="fa fa-exclamation fa-fw fa-4x"></i>
                                    <h1 class="title">About</h1>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="row" style="margin-bottom: 5px;">
                        <div class="col-xs-12 col-xs-12 project-box" style="padding: 0px; margin: 0px;">
                            <a href="/Mobile/MobileResume" style="color: #5d5d5d; text-decoration: none !important;">
                                <div class="image">
                                    <i class="fa fa-user fa-fw fa-4x"></i>
                                    <h1 class="title">Resume</h1>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="row" style="margin-bottom: 5px;">
                        <div class="col-xs-12 col-xs-12 project-box" style="padding: 0px; margin: 0px;">
                            <a href="/Mobile/MobileProjects" style="color: #5d5d5d; text-decoration: none !important;">
                                <div class="image">
                                    <i class="fa fa-laptop fa-fw fa-4x"></i>
                                    <h1 class="title">Projects</h1>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="row" style="margin-bottom: 5px;">
                        <div class="col-xs-12 col-xs-12 project-box" style="padding: 0px; margin: 0px;">
                            <a href="/Mobile/MobileContact" style="color: #5d5d5d; text-decoration: none !important;">
                                <div class="image">
                                    <i class="fa fa-phone fa-fw fa-4x"></i>
                                    <h1 class="title">Contact</h1>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <script>
    </script>
</asp:Content>
