<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notes.aspx.cs" Inherits="georgiweb.PersonalProjects.Notes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" UpdateMode="Conditional" style="font-family: 'Century Gothic';">
        <ContentTemplate>
            <div class="container-fluid" runat="server" style="padding-left: 100px; padding-right: 100px; margin-top: 40px;">
                <div class="row">
                    <label>Note</label>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>


    <script src="https://www.gstatic.com/firebasejs/3.3.0/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/3.3.0/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/3.3.0/firebase-database.js"></script>
    <script src="https://www.gstatic.com/firebasejs/3.3.0/firebase.js"></script>
    <script>
        // Initialize Firebase
        var config = {
            apiKey: "AIzaSyDmMO4ZmUO1QAYgYESMo7x6qYJDxa_9WSc",
            authDomain: "notes-1f49d.firebaseapp.com",
            databaseURL: "https://notes-1f49d.firebaseio.com",
            storageBucket: "",
        };
        firebase.initializeApp(config);
    </script>


</asp:Content>
