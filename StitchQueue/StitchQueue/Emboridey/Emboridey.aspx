<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="Emboridey.aspx.cs" Inherits="StitchQueue.Emboridey.Emboridey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <title>Stitch Q: Products Catalog</title>
    <link rel="stylesheet" href="./emboridey/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./emboridey/style.css" type="text/css">
    <link rel="stylesheet" href="./emboridey/responsive.css" type="text/css">
    <link rel="stylesheet" href="./emboridey/animate.css" type="text/css">
    <link rel="stylesheet" href="./emboridey/font-awesome.min.css">
    <link href="./emboridey/jquery.filer-dragdropbox-theme.css" rel="stylesheet">
    <link href="./emboridey/jquery.filer.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <link href="./emboridey/css" rel="stylesheet">
    <link href="./emboridey/css(1)" rel="stylesheet">
    <link href="./emboridey/css(2)" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/head.css">



    <!-- Styles -->

    <script async="" src="./emboridey/analytics.js.download"></script>
    <script src="./emboridey/jquery.min.js.download" type="text/javascript"></script>

    <script src="./emboridey/bootstrap.min.js.download" type="text/javascript"></script>
    <script src="./emboridey/jquery.filer.min.js.download" type="text/javascript"></script>
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
        .residantal .active label, .pro-select .active label, .sortlist .active label, .borrowlist .active label, .currently-employed .active label, .property-cost .active label, .newdes-cost .active label, .newpos-cost .active label, .newcol-cost .active label, .newbck-cost .active label {
            background-image: url('emboridey/Capture.png');
            cursor: pointer;
            box-shadow: 12px 15px 20px 0px rgba(46,61,73,0.15);
            border-radius: 10px;
            transition: all 0.8s ease;
        }

        .view-back {
            height: 55px;
        }

        .asf {
        }

        .bsf {
        }

        .color {
        }

        .cak {
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
            width: 50%;
        }
    </style>
    <script>
        function goBack() {
            window.history.back();
        }
</script>
    <script>

        function storesleevevalue(value) {
            document.getElementById('stylevalue').value = value;
            $(".submit-b").attr('type', 'submit');
            document.getElementById('msg').innerHTML = "";
        }
        function checkvalue() {
            val = document.getElementById('stylevalue').value
            if (val != '') {
                return true
            }
            else {
                document.getElementById('msg').innerHTML = "Please select a design";
                return false
            }
        }
</script>

    <!-- header start here-->

    <!-- header end here -->





    <div style="clear: both;"></div>

    <div class="row">
        <div class="container-fluid">


            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="row wow fadeInUp" style="visibility: visible; animation-name: none;">
                    <p class="header_text"><strong class="home-hd">Your Choose</strong> We Stitch
                        <br>
                        <img src="../images/hr_line2.png" alt="heding image" width="100"></p>
                </div>

                <form action="addon.html" method="post" onsubmit="return checkvalue();">

                    <input type="hidden" name="style" value="" id="stylevalue">

                    <div id="Tokyo" class="tabcontent" style="display: block;">

                        <p class="uplod-text">
                            You are a brilliant designer yourself. Create your fashion with alternatives that suit your qualifications.
 We sew your dress as per your first-class layout so please design your self to have the layout.
                        </p>
                        <div class="container">


                            <div class="row bs-wizard" style="border-bottom: 0;">

                                <div class="col-xs-3 bs-wizard-step complete">
                                    <div class="text-center bs-wizard-stepnum">Step 1</div>
                                    <div class="progress">
                                        <div class="progress-bar"></div>
                                    </div>
                                    <a href="emboridey.html" class="bs-wizard-dot"></a>

                                </div>

                                <div class="col-xs-3 bs-wizard-step desiabled">
                                    <!-- complete -->
                                    <div class="text-center bs-wizard-stepnum">Step 2</div>
                                    <div class="progress">
                                        <div class="progress-bar"></div>
                                    </div>
                                    <a href="addon.html" class="bs-wizard-dot"></a>

                                </div>




                            </div>
                        </div>
                        <div id="msg" style="color: red; font-size: 20px;"></div>
                        <div class="newbck-cost">
                            <div class="col-lg-12">
                                <div class="col-lg-3 cak">
                                    <div class="pro-box" onclick="storesleevevalue(1)">
                                        <label>
                                            <img src="./emboridey/UTC226.png" class="image-responsive" alt="">
                                            <div class="view-back" style="text-align: center; font-family: Montserrat;">As Per Mesurement Design Dress</div>
                                            <!--<div class="pro-box-buton" onclick="storesleevevalue(1)">Select</div>-->
                                        </label>
                                    </div>
                                </div>

                                <div class="col-lg-3 cak">
                                    <div class="pro-box" onclick="storesleevevalue(1)">
                                        <label>
                                            <a href="../index.html#contact">
                                                <img src="./emboridey/UTC225.png" class="image-responsive" alt=""></a>
                                            <div class="view-back" style="text-align: center; font-family: Montserrat;">Upload Your Design</div>
                                            <!--<div class="pro-box-buton" onclick="storesleevevalue(1)">Select</div>-->
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-3 cak">
                                    <div class="pro-box" onclick="storesleevevalue(1)">
                                        <label>
                                            <img src="./emboridey/EXT7.png" class="image-responsive" alt="">
                                            <div class="view-back" style="text-align: center; font-family: Montserrat;">Emboridery Nick Design</div>
                                            <!--<div class="pro-box-buton" onclick="storesleevevalue(1)">Select</div>-->
                                        </label>
                                    </div>
                                </div>

                                <div class="col-lg-3 cak">
                                    <div class="pro-box" onclick="storesleevevalue(2)">
                                        <label>
                                            <img src="./emboridey/EXT6.png" class="image-responsive" alt="">
                                            <div class="view-back" style="text-align: center; font-family: Montserrat;">Emboridery Nick Design</div>
                                            <!--<div class="pro-box-buton" onclick="storesleevevalue(2)">Select</div>-->
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="clear: both"></div>
                        <div class="own-groups">
                            <a href="../index.html"><span class="btn btn-default btn-submit" onclick="goBack()"><i class="fa fa-angle-left" aria-hidden="true" style="font-size: 40px;"></i>
                            </span></a>
                            <span class="btn btn-default btn-submit1"><i class="fa fa-angle-right" aria-hidden="true" style="font-size: 40px;"></i>
                                <input class="submit-b1" type="submit" name="submit"></span>
                        </div>
                    </div>


                </form>
            </div>


        </div>
    </div>
    <div style="clear: both"></div>
    <br>
    <br>








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
                $(this).addClass('active');
            });

            $('.newdes-cost .asf').click(function () {
                $(this).addClass('active').siblings().removeClass('active');
            });

            $('.newpos-cost .bsf').click(function () {
                $(this).addClass('active').siblings().removeClass('active');
            });

            $('.newcol-cost .color').click(function () {
                $(this).addClass('active').siblings().removeClass('active');
            });

            $('.newbck-cost .cak').click(function () {
                $(this).addClass('active').siblings().removeClass('active');
            });



            $('.property-cost .box_3').click(function () {
                $(this).siblings().removeClass('active')
                $(this).addClass('active');
            });
            $('#above').click(function () {
                $(this).children(".box_3").addClass("my-active");
                $(".box_3").removeClass('active')
            });
            $('.pro-select .box_3').click(function () {
                $(this).siblings().removeClass('active')
                $(this).addClass('active');
            });
            $('.sortlist .box_3').click(function () {
                $(this).siblings().removeClass('active')
                $(this).addClass('active');
            });
            $('.borrowlist .box_3').click(function () {
                $(this).siblings().removeClass('active')
                $(this).addClass('active');
            });
            $('.currently-employed .box_3').click(function () {
                $(this).siblings().removeClass('active')
                $(this).addClass('active');
            });

            $('input[name="cost"]').on('change', function () {

                $('input[id="costmanual"]').val($(this).val());
                //   $('input[type="text"]').val('');


            });

            $('input[id="costmanual"]').click(function (event) {
                $('.property-cost').hide();
            });

        });


</script>
</asp:Content>
