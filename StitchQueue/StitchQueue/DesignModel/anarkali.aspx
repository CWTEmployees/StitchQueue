﻿<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="anarkali.aspx.cs" Inherits="StitchQueue.DesignModel.anarkali" %>
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

                               <!-- <div class="col-xs-3 step3 bs-wizard-step disabled">
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

                                </div>-->
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
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="51">
                                <img src="anarkali/anarkali/UTC225.png" class="img-responsive center center">
                                <p class="text-center">As per Your Material's Design</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="52">
                                <img src="anarkali/anarkali/UTC226.png" class="img-responsive center">
                                <p class="text-center">As per Mesurement Dress Design</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="53">
                                <img src="anarkali/anarkali/UTC131.png" class="img-responsive center">
                                <p class="text-center">Jacket Anarkali</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="54">
                                <img src="anarkali/anarkali/UTC132.png" class="img-responsive center">
                                <p class="text-center">Cape Style Anarkali</p>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="55">
                                <img src="anarkali/anarkali/UTC133.png" class="img-responsive center">
                                <p class="text-center">Layered Anarkali Suits</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="56">
                                <img src="anarkali/anarkali/UTC134.png" class="img-responsive center">
                                <p class="text-center">Floor Length Anarkalis</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="57">
                                <img src="anarkali/anarkali/UTC135.png" class="img-responsive center">
                                <p class="text-center">Tail Cut Anarkali Suits</p>
                            </div>
                            <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="58">
                                <img src="anarkali/anarkali/UTC136.png" class="img-responsive center">
                                <p class="text-center">Cotton Anarkali</p>
                            </div>
                        </div>
                        <br>
                        
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="59">
                                <img src="anarkali/anarkali/UTC137.png" class="img-responsive center">
                                <p class="text-center">Bridal Anarkali</p>
                            </div>
                            <!--<div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="11">
                                <img src="kutri/Front/11.png" class="img-responsive center">
                                <p class="text-center">Nehru Collar</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="12">
                                <img src="kutri/Front/Halter-neck1.png" class="img-responsive center">
                                <p class="text-center">Halter neck</p>
                            </div>-->
                        </div>
                        <br>
                        <!--<div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="13">
                                <img src="kutri/Front/Diamond-Neck1.png" class="img-responsive center">
                                <p class="text-center">Diamond-Neck1</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="14">
                                <img src="kutri/Front/Classic-Shirt-Collar.png" class="img-responsive center">
                                <p class="text-center">Classic Shirt Collar</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="15">
                                <img src="kutri/Front/Collar-with-Deep-V-neck.png" class="img-responsive center">
                                <p class="text-center">Collar with Deep V-neck</p>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="16">
                                <img src="kutri/Front/High-collar-halter-neck.png" class="img-responsive center">
                                <p class="text-center">High collar halter neck</p>
                            </div>
                        </div>-->
                        
                    </div>
                    <!--<div class="step step-2 hidden" data-design="back">
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="1">
                                <img src="kutri/back/UTC225.png" class="img-responsive">
                                <P class="text-center">As Per Your Material's Design</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="2">
                                <img src="kutri/back/UTC226.png" class="img-responsive">
                                <P class="text-center">As Per Mesurement Dress Design</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="3">
                                <img src="kutri/back/Backless-with-straps.png" class="img-responsive">
                                <P class="text-center">Square criss-cross neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="4">
                                <img src="kutri/back/Backless-with-strings.png" class="img-responsive">
                                <P class="text-center">Deep Sweetheart neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="5">
                                <img src="kutri/back/Boat-Neck-with-Bar-keyhole.png" class="img-responsive">
                                <P class="text-center">Stand-up Collar neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="6">
                                <img src="kutri/back/Backless-with-straps.png" class="img-responsive">
                                <P class="text-center">Horseshoe neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="7">
                                <img src="kutri/back/Boat-Neck-with-Circle.png" class="img-responsive">
                                <P class="text-center">Boat neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="8">
                                <img src="kutri/back/Boat-Neck-with-Daimond.png" class="img-responsive">
                                <P class="text-center">Scalloped neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="9">
                                <img src="kutri/back/Boat-Neck-with-dori.png" class="img-responsive">
                                <P class="text-center">U-Neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="10">
                                <img src="kutri/back/Broad-sweetheart-neck.png" class="img-responsive">
                                <P class="text-center">Spaghetti - Square neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="11">
                                <img src="kutri/back/Collared-back-with-strings.png" class="img-responsive">
                                <P class="text-center">Nehru Collar</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="12">
                                <img src="kutri/back/Collared-back.png" class="img-responsive">
                                <P class="text-center">Halter neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="13">
                                <img src="kutri/back/Crew-neck.png" class="img-responsive">
                                <P class="text-center">Diamond Neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="14">
                                <img src="kutri/back/Four-Strings.png" class="img-responsive">
                                <P class="text-center">Classic Shirt Collar</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="15">
                                <img src="kutri/back/High-Collar-Halter-Back.png" class="img-responsive">
                                <P class="text-center">Collar with Deep V-neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="16">
                                <img src="kutri/back/Leaf-Neck.png" class="img-responsive">
                                <P class="text-center">High collar halter neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="17">
                                <img src="kutri/back/pot.png" class="img-responsive">
                                <P class="text-center">High Collar with slant keyhole</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="18">
                                <img src="kutri/back/Square-neck.png" class="img-responsive">
                                <P class="text-center">Round with V-neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="18">
                                <img src="kutri/back/Round-neck-with-dori.png" class="img-responsive">
                                <P class="text-center">Square round neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="19">
                                <img src="kutri/back/Round-neck.png" class="img-responsive">
                                <P class="text-center">Round V neck</P>
                            </div>
                        </div>
                    </div>-->
                    <!--<div class="step step-3 hidden" data-design="sleeve">
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="1">
                                <img src="kutri/back/UTC225.png" class="img-responsive">
                                <P class="text-center">As Per Your Material's Design</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="2">
                                <img src="kutri/back/UTC226.png" class="img-responsive">
                                <P class="text-center">As Per Mesurement Dress Design</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="3">
                                <img src="kutri/sleeve/1.png" class="img-responsive">
                                <P class="text-center">Square criss-cross neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="4">
                                <img src="kutri/sleeve/3-4th-sleeves1.png" class="img-responsive">
                                <P class="text-center">Deep Sweetheart neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="5">
                                <img src="kutri/sleeve/6.png" class="img-responsive">
                                <P class="text-center">Stand-up Collar neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="6">
                                <img src="kutri/sleeve/7.png" class="img-responsive">
                                <P class="text-center">Horseshoe neckr</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="7">
                                <img src="kutri/sleeve/8.png" class="img-responsive">
                                <P class="text-center">Boat neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="8">
                                <img src="kutri/sleeve/Cap-sleeve1.png" class="img-responsive">
                                <P class="text-center">Scalloped neck</P>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="9">
                                <img src="kutri/sleeve/Half-sleeves1.png" class="img-responsive">
                                <P class="text-center">U-Neck</P>
                            </div>
                            <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="10">
                                <img src="kutri/sleeve/Short-sleeve1.png" class="img-responsive">
                                <P class="text-center">Spaghetti - Square neck</P>
                            </div>
                        </div>
                    </div>-->
                    <div class="step step-2 hidden" data-design="back">
                        <div class="row">
                            <h3 class="hed">Top Lining</h3>
                            <div class="col-sm-3">
                                <img src="anarkali/addon/American-Crepe.png" class="img-responsive">
                                <P class="text-center">American Crepe Lining<br><br>Rs.200/-</P>
                            </div>
                            <div class="col-sm-3">
                                <img src="anarkali/addon/Task-106-Add-Ons1.png" class="img-responsive">
                                <P class="text-center">Premium Cotton Lining <br><br>
                                    Rs. 150/-</P>
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
                        <div class="row">
                           
                            <h3 class="hed">Bottom Lining</h3>
                            <div class="col-sm-3">
                                    <img src="anarkali/addon/Hemming-for-Dupatta1.png" class="img-responsive">
                                    <P class="text-center">Hemming-for-Dupatta1<br><br>
                                      Rs.0/-</P>
                                  </div>
                            
                        
                        </div>
                          <div class="row">
                           
                            <h3 class="hed">Bottom Style</h3>
                            <div class="col-sm-3">
                                    <img src="anarkali/addon/Waist with Normal Strings1.png" class="img-responsive">
                                    <P class="text-center">Waist with Normal Strings1<br><br>
                                      Rs.0/-</P>
                                  </div>
                            <div class="col-sm-3">
                                    <img src="anarkali/addon/Waist-with-Elastic1..png" class="img-responsive">
                                    <P class="text-center">Waist-with-Elastic1.<br><br>
                                      Rs.0/-</P>
                                  </div>
                                  <div class="col-sm-3">
                                    <img src="anarkali/addon/Waist-with-Normal-Strings1.png" class="img-responsive">
                                    <P class="text-center">Waist-with-Normal-Strings1<br><br>
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
