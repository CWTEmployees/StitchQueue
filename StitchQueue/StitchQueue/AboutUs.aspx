<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="StitchQueue.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .about_p {
            font-size: 18px;
            font-family: 'Montserrat', sans-serif;
            line-height: 40px;
            color: #000;
        }
    </style>


    <br>
    <br>

    <section id="how-it-works">
        <div class="container-fluid">
            <div class="row wow fadeInUp" style="visibility: visible; animation-name: none;">
                <p class="header_text">ABOUT US
                    <br>
                    <img src="./images/hr_line2.png" alt="heding image" width="100"></p>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12" style="margin-top: -40px;">
                <img src="./images/gif_3.gif" height="auto" width="auto" class="img-responsive">
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12">
                <p class="about_p"><i class="fa fa-paper-plane-o" aria-hidden="true" style="color: deeppink"></i>&nbsp;&nbsp;StitchQ offers an online custom tailoring services as per the customizable measurements are given by the customer</p>
                <br>
                <p class="about_p"><i class="fa fa-paper-plane-o" aria-hidden="true" style="color: deeppink"></i>&nbsp;&nbsp;We provide stitching services with customizable designs for Saree Blouse, Salwar Suits, Anarkali Suits, Kurti Top, Lehenga & Bottoms.</p>
                <br>
                <p class="about_p"><i class="fa fa-paper-plane-o" aria-hidden="true" style="color: deeppink"></i>&nbsp;&nbsp;Additionally, we provide embroidery services with a wide number of designs. We also provide a privilege for a Customer to provide their own designs.</p>
                <br>
                <p class="about_p"><i class="fa fa-paper-plane-o" aria-hidden="true" style="color: deeppink"></i>&nbsp;&nbsp;All these services are provided with pickup and delivery in Hyderabad at minimal charges.</p>


            </div>
        </div>
    </section>






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











    <style type="text/css">
        #contact {
            padding: 50px;
        }

        .input-text {
            height: 50px;
        }

        .area {
            height: 120px !important;
        }

        .form-control {
            -moz-box-shadow: inset -3px -3px 10px #eee;
            -webkit-box-shadow: inset -3px -3px 10px #eee;
            box-shadow: inset -3px -3px 10px #eee;
            border-radius: 15px !important;
        }

        .btn-enquiry {
            padding: 10px;
            padding-bottom: 20px;
            padding-left: 20px;
            width: 130px;
            text-align: center;
            padding-right: 10px;
            background: #E1204F;
            color: #fff;
            font-size: 20px;
            height: 45px;
            border: 2px dashed #fff;
            border-radius: 10px;
            box-shadow: 0 0 0 4px #E1204F, 2px 1px 6px 4px rgba(10, 10, 0, 0.5);
        }

            .btn-enquiry:hover {
                padding: 10px;
                padding-bottom: 20px;
                padding-left: 20px;
                width: 130px;
                text-align: center;
                padding-right: 10px;
                background: #E1204F;
                color: #fff;
                font-size: 20px;
                height: 45px;
                border: 2px dashed #fff;
                border-radius: 10px;
                box-shadow: 0 0 0 4px #E1204F, 2px 1px 6px 4px rgba(10, 10, 0, 0.5);
            }

            .btn-enquiry:active {
                padding: 10px;
                padding-bottom: 20px;
                padding-left: 20px;
                width: 130px;
                text-align: center;
                padding-right: 10px;
                background: #E1204F;
                color: #fff;
                font-size: 20px;
                height: 45px;
                border: 2px dashed #fff;
                border-radius: 10px;
                box-shadow: 0 0 0 4px #E1204F, 2px 1px 6px 4px rgba(10, 10, 0, 0.5);
            }

            .btn-enquiry:focus {
                padding: 10px;
                padding-bottom: 20px;
                padding-left: 20px;
                width: 130px;
                text-align: center;
                padding-right: 10px;
                background: #E1204F;
                color: #fff;
                font-size: 20px;
                height: 45px;
                border: 2px dashed #fff;
                border-radius: 10px;
                box-shadow: 0 0 0 4px #E1204F, 2px 1px 6px 4px rgba(10, 10, 0, 0.5);
            }
    </style>
</asp:Content>
