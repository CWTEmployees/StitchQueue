<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="StitchQueue.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .contact-bg {
            background: #f9f9f9;
            float: left;
            width: 100%;
            height: auto;
            padding: 0px;
            margin: 20px 0px;
        }

        .contact-hd {
            font-size: 20px;
            color: #E1206B;
            text-transform: uppercase;
            font-family: 'Montserrat', sans-serif !important;
        }

        .contact-text {
            font-size: 16px;
            line-height: 27px;
            padding: 5px 0px;
            color: #333333;
            font-family: 'Montserrat', sans-serif;
        }

        .contact-form-text {
            border: 1px solid #EDEDED;
            font-size: 16px;
            margin: 2px 0px;
            padding-left: 12px;
            font-weight: 100;
            line-height: 40PX;
            width: 32.90%;
            font-family: 'Montserrat', sans-serif;
        }

        .contact-form-massage-text {
            border: 1px solid #EDEDED;
            font-size: 16px;
            margin: 2px 0px;
            padding-left: 12px;
            font-weight: 100;
            line-height: 120PX;
            width: 100%;
            font-family: 'Montserrat', sans-serif;
        }

        .text-bg {
            background: #fff;
            box-shadow: 0 7px 17px 0 rgba(23,84,116,0.18);
            float: left;
            width: 100%;
            height: auto;
            padding: 15px;
            margin: 20px 0px;
        }

        .map-bg {
            background: #fff;
            box-shadow: 0 7px 17px 0 rgba(23,84,116,0.18);
            float: left;
            width: 100%;
            height: auto;
            padding: 2px;
            margin: 20px 0px;
        }

        .form-box-rght {
            background: #f9f9f9;
            float: left;
            width: 100%;
            height: auto;
            padding: 10px;
            margin-bottom: 20px;
        }

        .form-text {
            border: 1px solid #EDEDED;
            margin: 2px 0px;
            padding-left: 12px;
            font-weight: 100;
            line-height: 40PX;
            width: 168px;
            font-family: 'Montserrat', sans-serif;
        }

        .massage-text {
            border: 1px solid #EDEDED;
            margin: 2px 0px;
            padding-left: 12px;
            font-weight: 100;
            line-height: 40PX;
            width: 340px;
            font-family: 'Montserrat', sans-serif;
        }

        .send-buton {
            background: #E1206B;
            border: 0px;
            color: #ffffff;
            font-size: 16px;
            padding: 4px 15px;
            float: right;
            font-family: 'Montserrat', sans-serif;
        }
    </style>
    <style type="text/css">
        .header_text {
            font-size: 25px;
            font-family: 'Montserrat', sans-serif;
            color: #121212;
            text-align: center;
            font-weight: normal;
            text-transform: capitalize;
            line-height: 28px;
        }
    </style>
    <div class="container-fluid">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12">
                <!-- <h1 class="heading h2-text-aline"><span class="home-hd">Reach</span> Us</h1> -->
                <p>&emsp;</p>
                <div class="row wow fadeInUp" style="visibility: visible; animation-name: none;">
                    <p class="header_text">Reach us
                        <br>
                        <img src="./images/hr_line2.png" alt="heding image" width="100"></p>
                </div>
                <div class="line-up"></div>
                <div class="line-down"></div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="right-box">
                        <div class="text-bg body-text">
                            <div class="contact-hd">Stitch queue</div>
                            <p class="contact-text">
                                Flat No 501, 5st Floor, B-Block, Sri Lakshmi Grand,
                                <br>
                                opp. Madhura nagar Arch, Nizampet, Pragathinagar, JNTU Kukatpally,<br>
                                Hyderabad, Telangana, Pin Code: 560029
                            </p>

                            <p class="contact-text"><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;info@stitchq.com</p>
                            <p class="contact-text"><i class="fa fa-phone" aria-hidden="true"></i>&nbsp; +91 99999 99999</p>
                            <p class="contact-text"><strong>Outlet Timings </strong>: 10:30 am to 8:30pm</p>
                            <p class="contact-text" style="padding-bottom: 35px !important;"><strong>Sunday </strong>: Holiday</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="right-box1">
                        <div class="map-bg">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3804.759423343635!2d78.38953031418993!3d17.518993987999863!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb8e03b13c43a1%3A0x5cc8c848c91adecf!2sCharan+Web+Technologies!5e0!3m2!1sen!2sin!4v1536556972344" width="100%" height="370" frameborder="0" style="border: 0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>

                <!--    
            <h1>&emsp;</h1><h1>&emsp;</h1>
			<div class="row wow fadeInUp" style="visibility: visible; animation-name: none;">
	         	<p class="header_text">Get in Touch <br><img src="./images/hr_line2.png" alt="heding image" width="100"></p>
	       	</div>  
			<div class="contact-bg">
				<div class="form-box-rght">   
					<form method="post" action="#" onsubmit="return valid();">
						<div class="row-centered">
					        <div class="col-md-6 col-sm-6 col-xs-12 col-centered">
					        	<p>&emsp;</p>
					        	<p>&emsp;</p>
						        <input type="text" name="name" class="form-control input-text" placeholder="Enter name"><br>
						        <input type="text" name="mobile" class="form-control input-text" placeholder="Enter Mobile Number"><br>
						        <input type="email" name="email" class="form-control input-text" placeholder="Enter Email"><br>
						        <textarea type="text" name="message" placeholder="Your Message" class="form-control area"></textarea><br>
						         <input type="checkbox" id="myCheck" onclick="myFunction()"> <span style="color: red; font-weight: bold;font-size: 16px;">Upload your designs</span> <br><br>
						         <div id="text" style="display: none;">
						         	<input type="file" class="form-control" id="images" name="images[]" onchange="preview_images();" multiple/><br>
						        	<div class="row" id="image_preview"></div><br>
						         </div>
						         <button class="btn btn-default btn-enquiry">SUBMIT</button>
						         <p>&emsp;</p>
					         </div>
					     </div>
					</form>   
				</div>

			</div> -->

            </div>






            <style type="text/css">
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
                    padding: 5px;
                    padding-bottom: 20px;
                    padding-left: 20px;
                    width: 130px;
                    text-align: center;
                    padding-right: 10px;
                    background: #E1204F;
                    color: #fff;
                    font-size: 16px;
                    font-family: 'Montserrat', sans-serif;
                    height: 33px;
                    border: 2px dashed #fff;
                    border-radius: 10px;
                    box-shadow: 0 0 0 4px #E1204F, 2px 1px 6px 4px rgba(10, 10, 0, 0.5);
                }

                    .btn-enquiry:hover {
                        padding: 5px;
                        padding-bottom: 20px;
                        padding-left: 20px;
                        width: 130px;
                        text-align: center;
                        padding-right: 10px;
                        background: #E1204F;
                        color: #fff;
                        font-size: 16px;
                        font-family: 'Montserrat', sans-serif;
                        height: 33px;
                        border: 2px dashed #fff;
                        border-radius: 10px;
                        box-shadow: 0 0 0 4px #E1204F, 2px 1px 6px 4px rgba(10, 10, 0, 0.5);
                    }

                    .btn-enquiry:active {
                        padding: 5px;
                        padding-bottom: 20px;
                        padding-left: 20px;
                        width: 130px;
                        text-align: center;
                        padding-right: 10px;
                        background: #E1204F;
                        color: #fff;
                        font-size: 16px;
                        font-family: 'Montserrat', sans-serif;
                        height: 33px;
                        border: 2px dashed #fff;
                        border-radius: 10px;
                        box-shadow: 0 0 0 4px #E1204F, 2px 1px 6px 4px rgba(10, 10, 0, 0.5);
                    }

                    .btn-enquiry:focus {
                        padding: 5px;
                        padding-bottom: 20px;
                        padding-left: 20px;
                        width: 130px;
                        text-align: center;
                        padding-right: 10px;
                        background: #E1204F;
                        color: #fff;
                        font-size: 16px;
                        font-family: 'Montserrat', sans-serif;
                        height: 33px;
                        border: 2px dashed #fff;
                        border-radius: 10px;
                        box-shadow: 0 0 0 4px #E1204F, 2px 1px 6px 4px rgba(10, 10, 0, 0.5);
                    }
            </style>


            <!-- <div class="col-lg-3 col-md-3 col-sm-12 sidebar">

     		<div style="clear:both;"></div>

     		<p>&emsp;</p>
      
			 <form method="post" action="#">
				<input type="hidden" name="id" value="1">
			    <div class="pro-overview"><img src="./images/blouse.jpg" class="rght-panel-img" alt="BLOUSE">
			    <div class="rght-panel-hd"> Blouse</div>
			    <div class="rght-panel-price">
			     From INR. 450/- </div>
				  <button class="rght-panel-box-buton" name="submit2" type="submit">Book Now</button>
				 </div>
			</form>
      
			 <form method="post" action="#">
				<input type="hidden" name="id" value="2">
			    <div class="pro-overview"><img src="./images/kurti.jpg" class="rght-panel-img" alt="KURTI">
			    <div class="rght-panel-hd">Kurti</div>
			    <div class="rght-panel-price">
			     From INR. 350/- </div>
				  <button class="rght-panel-box-buton" name="submit2" type="submit">Book Now</button>
				 </div>
			</form>	
		      
			 <form method="post" action="#">
				<input type="hidden" name="id" value="3">
			    <div class="pro-overview"><img src="./images/bottom.jpg" class="rght-panel-img" alt="BOTTOM">
			    <div class="rght-panel-hd">Bottom</div>
			    <div class="rght-panel-price">
			     From INR. 300/- </div>
				  <button class="rght-panel-box-buton" name="submit2" type="submit">Book Now</button>
				 </div>
			</form>
		      
			 <form method="post" action="#">
				<input type="hidden" name="id" value="4">
			    <div class="pro-overview"><img src="./images/salwar.jpg" class="rght-panel-img" alt="SALWAR">
			    <div class="rght-panel-hd">Salwar suit</div>
			    <div class="rght-panel-price">
			     From INR. 500/- </div>
				  <button class="rght-panel-box-buton" name="submit2" type="submit">Book Now</button>
				 </div>
			</form>

			 <form method="post" action="#">
				<input type="hidden" name="id" value="5">
			    <div class="pro-overview"><img src="./images/anarkali.jpg" class="rght-panel-img" alt="ANARKALI">
			    <div class="rght-panel-hd">Anarkali</div>
			    <div class="rght-panel-price">
			     From INR. 500/- </div>
				  <button class="rght-panel-box-buton" name="submit2" type="submit">Book Now</button>
				 </div>
			</form>
		
     	 

		</div> -->
        </div>
    </div>
    <div style="clear: both"></div>
</asp:Content>
