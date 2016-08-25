<%@ Page Title="Blog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="georgiweb.Blog.Blog" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #sidebar {
            width:300px;
            float:left;
            font-family: Montserrat, sans-serif;
            margin-bottom: 0;
            border: 0;
            font-size: 11px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }

        #content {
            width:724px;
            float:right;
            padding-left:24px;
        }

        /* navigation */
        navc {
            width:300px;
            background-color:rgb(240,240,240);
            border:solid 1px rgb(220,220,220);
            padding:0 12px;
        }

        navc.stick {
            position: fixed;
            top: 0;
            z-index: 10000;
            margin-top:12px;
        }

        navc ul {
            list-style-type:none;
            margin:0;
            padding:0;
        }

        navc li {
    
        }
    
        navc li a {
            color:rgb(50,50,50);
            font-weight:700;
        }

        a.navc-active {
            color:#ccc;
        }
    </style>
    <asp:UpdatePanel ID="upPanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <h2 class="text-center" style="font-family: 'Century Gothic'; letter-spacing: 10px; color: white;">PERSONAL BLOG</h2>
            <hr />
            <div id="main" style="color: white;">
                <div class="container clearfix">        
                    <div id="sidebar">
                        <div id="navc-anchor"></div>
                            <nav>
                                <ul>
                                    <li><a href="#home">HOME</a></li>
                                    <li><a href="#about">ABOUT</a></li>
                                    <li><a href="#services">SERVICES</a></li>
                                    <li><a href="#blog">BLOG</a></li>
                                    <li><a href="#contact">CONTACT</a></li>
                                </ul>
                            </nav>
                        </div><!-- /sidebar -->
                    <div id="content">
                        <section id="home">
                            <h5 style="font-family: 'Century Gothic'; letter-spacing: 5px">HOME</h5>
                            Dice Master is a simple Android Mobile Application which has various purposes. <br /><br />There is a Regular Die involved where you can simply use it to play 
                            around or any scenario involving the need of a die. <br /><br />Additionally, there are three unique mini games in the Application. One is the Matching Dice Game. You choose 
                            a category and try to match your roll with a random roll between 1 and 36. If you choose a lower category, then your chances of matching a roll decrease, and 
                            visa versa. The other two games are the High-Low Dice Game and the Chuck-A-Luck Game - this is where you can bet! You input your betting 
                            guess and play the game. Once the Total Amount reaches 0 you lose. Then you can simply
                        </section>
                        <section id="about">
                            <hr />
                            <h5 style="font-family: 'Century Gothic'; letter-spacing: 5px">ABOUT</h5>
                            Dice Master is a simple Android Mobile Application which has various purposes. <br /><br />There is a Regular Die involved where you can simply use it to play 
                            around or any scenario involving the need of a die. <br /><br />Additionally, there are three unique mini games in the Application. One is the Matching Dice Game. You choose 
                            a category and try to match your roll with a random roll between 1 and 36. If you choose a lower category, then your chances of matching a roll decrease, and 
                            visa versa. The other two games are the High-Low Dice Game and the Chuck-A-Luck Game - this is where you can bet! You input your betting 
                            guess and play the game. Once the Total Amount reaches 0 you lose. Then you can simply
                        </section>
                        <section id="services">
                            <hr />
                            <h5 style="font-family: 'Century Gothic'; letter-spacing: 5px">SERVICES</h5>
                            Dice Master is a simple Android Mobile Application which has various purposes. <br /><br />There is a Regular Die involved where you can simply use it to play 
                            around or any scenario involving the need of a die. <br /><br />Additionally, there are three unique mini games in the Application. One is the Matching Dice Game. You choose 
                            a category and try to match your roll with a random roll between 1 and 36. If you choose a lower category, then your chances of matching a roll decrease, and 
                            visa versa. The other two games are the High-Low Dice Game and the Chuck-A-Luck Game - this is where you can bet! You input your betting 
                            guess and play the game. Once the Total Amount reaches 0 you lose. Then you can simply
                        </section>
                        <section id="blog">
                            <hr />
                            <h5 style="font-family: 'Century Gothic'; letter-spacing: 5px">BLOG</h5>
                            Dice Master is a simple Android Mobile Application which has various purposes. <br /><br />There is a Regular Die involved where you can simply use it to play 
                            around or any scenario involving the need of a die. <br /><br />Additionally, there are three unique mini games in the Application. One is the Matching Dice Game. You choose 
                            a category and try to match your roll with a random roll between 1 and 36. If you choose a lower category, then your chances of matching a roll decrease, and 
                            visa versa. The other two games are the High-Low Dice Game and the Chuck-A-Luck Game - this is where you can bet! You input your betting 
                            guess and play the game. Once the Total Amount reaches 0 you lose. Then you can simply
                        </section>
                        <section id="contact">
                            <hr />
                            <h5 style="font-family: 'Century Gothic'; letter-spacing: 5px">CONTACT</h5>
                            Dice Master is a simple Android Mobile Application which has various purposes. <br /><br />There is a Regular Die involved where you can simply use it to play 
                            around or any scenario involving the need of a die. <br /><br />Additionally, there are three unique mini games in the Application. One is the Matching Dice Game. You choose 
                            a category and try to match your roll with a random roll between 1 and 36. If you choose a lower category, then your chances of matching a roll decrease, and 
                            visa versa. The other two games are the High-Low Dice Game and the Chuck-A-Luck Game - this is where you can bet! You input your betting 
                            guess and play the game. Once the Total Amount reaches 0 you lose. Then you can simply
                        </section>
                    </div><!-- /#content -->
                </div><!-- /.container -->
            </div><!-- /#main -->
        </ContentTemplate>
    </asp:UpdatePanel>

    <script>
        $(document).ready(function () {

            /** 
             * This part does the "fixed navigation after scroll" functionality
             * We use the jQuery function scroll() to recalculate our variables as the 
             * page is scrolled/
             */
            $(window).scroll(function () {
                var window_top = $(window).scrollTop() + 12; // the "12" should equal the margin-top value for nav.stick
                var div_top = $('#navc-anchor').offset().top;
                if (window_top > div_top) {
                    $('navc').addClass('stick');
                } else {
                    $('navc').removeClass('stick');
                }
            });

            /**
             * This part causes smooth scrolling using scrollto.js
             * We target all a tags inside the nav, and apply the scrollto.js to it.
             */
            $("navc a").click(function (evn) {
                evn.preventDefault();
                $('html,body').scrollTo(this.hash, this.hash);
            });

            /**
             * This part handles the highlighting functionality.
             * We use the scroll functionality again, some array creation and 
             * manipulation, class adding and class removing, and conditional testing
             */
            var aChildren = $("navc li").children(); // find the a children of the list items
            var aArray = []; // create the empty aArray
            for (var i = 0; i < aChildren.length; i++) {
                var aChild = aChildren[i];
                var ahref = $(aChild).attr('href');
                aArray.push(ahref);
            } // this for loop fills the aArray with attribute href values

            $(window).scroll(function () {
                var windowPos = $(window).scrollTop(); // get the offset of the window from the top of page
                var windowHeight = $(window).height(); // get the height of the window
                var docHeight = $(document).height();

                for (var i = 0; i < aArray.length; i++) {
                    var theID = aArray[i];
                    var divPos = $(theID).offset().top; // get the offset of the div from the top of page
                    var divHeight = $(theID).height(); // get the height of the div in question
                    if (windowPos >= divPos && windowPos < (divPos + divHeight)) {
                        $("a[href='" + theID + "']").addClass("navc-active");
                    } else {
                        $("a[href='" + theID + "']").removeClass("navc-active");
                    }
                }

                if (windowPos + windowHeight == docHeight) {
                    if (!$("navc li:last-child a").hasClass("navc-active")) {
                        var navActiveCurrent = $(".navc-active").attr("href");
                        $("a[href='" + navActiveCurrent + "']").removeClass("navc-active");
                        $("navc li:last-child a").addClass("navc-active");
                    }
                }
            });
        });
    </script>
</asp:Content>
