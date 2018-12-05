﻿<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="blouse.aspx.cs" Inherits="StitchQueue.DesignModel.blouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/jquery.toast.min.css" rel="stylesheet"/>
    <link href="cssstyle.css" rel="stylesheet"/>
    <link href="css/main.css" rel="stylesheet"/>


   

     <table>
        <tr>
            <div class="container">
                <div class="row">
                    <div class="fixed-header">
                        <h1 class="text-center">Choose Your Strich<br><img src="front/hr_line2.png" width="10%"><br></h1><br>
                        <p>
                            <h4>You are a brilliant designer yourself. Create your fashion with alternatives that suit
                                your
                                qualifications. We sew your dress as per your first-class layout so please design your
                                self
                                to have the layout.</h4>
                        </p><br><br>
                        <div class="container">

                            <div class="row bs-wizard" style="border-bottom:0;">

                                <div class="col-xs-3 step1 bs-wizard-step active">
                                    <div class="text-center bs-wizard-stepnum">Step 1</div>
                                    <div class="progress">
                                        <div class="progress-bar"></div>
                                    </div>
                                    <a href="front.html" class="bs-wizard-dot"></a>

                                </div>

                                <div class="col-xs-3 step2 bs-wizard-step disabled">
                                    <div class="text-center bs-wizard-stepnum">Step 2</div>
                                    <div class="progress">
                                        <div class="progress-bar"></div>
                                    </div>
                                    <a href="back.html" class="bs-wizard-dot"></a>

                                </div>

                                <div class="col-xs-3 step3 bs-wizard-step disabled">
                                    <div class="text-center bs-wizard-stepnum">Step 3</div>
                                    <div class="progress">
                                        <div class="progress-bar"></div>
                                    </div>
                                    <a href="sleeve.html" class="bs-wizard-dot"></a>

                                </div>

                                <div class="col-xs-3 step4 bs-wizard-step disabled">
                                    <div class="text-center bs-wizard-stepnum">Step 4</div>
                                    <div class="progress">
                                        <div class="progress-bar"></div>
                                    </div>
                                    <a href="#" class="bs-wizard-dot"></a>

                                </div>
                            </div>
                        </div>
                        <div class="alert alert-danger alert-dismissible" role="alert" style="display:none;">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            <strong>Warning!</strong> Better check yourself, you're not looking too good.
                        </div>

                    </div>
                    <div class="step step-1" data-design="front">
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="1">
                                <img src="blouse/Front/UTC225.png" class="img-responsive center center">
                                <p class="text-center">As per Your Material's Design</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="2">
                                <img src="blouse/Front/UTC226.png" class="img-responsive center">
                                <p class="text-center">As per Mesurement Dress Design</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="3">
                                <img src="blouse/Front/19.png" class="img-responsive center">
                                <p class="text-center">Square criss-cross neck</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="4">
                                <img src="blouse/Front/12.png" class="img-responsive center">
                                <p class="text-center">Deep Sweetheart neck</p>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="5">
                                <img src="blouse/Front/3.png" class="img-responsive center">
                                <p class="text-center">Stand-up Collar neck</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="6">
                                <img src="blouse/Front/5.png" class="img-responsive center">
                                <p class="text-center">Horseshoe neck</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="7">
                                <img src="blouse/Front/9.png" class="img-responsive center">
                                <p class="text-center">Boat neck</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="8">
                                <img src="blouse/Front/14.png" class="img-responsive center">
                                <p class="text-center">Scalloped neck</p>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="9">
                                <img src="blouse/Front/10.png" class="img-responsive center">
                                <p class="text-center">U-Neck</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="10">
                                <img src="blouse/Front/22.png" class="img-responsive center">
                                <p class="text-center">Spaghetti - Square neck</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="11">
                                <img src="blouse/Front/11.png" class="img-responsive center">
                                <p class="text-center">Nehru Collar</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="12">
                                <img src="blouse/Front/Halter-neck1.png" class="img-responsive center">
                                <p class="text-center">Halter neck</p>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="13">
                                <img src="blouse/Front/Diamond-Neck1.png" class="img-responsive center">
                                <p class="text-center">Diamond-Neck1</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="14">
                                <img src="blouse/Front/Classic-Shirt-Collar.png" class="img-responsive center">
                                <p class="text-center">Classic Shirt Collar</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="15">
                                <img src="blouse/Front/Collar-with-Deep-V-neck.png" class="img-responsive center">
                                <p class="text-center">Collar with Deep V-neck</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="16">
                                <img src="blouse/Front/High-collar-halter-neck.png" class="img-responsive center">
                                <p class="text-center">High collar halter neck</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="17">
                                <img src="blouse/Front/High-Collar-with-slant-keyh.png" class="img-responsive center">
                                <p class="text-center">High Collar with slant keyhole</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="18">
                                <img src="blouse/Front/Round-with-V-neck.png" class="img-responsive center">
                                <p class="text-center">Round with V-neck</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="19">
                                <img src="blouse/Front/Square-round-neck.png" class="img-responsive center">
                                <p class="text-center">Square round neck</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="20">
                                <img src="blouse/Front/44-(1).png" class="img-responsive center">
                                <p class="text-center">Round V neck</p>
                            </div>
                        </div>
                    </div>
                    <div class="step step-2 hidden" data-design="back">
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="21">
                                <img src="blouse/back/UTC225.png" class="img-responsive">
                                <P class="text-center">As Per Your Material's Design</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="22">
                                <img src="blouse/back/UTC226.png" class="img-responsive">
                                <P class="text-center">As Per Mesurement Dress Design</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="23">
                                <img src="blouse/back/Backless-with-straps.png" class="img-responsive">
                                <P class="text-center">Square criss-cross neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="24">
                                <img src="blouse/back/Backless-with-strings.png" class="img-responsive">
                                <P class="text-center">Deep Sweetheart neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="25">
                                <img src="blouse/back/Boat-Neck-with-Bar-keyhole.png" class="img-responsive">
                                <P class="text-center">Stand-up Collar neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="26">
                                <img src="blouse/back/Backless-with-straps.png" class="img-responsive">
                                <P class="text-center">Horseshoe neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="27">
                                <img src="blouse/back/Boat-Neck-with-Circle.png" class="img-responsive">
                                <P class="text-center">Boat neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="28">
                                <img src="blouse/back/Boat-Neck-with-Daimond.png" class="img-responsive">
                                <P class="text-center">Scalloped neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="29">
                                <img src="blouse/back/Boat-Neck-with-dori.png" class="img-responsive">
                                <P class="text-center">U-Neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="30">
                                <img src="blouse/back/Broad-sweetheart-neck.png" class="img-responsive">
                                <P class="text-center">Spaghetti - Square neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="31">
                                <img src="blouse/back/Collared-back-with-strings.png" class="img-responsive">
                                <P class="text-center">Nehru Collar</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="32">
                                <img src="blouse/back/Collared-back.png" class="img-responsive">
                                <P class="text-center">Halter neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="33">
                                <img src="blouse/back/Crew-neck.png" class="img-responsive">
                                <P class="text-center">Diamond Neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="34">
                                <img src="blouse/back/Four-Strings.png" class="img-responsive">
                                <P class="text-center">Classic Shirt Collar</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="35">
                                <img src="blouse/back/High-Collar-Halter-Back.png" class="img-responsive">
                                <P class="text-center">Collar with Deep V-neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="36">
                                <img src="blouse/back/Leaf-Neck.png" class="img-responsive">
                                <P class="text-center">High collar halter neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="37">
                                <img src="blouse/back/pot.png" class="img-responsive">
                                <P class="text-center">High Collar with slant keyhole</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="38">
                                <img src="blouse/back/Square-neck.png" class="img-responsive">
                                <P class="text-center">Round with V-neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="39">
                                <img src="blouse/back/Round-neck-with-dori.png" class="img-responsive">
                                <P class="text-center">Square round neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="40">
                                <img src="blouse/back/Round-neck.png" class="img-responsive">
                                <P class="text-center">Round V neck</P>
                            </div>
                        </div>
                    </div>
                    <div class="step step-3 hidden" data-design="sleeve">
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="41">
                                <img src="blouse/back/UTC225.png" class="img-responsive">
                                <P class="text-center">As Per Your Material's Design</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="42">
                                <img src="blouse/back/UTC226.png" class="img-responsive">
                                <P class="text-center">As Per Mesurement Dress Design</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="43">
                                <img src="blouse/sleeve/1.png" class="img-responsive">
                                <P class="text-center">Square criss-cross neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="44">
                                <img src="blouse/sleeve/3-4th-sleeves1.png" class="img-responsive">
                                <P class="text-center">Deep Sweetheart neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="45">
                                <img src="blouse/sleeve/6.png" class="img-responsive">
                                <P class="text-center">Stand-up Collar neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="46">
                                <img src="blouse/sleeve/7.png" class="img-responsive">
                                <P class="text-center">Horseshoe neckr</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="47">
                                <img src="blouse/sleeve/8.png" class="img-responsive">
                                <P class="text-center">Boat neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="48">
                                <img src="blouse/sleeve/Cap-sleeve1.png" class="img-responsive">
                                <P class="text-center">Scalloped neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="49">
                                <img src="blouse/sleeve/Half-sleeves1.png" class="img-responsive">
                                <P class="text-center">U-Neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="50">
                                <img src="blouse/sleeve/Short-sleeve1.png" class="img-responsive">
                                <P class="text-center">Spaghetti - Square neck</P>
                            </div>
                        </div>
                    </div>
                    <div class="step step-4 hidden" data-design="addon">
                        <div class="row">
                            <h3 class="hed">Top Lining</h3>
                            <div class="col-sm-3">
                                <img src="blouse/addons/American-Crepe.png" class="img-responsive">
                                <P class="text-center">American Crepe Lining<br><br>Rs.200/-</P>
                            </div>
                            <div class="col-sm-3">
                                <img src="blouse/addons/Task-106-Add-Ons1.png" class="img-responsive">
                                <P class="text-center">Premium Cotton Lining <br><br>
                                    Rs. 150/-</P>
                            </div>
                        </div>
                        <div class="row">
                            <h3 class="hed">Others</h3>
                            <div class="col-sm-3">
                                    <img src="blouse/addons/bls-1.png" class="img-responsive">
                                    <P class="text-center">Princess cut Blouse<br><br>
                                      Rs.0/-</P>
                                  </div>
                                  <div class="col-sm-3">
                                    <img src="blouse/addons/bls-2.png" class="img-responsive">
                                    <P class="text-center">Padded Blouse<br><br>
                                      Rs.0/-</P>
                                  </div>
                                  <div class="col-sm-3">
                                    <img src="blouse/addons/bls-3.png" class="img-responsive">
                                    <P class="text-center">Dart/Regular Blouse<br><br>
                                      Rs.25/-</P>
                                  </div>
                        </div>
                        <div class="row">
                            <h3 class="hed">Closing</h3>
                            <div class="col-sm-3">
                                    <img src="anarkali/addon/Backwithzip1.png" class="img-responsive">
                                    <P class="text-center">Backwithzip1<br><br>
                                      Rs.0/-</P>
                                  </div>
                            <div class="col-sm-3">
                                    <img src="anarkali/addon/Front-with-Hooks1.png" class="img-responsive">
                                    <P class="text-center">Front-with-Hooks1<br><br>
                                      Rs.0/-</P>
                                  </div>
                                  <div class="col-sm-3">
                                    <img src="anarkali/addon/Side-with-Zip1.png" class="img-responsive">
                                    <P class="text-center">Side-with-Zip1<br><br>
                                      Rs.0/-</P>
                                  </div>
                                  
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="text-center" Style="margin-right:10px;">
                    <div class="btn-group">
                        <button type=" button" class="btn btn-danger btn-prev" data-step="1">preview</button>
                        <button type="button" class="btn btn-danger btn-next" data-step="1">Next</button>
                    </div>
                </div>
            </div>
            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.toast.min.js"></script>
            <script src="js/main.js"></script>
        </tr>
    </table>



</asp:Content>
