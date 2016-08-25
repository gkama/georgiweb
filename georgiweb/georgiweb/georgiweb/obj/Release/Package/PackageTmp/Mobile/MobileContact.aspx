<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/Mobile.Master" AutoEventWireup="true" CodeBehind="MobileContact.aspx.cs" Inherits="georgiweb.Mobile.MobileContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentMobile" runat="server">
    <style>
        #googleMap {
            width: 100%;
            height: 200px;
            -webkit-filter: grayscale(100%);
            filter: grayscale(100%);
        }
    </style>
    <asp:UpdatePanel ID="updatepanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
                <div id="contact" style="padding: 10px; color: black;">
                    <div class="row">
                        <div class="col-md-4">
                            <p><i class="fa fa-map-marker fa-fw"></i>Cincinnati, Ohio, US</p>
                            <p><i class="fa fa-phone fa-fw"></i>Phone: +01 (859)802-3479</p>
                            <p><i class="fa fa-envelope fa-fw"></i>Email: gkamacharov@gmail.com</p>
                            <p><i class="fa fa-linkedin fa-fw"></i>LinkedIn: <a href="https://www.linkedin.com/in/georgi-kamacharov-41abb284" target="_blank">Georgi Kamacharov</a></p>
                        </div>
                    </div>
                </div>
                <hr />
                <div id="googleMap"></div>
                <hr />
        </ContentTemplate>
    </asp:UpdatePanel>
    <!-- Add Google Maps -->
    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <script>
        var myCenter = new google.maps.LatLng(39.106216, -84.512561);

        function initialize() {
            var mapProp = {
                center: myCenter,
                zoom: 12,
                scrollwheel: false,
                draggable: false,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

            var marker = new google.maps.Marker({
                position: myCenter,
            });

            marker.setMap(map);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
</script>
</asp:Content>
