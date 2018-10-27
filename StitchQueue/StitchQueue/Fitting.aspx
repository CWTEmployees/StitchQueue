<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="Fitting.aspx.cs" Inherits="StitchQueue.Fitting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="css/main.css">

    <link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>
    <script src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js"></script>
    <!-- <script src="./js/wow.js" type="text/javascript"></script> -->
    <script src="./js/back_to_top.js" type="text/javascript"></script>

    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="css/animations.css">

    <script type="text/javascript" src="js/animation.js"></script>
    <meta charset="utf-8">


    <style type="text/css">
        .header_text {
            font-size: 25px;
            font-family: 'Montserrat', sans-serif !important;
            color: #121212;
            text-align: center;
            font-weight: 600;
            text-transform: capitalize;
            line-height: 28px;
        }
    </style>


    <style type="text/css">
        .back_image {
            background: url("./images/why.jpg");
            background-attachment: fixed;
            background-size: 100% 100%;
            background-repeat: no-repeat;
        }

        #why {
            background-image: url("./images/why.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            height: auto;
        }

        .why_choose_us {
            margin-right: 100px;
            margin-left: 100px;
        }

        .row-centered {
            text-align: center;
        }

        .col-centered {
            display: inline-block;
            float: none;
            text-align: left;
            margin-right: -4px;
            text-align: center;
        }
    </style>

    <!--Main Body Area-->
    <div class="container">
        <div class="row">
            <p class="Fitting_header_text">
                Clothes Outfit Alteration Service In Hyderabad
      <br>
                <img src="./images/hr_line2.png" alt="heding image" width="100">
            </p>

            <!--1st column-->
           
            <div class="col-md-3  col-md-offset-2 col-sm-6 col-xs-6 fitting_click_active">
                <div class="fitting_col-ert btn-radio">
                    <img src="images/fitting_kurti.png" alt="Blouse Image" class="fitting_blouse_image">
                    <input type="checkbox" class="hidden">
                    <p class="fitting_heading_wrks_text mt_30 mt_0">
                        Kurta Side Shaping &amp; sleeves
                    </p>
                    <p class="fitting_product_heading_details">
                        <b>500.00/- Onwards</b>
                    </p>
                </div>
                <!--End of 1st col fitting_col-ert-radio-->

                <div class="col-md-12 mt_30 text-center">
                    <div class="number-of-item">
                        <div class="input-group number-spinner">
                            <span class="input-group-btn data-dwn">
                                <button class="btn btn-default btn-info" data-dir="dwn" type="button" onclick="adjust_price(&#39;3&#39;,&#39;500.00&#39;)"><span class="glyphicon glyphicon-minus"></span></button>
                            </span>
                            <input name="data[Alternation][quantity_3]" class="form-control text-center myquantity" value="0" min="0" max="40" data-attr="500.00" type="text" id="AlternationQuantity3">
                            <span class="input-group-btn data-up">
                                <button class="btn btn-default btn-info" data-dir="up" type="button" onclick="adjust_price(&#39;3&#39;,&#39;0.00&#39;)"><span class="glyphicon glyphicon-plus"></span></button>
                            </span>
                        </div>

                    </div>
                </div>

            </div>




            <!--2nd column-->
            <div class="col-md-3   col-sm-6 col-xs-6 fitting_click_active">
                <div class="fitting_col-ert btn-radio">
                    <img src="images/fitting_bottom.png" alt="fitting_kurti" class="fitting_blouse_image">
                    <input type="checkbox" class="hidden">
                    <p class="fitting_heading_wrks_text mt_30 mt_0">
                        Bottom Side Shaping &amp; Length
                    </p>
                    <p class="fitting_product_heading_details">
                        <b>300.00/- Onwards</b>
                    </p>
                </div>
                <!--End of 2nd col fitting_col-ert-radio-->

                <div class="col-md-12 mt_30 text-center">
                    <div class="number-of-item">
                        <div class="input-group number-spinner">
                            <span class="input-group-btn data-dwn">
                                <button class="btn btn-default btn-info" data-dir="dwn" type="button" onclick="adjust_price(&#39;2&#39;,&#39;300.00&#39;)"><span class="glyphicon glyphicon-minus"></span></button>
                            </span>
                            <input name="data[Alternation][quantity_2]" class="form-control text-center myquantity" value="0" min="0" max="40" data-attr="300.00" type="text" id="AlternationQuantity2">
                            <span class="input-group-btn data-up">
                                <button class="btn btn-default btn-info" data-dir="up" type="button" onclick="adjust_price(&#39;2&#39;,&#39;300.00&#39;)"><span class="glyphicon glyphicon-plus"></span></button>
                            </span>
                        </div>

                    </div>
                </div>
            </div>

            <!--3rd column-->
            <div class="col-md-3   col-sm-6 col-xs-6 fitting_click_active">
                <div class="fitting_col-ert btn-radio">
                    <img src="images/fitting_roughing_final.png" alt="roughing_works" class="fitting_blouse_image">
                    <input type="checkbox" class="hidden">
                    <p class="fitting_heading_wrks_text mt_30 mt_0">
                        Roughing   &amp; Patching Work
                    </p>
                    <p class="fitting_product_heading_details">
                        <b>150.00/- Onwards</b>
                    </p>
                </div>
                <!--End of 2nd col fitting_col-ert-radio-->
                <div class="col-md-12 mt_30 text-center">
                    <div class="number-of-item">
                        <div class="input-group number-spinner">
                            <span class="input-group-btn data-dwn">
                                <button class="btn btn-default btn-info" data-dir="dwn" type="button" onclick="adjust_price(&#39;2&#39;,&#39;150.00&#39;)"><span class="glyphicon glyphicon-minus"></span></button>
                            </span>
                            <input name="data[Alternation][quantity_2]" class="form-control text-center myquantity" value="0" min="0" max="40" data-attr="150.00" type="text" id="AlternationQuantity2">
                            <span class="input-group-btn data-up">
                                <button class="btn btn-default btn-info" data-dir="up" type="button" onclick="adjust_price(&#39;2&#39;,&#39;150.00&#39;)"><span class="glyphicon glyphicon-plus"></span></button>
                            </span>
                        </div>

                    </div>
                </div>
            </div>


        </div>
        <!--End of container Col-3 Fitting_click_acive-->
    </div>
    <!--End of Row Area-->

    </div><!--End of Container Area-->
    <!--End of Main Body Area-->

    <br>
    <br>

    <div class="col-md-12 col-sm-12 col-xs-12 mt_30 text-center">

        <div class="form-wizard-buttons">
            <p>Rs:- <span class="red_clr_fnt"><b><i class="fa fa-inr"></i><span id="pricevalue">0</span></b></span></p>
            <button type="submit" class="btn enble contunie">Continue </button>
        </div>
    </div>
</asp:Content>
