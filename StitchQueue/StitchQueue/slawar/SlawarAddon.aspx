<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="SlawarAddon.aspx.cs" Inherits="StitchQueue.slawar.SlawarAddon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Stitch Q: Products Catalog</title>
    <!-- Styles -->
    <link rel="stylesheet" href="./addon/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./addon/style.css" type="text/css">
    <link rel="stylesheet" href="./addon/responsive.css" type="text/css">
    <link rel="stylesheet" href="./addon/animate.css" type="text/css">
    <link rel="stylesheet" href="./addon/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--<link rel="shortcut icon" href="https://www.epitomestitches.com/favicon.ico" type="image/x-icon">-->
    <link href="./addon/jquery.filer-dragdropbox-theme.css" rel="stylesheet">
    <link href="./addon/jquery.filer.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <link href="./addon/css" rel="stylesheet">
    <link href="./addon/css(1)" rel="stylesheet">
    <link href="./addon/css(2)" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/head.css">


    <script async="" src="./addon/analytics.js.download"></script>
    <script src="./addon/jquery.min.js.download" type="text/javascript"></script>
    <!-- bootstrap script -->
    <script src="./addon/bootstrap.min.js.download" type="text/javascript"></script>
    <!-- google analytics code -->

    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-71994033-1', 'auto');
        ga('send', 'pageview');

</script>
    <!-- end google analytics code -->
    <style>
        .residantal .active label, .pro-select .active label, .sortlist .active label, .borrowlist .active label, .currently-employed .active label, .property-cost .active label, .newdes-cost .active label, .newpos-cost .active label, .newcol-cost .active label, .newbck-cost .active label, .newgol-cost .active label, .newlab-cost .active label, .newlab-pre .active label, .newbot-pre .active label, .newbotom-pre .active label, .property-cost-new .active label {
            background-image: url('addon/Capture.png');
            cursor: pointer;
        }

        .view-back {
            height: 35px;
        }

        .asf {
        }

        .bsf {
        }

        .color {
        }

        .cak {
        }

        .bol {
        }

        .tab {
        }

        .pos {
        }

        .list {
        }

        .style {
        }

        .tyle {
        }

        .pro-box {
            border: none;
        }

        .own-groups {
            width: 100%;
            text-align: center;
            position: fixed;
            padding: 4px 0;
            background-color: #EEF3ED;
            bottom: 0;
            left: 0;
            right: 0;
            z-index: 200;
            border-top: 1px solid #dfdfdf;
        }

        .btn-submit {
            position: relative;
            overflow: hidden;
            font-size: 20px;
            padding: 8px 26px;
            background-color: #FF7e82;
            color: #ffffff;
        }

        .btn-submit1 {
            position: relative;
            overflow: hidden;
            font-size: 20px;
            padding: 8px 26px;
            background-color: #FF7e82;
            color: #ffffff;
        }

        .text-box {
            font-size: 14px;
        }

        .view-back {
            font-size: 14px;
        }
    </style>
    <style>
        .bs-wizard {
            margin-top: 40px;
        }

        /*Form Wizard*/
        .bs-wizard {
            border-bottom: solid 1px #e0e0e0;
            padding: 0 0 10px 0;
        }

            .bs-wizard > .bs-wizard-step {
                padding: 0;
                position: relative;
            }

                .bs-wizard > .bs-wizard-step + .bs-wizard-step {
                }

                .bs-wizard > .bs-wizard-step .bs-wizard-stepnum {
                    color: #595959;
                    font-size: 16px;
                    margin-bottom: 5px;
                }

                .bs-wizard > .bs-wizard-step .bs-wizard-info {
                    color: #999;
                    font-size: 14px;
                }

                .bs-wizard > .bs-wizard-step > .bs-wizard-dot {
                    position: absolute;
                    width: 30px;
                    height: 30px;
                    display: block;
                    background: #fbe8aa;
                    top: 45px;
                    left: 50%;
                    margin-top: -15px;
                    margin-left: -15px;
                    border-radius: 50%;
                }

                    .bs-wizard > .bs-wizard-step > .bs-wizard-dot:after {
                        content: ' ';
                        width: 14px;
                        height: 14px;
                        background: #FF7e82;
                        border-radius: 50px;
                        position: absolute;
                        top: 8px;
                        left: 8px;
                    }

                .bs-wizard > .bs-wizard-step > .progress {
                    position: relative;
                    border-radius: 0px;
                    height: 8px;
                    box-shadow: none;
                    margin: 20px 0;
                }

                    .bs-wizard > .bs-wizard-step > .progress > .progress-bar {
                        width: 0px;
                        box-shadow: none;
                        background: #fbe8aa;
                    }

                .bs-wizard > .bs-wizard-step.complete > .progress > .progress-bar {
                    width: 100%;
                }

                .bs-wizard > .bs-wizard-step.active > .progress > .progress-bar {
                    width: 50%;
                }

                .bs-wizard > .bs-wizard-step:first-child.active > .progress > .progress-bar {
                    width: 0%;
                }

                .bs-wizard > .bs-wizard-step:last-child.active > .progress > .progress-bar {
                    width: 100%;
                }

                .bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot {
                    background-color: #f5f5f5;
                }

                    .bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot:after {
                        opacity: 0;
                    }

                .bs-wizard > .bs-wizard-step:first-child > .progress {
                    left: 50%;
                    width: 50%;
                }

                .bs-wizard > .bs-wizard-step:last-child > .progress {
                    width: 50%;
                }

                .bs-wizard > .bs-wizard-step.disabled a.bs-wizard-dot {
                    pointer-events: none;
                }

        .col-xs-3 {
            width: 20%;
        }
    </style>
    <script>
        function goBack() {
            window.history.back();
        }
</script>
    <script>

        function toplining(value) {
            var tp = document.getElementById('toplining').value;
            if (tp != value) {
                document.getElementById('toplining').value = value;
            }
            else {
                document.getElementById('toplining').value = '';
            }

        }
        function placket(value) {
            var placket = document.getElementById('placket').value;
            if (placket != value) {
                document.getElementById('placket').value = value;
            }
            else {
                document.getElementById('placket').value = '';
            }
        } function closing(value) {
            var closing = document.getElementById('closing').value;
            if (closing != value) {
                document.getElementById('closing').value = value;
            }
            else {
                document.getElementById('closing').value = '';
            }
        } function bstyle(value) {
            var bstyle = document.getElementById('bstyle').value;
            if (bstyle != value) {
                document.getElementById('bstyle').value = value;
            }
            else {
                document.getElementById('bstyle').value = '';
            }
        } function bottomlining(value) {
            var bottomlining = document.getElementById('bottomlining').value;
            if (bottomlining != value) {
                document.getElementById('bottomlining').value = value;
            }
            else {
                document.getElementById('bottomlining').value = '';
            }
        }
        $(document).ready(function () {
            $(".other").click(function () {
                var favorite = [];
                $.each($("input[name='other']:checked"), function () {
                    favorite.push($(this).val());
                });
                $('#others').val(favorite.join(","));

            });
        });
</script>
    <!-- header start here-->




    <div style="clear: both;"></div>

    <div class="container">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="row wow fadeInUp" style="visibility: visible; animation-name: none;">
                <p class="header_text"><strong class="home-hd">Your Choose</strong> We Stitch
                    <br>
                    <img src="../images/hr_line2.png" alt="heding image" width="100"></p>
            </div>
            <form action="#" method="post">

                <input type="hidden" name="toplining" value="" id="toplining">
                <input type="hidden" name="placket" value="" id="placket">
                <input type="hidden" name="closing" value="" id="closing">
                <input type="hidden" name="others" id="others" value="">
                <input type="hidden" name="bottomlining" id="bottomlining" value="">
                <input type="hidden" name="bstyle" id="bstyle" value="">
                <div id="Tokyo" class="tabcontent" style="display: block;">

                    <p class="uplod-text">
                        You are a great designer yourself. Create your style with options that suits you best.
 We stitch your dress as per your best design so please design yourself to have the design.
                    </p>
                    <div class="container">


                        <div class="row bs-wizard" style="border-bottom: 0;">

                            <div class="col-xs-3 bs-wizard-step complete">
                                <div class="text-center bs-wizard-stepnum">Step 1</div>
                                <div class="progress">
                                    <div class="progress-bar"></div>
                                </div>
                                <a href="front.html" class="bs-wizard-dot"></a>

                            </div>

                            <div class="col-xs-3 bs-wizard-step complete">
                                <!-- complete -->
                                <div class="text-center bs-wizard-stepnum">Step 2</div>
                                <div class="progress">
                                    <div class="progress-bar"></div>
                                </div>
                                <a href="back.html" class="bs-wizard-dot"></a>

                            </div>

                            <div class="col-xs-3 bs-wizard-step complete">
                                <!-- complete -->
                                <div class="text-center bs-wizard-stepnum">Step 3</div>
                                <div class="progress">
                                    <div class="progress-bar"></div>
                                </div>
                                <a href="sleeve.html" class="bs-wizard-dot"></a>

                            </div>

                            <div class="col-xs-3 bs-wizard-step complete">
                                <!-- active -->
                                <div class="text-center bs-wizard-stepnum">Step 4</div>
                                <div class="progress">
                                    <div class="progress-bar"></div>
                                </div>
                                <a href="bottom.html" class="bs-wizard-dot"></a>

                            </div>
                            <div class="col-xs-3 bs-wizard-step complete">
                                <!-- active -->
                                <div class="text-center bs-wizard-stepnum">Step 5</div>
                                <div class="progress">
                                    <div class="progress-bar"></div>
                                </div>
                                <a href="addon.html" class="bs-wizard-dot"></a>

                            </div>
                        </div>
                    </div>
                    <div id="msg" style="color: red; font-size: 20px;"></div>
                    <div class="newgol-cost">
                        <div class="row">
                            <div align="left" class="title">Top Lining</div>
                            <div class="col-lg-3 col-md-3 col-sm-6 bol">
                                <div class="pro-box" onclick="toplining(2)">
                                    <label>
                                        <img src="./addon/American-Crepe.png" class="image-responsive" alt="">
                                        <div class="view-back" style="text-align: center; font-family: Montserrat;">American Crepe Lining</div>
                                        <div class="view-back">Rs. 200/-</div>
                                    </label>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-3 col-sm-6 bol">
                                <div class="pro-box" onclick="toplining(1)">
                                    <label>
                                        <img src="./addon/Task-106-Add-Ons1.png" class="image-responsive" alt="">
                                        <div class="view-back" style="text-align: center; font-family: Montserrat;">Premium Cotton Lining</div>
                                        <div class="view-back">Rs. 150/-</div>
                                    </label>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="newlab-cost">
                        <div class="row">
                            <div align="left" style="color: red; font-size: 20px;">Closing</div>
                            <div class="col-lg-3 col-md-3 col-sm-6 tab">
                                <div class="pro-box" onclick="closing(4)">
                                    <label>
                                        <img src="./addon/BackwithZip1.png" class="image-responsive" alt="">
                                        <div class="view-back" style="text-align: center; font-family: Montserrat;">Back with Zip</div>
                                        <div class="view-back">Rs.25/-</div>
                                    </label>
                                </div>
                            </div>

                        </div>
                    </div>

                    <!----------start placket-------->
                    <div class="newlab-pre">
                        <div class="col-lg-12">
                        </div>
                    </div>
                    <!----------end placket-------->


                    <div class="property-cost-new">
                        <div align="left" style="color: red; font-size: 20px;">Others</div>
                        <div class="col-lg-3 col-md-3 col-sm-6 other-item">
                            <div class="pro-box">
                                <div class="check-box">
                                    <img src="./addon/Hemming-for-Dupatta1.png" class="image-responsive" alt="">
                                    <input type="checkbox" value="6" name="other" class="other">
                                    <div class="view-back" style="text-align: center; font-family: Montserrat;">Dupatta Pico</div>
                                    <div class="view-back">Rs. 40/-</div>
                                </div>
                                <!--<div class="pro-box-buton" onclick="storeaddonvalue(6)">Select</div>-->
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-3 col-sm-6 other-item">
                            <div class="pro-box">
                                <div class="check-box">
                                    <img src="./addon/Binding-on-Neckline-and-Sle.png" class="image-responsive" alt="">
                                    <input type="checkbox" value="4" name="other" class="other">
                                    <div class="view-back" style="text-align: center; font-family: Montserrat;">Piping</div>
                                    <div class="view-back">Rs. 50/-</div>
                                </div>
                                <!--<div class="pro-box-buton" onclick="storeaddonvalue(4)">Select</div>-->
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-3 col-sm-6 other-item">
                            <div class="pro-box">
                                <div class="check-box">
                                    <img src="./addon/Tassels-with-Neck-Ties1.png" class="image-responsive" alt="">
                                    <input type="checkbox" value="3" name="other" class="other">
                                    <div class="view-back" style="text-align: center; font-family: Montserrat;">Tassels with Neck Ties</div>
                                    <div class="view-back">Rs. 50/-</div>
                                </div>
                                <!--<div class="pro-box-buton" onclick="storeaddonvalue(3)">Select</div>-->
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-3 col-sm-6 other-item">
                            <div class="pro-box">
                                <div class="check-box">
                                    <img src="./addon/5-Days-deli.png" class="image-responsive" alt="">
                                    <input type="checkbox" value="8" name="other" class="other">
                                    <div class="view-back" style="text-align: center; font-family: Montserrat;">Delivery in 5 days</div>
                                    <div class="view-back">Rs. 100/-</div>
                                </div>
                                <!--<div class="pro-box-buton" onclick="storeaddonvalue(8)">Select</div>-->
                            </div>
                        </div>

                    </div>

                    <div class="newbot-pre">
                        <div class="row">
                            <div align="left" style="color: red; font-size: 20px;">Botton Lining</div>
                            <div class="col-lg-3 col-md-3 col-sm-6 list">
                                <div class="pro-box" onclick="bottomlining(1)">
                                    <label>
                                        <img src="./addon/Task-106-Add-Ons1.png" class="image-responsive" alt="">
                                        <div class="view-back" style="text-align: center; font-family: Montserrat;">Premium Cotton Lining</div>
                                        <div class="view-back">Rs. 150/-</div>
                                    </label>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="newbotom-pre">
                        <div align="left" style="color: red; font-size: 20px;">Bottom style</div>
                        <div class="col-lg-3 col-md-3 col-sm-6 style">
                            <div class="pro-box" onclick="bstyle(2)">
                                <label>
                                    <img src="./addon/Waist-with-Elastic1..png" class="image-responsive" alt="">
                                    <div class="view-back" style="text-align: center; font-family: Montserrat;">Waist with Strings</div>
                                    <div class="view-back">Rs. 0/-</div>
                                </label>
                            </div>
                        </div>


                        <div class="col-lg-3 col-md-3 col-sm-6 style">
                            <div class="pro-box" onclick="bstyle(1)">
                                <label>
                                    <img src="./addon/Waist-with-Normal-Strings1.png" class="image-responsive" alt="">
                                    <div class="view-back" style="text-align: center; font-family: Montserrat;">Waist with Elastic</div>
                                    <div class="view-back">Rs. 50/-</div>
                                </label>
                            </div>
                        </div>

                    </div>


                    <div style="clear: both"></div>
                    <div class="own-groups">
                        <a href="#"><span class="btn btn-default btn-submit" onclick="goBack()"><i class="fa fa-angle-left" aria-hidden="true" style="font-size: 40px;"></i></span></a>
                        <span class="btn btn-default btn-submit1"><i class="fa fa-angle-right" aria-hidden="true" style="font-size: 40px;"></i>
                            <input class="submit-b1" type="submit" name="submit"></span>
                    </div>

                    <!--<div class="col-lg-3 col-md-3 col-sm-3 wow bounceInUp">
<div class="pro-box">
<img src="images/scatch-image.jpg" class="image-responsive" alt=""/>
<div class="pro-box-buton">Select</div>
</div>
</div>-->


                </div>

            </form>
        </div>


    </div>
    <div style="clear: both"></div>
    <br>
    <br>






    <script src="./addon/wow.min.js.download" type="text/javascript"></script>
    <script>
        new WOW().init();
     </script>


    <script type="text/javascript">
        $(document).ready(function (e) {
            $(".tabcontent:first").fadeIn('fast');
        });
        function openCity(evt, cityName) {
            // Declare all variables
            var i, tabcontent, tablinks;

            // Get all elements with class="tabcontent" and hide them


            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }


            // Get all elements with class="tablinks" and remove the class "active"
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }

            // Show the current tab, and add an "active" class to the link that opened the tab
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " active";
        }
    </script>
    <script>
        $(document).ready(function (e) {
            $('.residantal .box_3').click(function () {
                $(this).siblings().removeClass('active')
                $(this).toggleClass('active');
            });

            $('.newdes-cost .asf').click(function () {
                $(this).toggleClass('active').siblings().removeClass('active');
            });

            $('.newpos-cost .bsf').click(function () {
                $(this).toggleClass('active').siblings().removeClass('active');
            });

            $('.newcol-cost .color').click(function () {
                $(this).toggleClass('active').siblings().removeClass('active');
            });

            $('.newbck-cost .cak').click(function () {
                $(this).toggleClass('active').siblings().removeClass('active');
            });

            $('.newgol-cost .bol').click(function () {
                $(this).toggleClass('active').siblings().removeClass('active');
            });

            $('.newlab-cost .tab').click(function () {
                $(this).toggleClass('active').siblings().removeClass('active');
            });

            $('.newlab-pre .pos').click(function () {
                $(this).toggleClass('active').siblings().removeClass('active');
            });

            $('.newbot-pre .list').click(function () {
                $(this).toggleClass('active').siblings().removeClass('active');
            });


            $('.newbotom-pre .style').click(function () {
                $(this).toggleClass('active').siblings().removeClass('active');
            });

            $('.property-cost .box_3').click(function () {
                $(this).siblings().removeClass('active')
                $(this).toggleClass('active');
            });
            $('#above').click(function () {
                $(this).children(".box_3").addClass("my-active");
                $(".box_3").removeClass('active')
            });
            $('.pro-select .box_3').click(function () {
                $(this).siblings().removeClass('active')
                $(this).toggleClass('active');
            });
            $('.sortlist .box_3').click(function () {
                $(this).siblings().removeClass('active')
                $(this).toggleClass('active');
            });
            $('.borrowlist .box_3').click(function () {
                $(this).siblings().removeClass('active')
                $(this).toggleClass('active');
            });
            $('.currently-employed .box_3').click(function () {
                $(this).siblings().removeClass('active')
                $(this).toggleClass('active');
            });

            //    $('.pro-box').click(function(){
            //	$(this).toggleClass('active').siblings().removeClass('active');
            //    });

            $('input[name="cost"]').on('change', function () {

                $('input[id="costmanual"]').val($(this).val());
                //   $('input[type="text"]').val('');


            });

            $('input[id="costmanual"]').click(function (event) {
                $('.property-cost').hide();
            });

        });

        $(document).ready(function (e) {
            $(".check-box").click(function () {
                $(this).toggleClass("check");
            });
        });
</script>
</asp:Content>
