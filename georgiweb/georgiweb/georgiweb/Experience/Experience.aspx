<%@ Page Title="Experience" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Experience.aspx.cs" Inherits="georgiweb.Experience.Experience" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Add a gray background color and some padding to the footer */
        footer {
            padding: 25px;
        }

        .carousel-inner img {
            width: 100%; /* Set width to 100% */
            margin: auto;
            min-height: 200px;
            max-height: 500px;
        }

        /* Hide the carousel text when the screen is less than 600 pixels wide */
        @media (max-width: 600px) {
            .carousel-caption {
                display: none;
            }
        }
    </style>

    <asp:UpdatePanel runat="server" ID="MainUpdatePanel" UpdateMode="Conditional" style="font-family: 'Century Gothic';">
        <ContentTemplate>
            <div class="container-fluid" style="background-color: #e6e6e6; margin-top: 40px;">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="panel panel-default" style="height: 500px;">
                                <div class="panel-heading">
                                    <p style="font-family: 'Century Gothic'; color: black; letter-spacing: 5px;">
                                        <i class="fa fa-internet-explorer" aria-hidden="true"></i>
                                        MEDIA SOURCING
                                    </p>
                                </div>
                                <div class="panel-body text-left">
                                    <p>
                                        'Media Sourcing' is one of the largest professional ASP.NET development projects that I have completed. 
                                    The project is an ASP.NET Webpage that serves as an GUI for internal Employees 
                                    who need to modify, add and look up 'Media Sourcing' data. 
                                    In the backend, there are several tables, stored in a SQL Database, that can be referred to, for historical data, or edited by the End User.
                                    <br />
                                        <br />
                                        Most of the functionality is essentially based on the idea that the user has error-free control over the data. 
                                    Thus, the most challenging part of this project was to tie all of the validated data together in the back-end and store it appropriately.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="panel panel-default" style="height: 500px;">
                                <div class="panel-heading">
                                    <p style="font-family: 'Century Gothic'; color: black; letter-spacing: 5px;">
                                        <i class="fa fa-cog" aria-hidden="true"></i>
                                        ID GENERATION
                                    </p>
                                </div>
                                <div class="panel-body text-left">
                                    <p>
                                        ID Generation is a DLL developed with the .NET framework in C# programming language.
                            In summary, the application's functionality is designed to generate and format an output string
                            that will be send to a ProcessAPI function to decypher it and use the data accordingly.
                                <br />
                                        <br />
                                        Although, it may sound simple, there were a lot of components that played part into fully developing
                            this application to fit the production environment it was released in. Following the flow of the application,
                            initially, a connection to a production database is made. Then, a user can make a call to the main fuction
                            that process the API Requested String and generates/formats the output string, which serves as an API String
                            as well. This process also implements an audit part where sessions and data are stored for PCI Complience
                            purposes. Additionally, the values that are appended to the formatted output string are taken from two stored
                            procedures calls based on the Database connection made initially. Finally, the returned values are
                            error checked and formatted into the output API string.
                       
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="panel panel-default" style="height: 500px;">
                                <div class="panel-heading">
                                    <p style="font-family: 'Century Gothic'; color: black; letter-spacing: 5px;">
                                        <i class="fa fa-cog" aria-hidden="true"></i>
                                        WINNER SELECTION
                                    </p>
                                </div>
                                <div class="panel-body text-left">
                                    <p>
                                        Winner Selection is a DLL developed with the .NET framework in C# programming
                                language. In summary, the application is very similar to ID Generation. It is designed to generate
                                and format an output string that will be send to a ProcessAPI function to decypher it and use it 
                                accordingly.<br />
                                        <br />
                                        Although, it may sound simple, there were also a lot of components that played part into fully
                                developing it to fit the production environment it was released in. Winner Selection creates a
                                connection to a production database and calls a stored procedure with parameters based on the input 
                                API string to generate some of the data appended to the output API string.
                           
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

    <script>
        $(document).ready(function () {
            $('#t1').fadeIn(2000);
            $('#t2').fadeIn(2000);
            $('#main').fadeIn(2000);
            $('#h1').fadeIn(2000);
            $('#h2').fadeIn(2000);
            $('#foot').fadeIn(2000);
        });
    </script>

</asp:Content>
