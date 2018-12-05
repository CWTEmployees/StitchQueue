<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="StitchQueue.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Video Section-->
    <form id="home">
        <section class="content-section video-section" style="margin-top: 70px;">
            <div class="pattern-overlay">
                <a id="bgndVideo" class="player" data-property="{videoURL:'https://www.youtube.com/watch?v=hYFGeusWLS8',containment:'.video-section', quality:'large', autoPlay:true, mute:true, opacity:1}">bg</a>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>&nbsp;</h1>
                            <h3>&nbsp;</h3>
                            <div class="sp-container">
                                <div class="sp-content">
                                    <div class="sp-globe"></div>
                                    <h2 class="frame-1">YOU</h2>
                                    <h2 class="frame-2">DESIGN</h2>
                                    <h2 class="frame-3">WE</h2>
                                    <h2 class="frame-4">STITCH</h2>
                                    <h2 class="frame-5">
                                        <span>YOU</span>
                                        <span>DESIGN</span>
                                        <span>WE STITCH.</span>
                                    </h2>
                                    <!-- <a class="sp-circle-link" href="https://nick.mkrtchyan.ga">by Nick</a> -->
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!--Video Section Ends Here-->
        <style type="text/css">
            .card {
                position: relative;
                display: inline-block;
            }

                .card .img-top {
                    display: none;
                    position: absolute;
                    top: 0;
                    left: 0;
                    /*z-index: 99;*/
                }

                .card:hover .img-top {
                    display: inline;
                }
        </style>
        <style>
            @media (min-width: 280px) and (max-width: 476px) {

                .work_3 {
                    margin-left: 230px !important;
                    margin-top: 20px !important;
                }

                .work_1 img {
                    width: 110px !important;
                    margin-left: 46px !important;
                }

                .work_4 img {
                    width: 110px !important;
                    margin-left: 36px !important;
                }

                .work_5 img {
                    width: 110px !important;
                    margin-left: 26px !important;
                }
            }
        </style>
        <!-- Our Services -->

        <section id="services">
            <div class="container-fluid">


                <div class="row wow fadeInUp" style="visibility: visible; animation-name: none;">
                    <p class="header_text">
                        Our Stitching Services
                    <br>
                        <img src="./images/hr_line2.png" alt="heding image" width="100">
                    </p>
                </div>






                <div class="row row-centered">
                    <%--<asp:ListView ID="Data" runat="server" OnItemCommand="Data_ItemCommand">
                        <ItemTemplate>
                           <div class="col-md-3 col-sm-3 col-xs-12 col-centered service_div" style="margin-right: 20px">

                                <div class="card">
                                    <img src="<%# Eval("Images") %>" alt="Card Back" class="img-responsive">
                                    <img src="<%# Eval("Images2") %>" class="img-top img-responsive"  alt="Card Front" width="auto">
                                </div>
                                <!-- <img src="images/salwar.jpg" class="img-responsive"> -->
                                <div class="middle">
                                        <asp:Button ID="addcart" runat="server" CssClass="text" Text="Stitch Now" CommandName="addtocart" CommandArgument='<%# Eval("ProductId") %>' />
                                </div>
                                <br>
                                <p><%# Eval("ProductName") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>--%>
                    <div class="col-md-3 col-sm-3 col-xs-12 col-centered service_div" style="margin-right: 20px;">
                        <div class="card">
                            <img src="images/blouse.jpg" alt="Card Back" class="img-responsive">
                            <img src="images/blouse2.jpg" class="img-top img-responsive" alt="Card Front" width="auto">
                        </div>
                        <div class="middle">
                            <a href="../DesignModel/blouse.aspx">
                                <div class="text">Stitch Now</div>
                            </a>
                        </div>
                        <br>
                        <p>Blouse</p>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-12 col-centered service_div">
                        <div class="card">
                            <img src="images/anarkali.jpg" alt="Card Back" class="img-responsive">
                            <img src="images/anarkali2.jpg" class="img-top img-responsive" alt="Card Front" width="auto">
                        </div>
                        <div class="middle">
                            <a href="../DesignModel/anarkali.aspx">
                                <div class="text">Stitch Now</div>
                            </a>
                        </div>
                        <br>
                        <p>Anarkali</p>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-12 col-centered service_div" style="margin-right: 20px;">
                        <div class="card">
                            <img src="images/kurti.jpg" alt="Card Back" class="img-responsive">
                            <img src="images/kurti2.jpg" class="img-top img-responsive" alt="Card Front" width="auto">
                        </div>
                        <div class="middle">
                            <a href="../DesignModel/kurti.aspx">
                                <div class="text">Stitch Now</div>
                            </a>
                        </div>
                        <br>
                        <p>Kurti</p>
                    </div>

                </div>
                <br>
                <br>
                <div class="row row-centered">
                    <div class="col-md-3 col-sm-3 col-xs-12 col-centered service_div" style="margin-right: 20px;">
                        <div class="card">
                            <img src="images/bottom.jpg" alt="Card Back" class="img-responsive">
                            <img src="images/bottom2.jpg" class="img-top img-responsive" alt="Card Front" width="auto">
                        </div>
                        <div class="middle">
                            <a href="DesignModel/bottom.aspx">
                                <div class="text">Stitch Now</div>
                            </a>
                        </div>
                        <br>
                        <p>Bottom</p>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-12 col-centered service_div" style="margin-right: 20px;">
                        <div class="card">
                            <img src="images/salwar.jpg" alt="Card Back" class="img-responsive">
                            <img src="images/salwar2.jpg" class="img-top img-responsive" alt="Card Front" width="auto">
                        </div>
                        <div class="middle">
                            <a href="../DesignModel/salwar.aspx">
                                <div class="text">Stitch Now</div>
                            </a>
                        </div>
                        <br>
                        <p>Salwar</p>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12 col-centered service_div">
                        <div class="card">
                            <img src="images/embroidery.jpg" alt="Card Back" class="img-responsive">
                            <img src="images/embroidery2.jpg" class="img-top img-responsive" alt="Card Front" width="auto">
                        </div>
                        <div class="middle">
                            <a href="../DesignModel/embordary.aspx">
                                <div class="text">Stitch Now</div>
                            </a>
                        </div>
                        <br>
                        <p>Embroidery</p>
                    </div>
                </div>
            </div>

        </section>


        <br>
        <br>

        <!-- How it Works -->

        <section id="how-it-works">
            <div class="container-fluid">
                <div class="row wow fadeInUp" style="visibility: visible; animation-name: none;">
                    <p class="header_text">
                        How It Works
                    <br>
                        <img src="./images/hr_line2.png" alt="heding image" width="100">
                    </p>
                </div>
                <div class="about">
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <div class="star" align="center">
                        <img src="images/star_a3.png" class="img-responsive" width="300">
                    </div>
                    <div class="work_1">
                        <img src="images/s1.png" width="200">
                    </div>
                    <div class="work_2" align="center">
                        <img src="images/s2.png" width="200">
                    </div>
                    <div class="work_3">
                        <img src="images/s3.png" width="200">
                    </div>
                    <div class="work_4">
                        <img src="images/s4.png" width="200">
                    </div>
                    <div class="work_5">
                        <img src="images/s5.png" width="200">
                    </div>
                    <br>
                    <br>
                </div>
            </div>
        </section>




        <!--strat why StitchQ-->

        <div class="tailor-part align_padd back_image" id="why-stitchq">
            <div class="container">
                <div class="row wow fadeInUp" style="animation-name: none;">
                    <p class="header_text lower_case">
                        Why StitchQ ?<br>
                        <img src="./images/hr_line2.png" alt="heding image" width="100">
                    </p>
                </div>
                <div class="row">
                    <div class="col-md-5 col-sm-12 why_girl text-center mt_70 wow fadeInUp" style="animation-name: none;">
                        <div class="trans_back text-center">
                            <div class="red_trnsprnt_back">&nbsp;</div>
                            <img class="img-responsive girl_icon_1" src="./images/dress.png">
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-12 why-hlo-talr">
                        <div class="col-md-11 col-sm-6 col-xs-12 mt_30 wow fadeInUp" style="animation-name: none;">
                            <div class="wrapper">
                                <div class="block animatable bounceInLeft">
                                    <div class="col-md-2 col-sm-2 col-xs-12">
                                        <div class="red_background sml_back">
                                            <img class="width_30 mat_7" src="./images/why1.png" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <p class="heading_wrks_text mrgn_wht_text pay_text">Saves your time</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-10 col-md-offset-2 col-sm-6 col-xs-12 mt_30 wow fadeInUp" style="animation-name: none;">
                            <div class="wrapper">
                                <div class="block animatable bounceInRight">
                                    <div class="col-md-2 col-sm-2 col-xs-12">
                                        <div class="red_background sml_back white_background">
                                            <img class="width_30 mat_7" src="./images/why2.png" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <p class="heading_wrks_text mrgn_wht_text pay_text">Design your Outfit</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-11 mt_30 col-sm-6 col-xs-12 wow fadeInUp" style="animation-name: none;">
                            <div class="wrapper">
                                <div class="block animatable bounceInLeft">
                                    <div class="col-md-2 col-sm-2 col-xs-12">
                                        <div class="red_background sml_back">
                                            <img class="width_30 mat_7" src="./images/why3.png" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <p class="heading_wrks_text mrgn_wht_text pay_text">Premium quality stitching</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-10 col-md-offset-2 col-sm-6 col-xs-12 mt_30 wow fadeInUp" style="animation-name: none;">
                            <div class="wrapper">
                                <div class="block animatable bounceInRight">
                                    <div class="col-md-2 col-sm-2 col-xs-12">
                                        <div class="red_background sml_back white_background">
                                            <img class="width_30 mat_7" src="./images/why4.png" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <p class="heading_wrks_text mrgn_wht_text pay_text">Affordable price</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-11 mt_30 col-sm-6 col-xs-12 wow fadeInUp" style="animation-name: none;">
                            <div class="wrapper">
                                <div class="block animatable bounceInLeft">
                                    <div class="col-md-2 col-sm-2 col-xs-12">
                                        <div class="red_background sml_back">
                                            <img class="width_30 mat_7" src="./images/why5.png" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <p class="heading_wrks_text mrgn_wht_text pay_text">Hassle-free pickup and Delivery</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-10 col-md-offset-2 col-sm-6 col-xs-12 mt_30 wow fadeInUp" style="animation-name: none;">
                            <div class="wrapper">
                                <div class="block animatable bounceInRight">
                                    <div class="col-md-2 col-sm-2 col-xs-12">
                                        <div class="red_background sml_back white_background">
                                            <img class="width_30 mat_7" src="./images/why6.png" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-8 col-xs-12">
                                        <p class="heading_wrks_text mrgn_wht_text pay_text">No Prepayment Required</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <link rel="stylesheet" type="text/css" href="./css/why.css">


        <!-- Testmonials -->


        <section id="testmonials">
            <div class="container-fluid" style="margin-left: 30px; margin-right: 30px;">

                <div class="row wow fadeInUp" style="visibility: visible; animation-name: none;">
                    <p class="header_text" style="color: #000;">
                        Let's check what clients say...<br>
                        <img src="./images/hr_line2.png" alt="heding image" width="100">
                    </p>
                </div>

                <div class='row'>
                    <div class='col-md-12 col-xs-12'>
                        <div class="carousel slide" data-ride="carousel" id="quote-carousel">


                            <!-- Carousel Slides / Quotes -->
                            <div class="carousel-inner" style="background: #fff; box-shadow: 0 7px 17px 0 rgba(23,84,116,0.18);">

                                <!-- Quote 1 -->
                                <div class="item active">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-3 text-center">
                                                <img class="img-circle" src="./images/128.jpg" style="width: 80px; height: 80px;">
                                            </div>
                                            <div class="col-sm-9">
                                                <p class="t_p">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit!</p>
                                                <small class="t_small">Someone famous</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                                <!-- Quote 2 -->
                                <div class="item">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-3 text-center">
                                                <img class="img-circle" src="./images/128.jpg" style="width: 80px; height: 80px;">
                                            </div>
                                            <div class="col-sm-9">
                                                <p class="t_p">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor nec lacus ut tempor. Mauris.</p>
                                                <small class="t_small">Someone famous</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                                <!-- Quote 3 -->
                                <div class="item">
                                    <blockquote>
                                        <div class="row">
                                            <div class="col-sm-3 text-center">
                                                <img class="img-circle" src="./images/128.jpg" style="width: 80px; height: 80px;">
                                            </div>
                                            <div class="col-sm-9">
                                                <p class="t_p">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed ultricies commodo tortor, eu pretium mauris.</p>
                                                <small class="t_small">Someone famous</small>
                                            </div>
                                        </div>
                                    </blockquote>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>

            </div>
        </section>


        <!-- Enquiry Form -->

        <section id="" style="background: #F9F9F9;">
            <div class="container">
                <div class="row wow fadeInUp" style="visibility: visible; animation-name: none;">
                    <p class="header_text">
                        Enquiry now
                        <br>
                        <img src="./images/hr_line2.png" alt="heding image" width="100">
                    </p>
                </div>
                <br>
                <div class="row-centered">
                    <div class="col-md-3 col-sm-3 col-xs-12 col-centered">
                        <!--<label for="contact_name">Name:</label>-->
                        <input type="text" id="contact_name" name="name" class="form-control input-text" placeholder="Firstname">
                        <span class="error">This field is required</span>
                    </div>
                    <!-- Email -->
                    <div class="col-md-3 col-sm-3 col-xs-12 col-centered">

                        <!--<label for="contact_name">Name:</label>-->
                        <input type="text" id="contact_lname" name="lname" class="form-control input-text" placeholder="Lastname">
                        <span class="error">This field is required</span>

                    </div>
                </div>
                <div class="row-centered">
                    <div class="col-md-3 col-sm-3 col-xs-12 col-centered">
                        <!--<label for="contact_website">Website:</label>-->
                        <input type="digits" id="contact_phone" name="phone" class="form-control input-text" placeholder="Mobile Number">
                        <span class="error">A valid phone Number is required</span>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-12 col-centered">
                        <!--<label for="contact_email">Email:</label>-->
                        <input type="email" id="contact_email" name="email" class="form-control input-text" placeholder="Email Address">
                        <span class="error">A valid email address is required</span>
                    </div>
                </div>
                <div class="row-centered">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-centered" style="width: none !important; overflow: none !important;">

                        <textarea id="contact_message" name="message" placeholder="Message(atleast 50 chars)" class="form-control area" minlength="50" maxlength="500"></textarea>
                        <span class="error">This field is required</span>
                        <br>
                        <div id="text">
                            <input type="file" id="contact_image" name="image" onchange="preview_images();" multiple />
                            <span class="error">This field is required</span><br>
                            <div class="row" id="image_preview"></div>
                            <br>
                        </div>

                        <div id="contact_submit">
                            <button type="submit" class="btn btn-default btn-enquiry" style="margin-right: 90px;">Submit</button>
                        </div>


                        <p>&emsp;</p>

                    </div>
                </div>


            </div>
        </section>


    </form>

    <link rel="stylesheet" type="text/css" href="css/contact2.css">



    <script>
        $('#add_more').click(function () {
            "use strict";
            $(this).before($("<div/>", {
                id: 'filediv'
            }).fadeIn('slow').append(
              $("<input/>", {
                  name: 'file[]',
                  type: 'file',
                  id: 'file',
                  multiple: 'multiple',
                  accept: 'image/*'
              })
            ));
        });

        $('#upload').click(function (e) {
            "use strict";
            e.preventDefault();

            if (window.filesToUpload.length === 0 || typeof window.filesToUpload === "undefined") {
                alert("No files are selected.");
                return false;
            }

            // Now, upload the files below...
            // https://developer.mozilla.org/en-US/docs/Using_files_from_web_applications#Handling_the_upload_process_for_a_file.2C_asynchronously
        });

        deletePreview = function (ele, i) {
            "use strict";
            try {
                $(ele).parent().remove();
                window.filesToUpload.splice(i, 1);
            } catch (e) {
                console.log(e.message);
            }
        }

        $("#file").on('change', function () {
            "use strict";

            // create an empty array for the files to reside.
            window.filesToUpload = [];

            if (this.files.length >= 1) {
                $("[id^=previewImg]").remove();
                $.each(this.files, function (i, img) {
                    var reader = new FileReader(),
                      newElement = $("<div id='previewImg" + i + "' class='previewBox'><img /></div>"),
                      deleteBtn = $("<span class='delete' onClick='deletePreview(this, " + i + ")'>X</span>").prependTo(newElement),
                      preview = newElement.find("img");

                    reader.onloadend = function () {
                        preview.attr("src", reader.result);
                        preview.attr("alt", img.name);
                    };

                    try {
                        window.filesToUpload.push(document.getElementById("file").files[i]);
                    } catch (e) {
                        console.log(e.message);
                    }

                    if (img) {
                        reader.readAsDataURL(img);
                    } else {
                        preview.src = "";
                    }

                    newElement.appendTo("#filediv");
                });
            }
        });
    </script>
</asp:Content>

