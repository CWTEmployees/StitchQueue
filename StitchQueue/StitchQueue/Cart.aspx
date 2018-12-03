<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="StitchQueue.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <%--<link rel="stylesheet" href="./Products Summery_files/bootstrap.min.css" type="text/css">--%>
    <link rel="stylesheet" href="./Products Summery_files/style.css" type="text/css">
    <link rel="stylesheet" href="./Products Summery_files/responsive.css" type="text/css">
    <link rel="stylesheet" href="./Products Summery_files/animate.css" type="text/css">
    <link rel="stylesheet" href="./Products Summery_files/font-awesome.min.css">

    <link href="./Products Summery_files/jquery.filer-dragdropbox-theme.css" rel="stylesheet">
    <link href="./Products Summery_files/jquery.filer.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <link href="./Products Summery_files/css" rel="stylesheet">
    <link href="./Products Summery_files/css(1)" rel="stylesheet">
    <link href="./Products Summery_files/css(2)" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">


    <!-- google analytics code -->
    <script async="" src="./Products Summery_files/analytics.js.download"></script>
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
    <script>
        function deleteid(a, b) {
            document.getElementById('deleteid').value = a; //id
            document.getElementById('sectionpart').value = b; //section
        }
    </script>
    <script language="javascript" type="text/javascript">

        function getXMLHTTP() { //fuction to return the xml http object
            var xmlhttp = false;
            try {
                xmlhttp = new XMLHttpRequest();
            }
            catch (e) {
                try {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch (e) {
                    try {
                        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
                    }
                    catch (e1) {
                        xmlhttp = false;
                    }
                }
            }

            return xmlhttp;
        }
        function promocodevalidation() {
            var promocode = document.getElementById("promocode").value;
            var strURL = "promodetail.php?promocode=" + promocode;
            $.get(strURL, function (data, status) {
                $('#promo').html(data).promise().done(function () {

                });
            });
        }




	</script>
	<style>
		.footer2 ul {

    margin-left: 35px;

}
		h3 {

   
    text-align: left;
		}
		section {

    margin: 0px 0;

}
		</style>
    <!-- Modal for confirm -->
    
    <form id="cart" >
    <div class="modal fade" id="myModal-confirm" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content" style="border-radius: 8px">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h3 class="cheque-text-head">Do You Really Want To Delete This?</h3>
                </div>
                
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="row">
                                        <input type="hidden" id="deleteid" value="" name="delete1">
                                        <input type="hidden" id="sectionpart" value="" name="section">
                                    </div>
                                </div>
                            </div>
                            <div class="row row-row">
                                <div class="col-md-12 col-sm-12 col-xs-12 online-offline">
                                    <div class="col-md-6  col-xs-12 col-sm-6">
                                        <button data-toggle="modal" data-target="#myModal-cheque" data-dismiss="modal" class="btn  btn-block btn-danger">Cancel</button>
                                    </div>
                                    <div class="col-md-6  col-xs-12 col-sm-6">
                                        <button class="btn btn-block btn-confirm" type="submit" name="delete">Confirm</button>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
               
            </div>
            <div class="modal-footer" style="border: none">
            </div>

        </div>

    </div>

    <!-- Modal for confirm -->

    <div class="inner-banner">
        <img class="slider-image-responsive" src="./Products Summery_files/product.jpg" width="100%" height="auto" alt="">
        <div class="container work-title">
            <div class="banner-inner">
                <h1>Preview Order</h1>
            </div>
        </div>
    </div>



    <div style="clear: both;"></div>

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

    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="row wow fadeInUp" style="visibility: visible; animation-name: none;">
                    <p class="header_text">
                        Order Details
                        <br>
                        <img src="./images/hr_line2.png" alt="heding image" width="100">
                    </p>
                </div>


                <div class="order-text">
                    <p class="home If you would like to get another product stitched along with this order, click on Add More. Else, click on Schedule Pickup to continue."

                        <strong>Note:</strong> “Additional cost will be added if the pattern consumes lots of time.”<br/>
                        <strong>Note:</strong> The tailors will improvise on your final product based on the fabric design. For instance, borders will be used on sleeves unless specified. We highly recommend you to pre-wash your cotton dress materials.<br>
                        <br/>
                    </p>
                </div>


                
                    <!----upload section------>
                    <div class="order-bg">

                        
                        <asp:GridView ID="product" runat="server" Visible="false"  AutoGenerateColumns="False" GridLines="Horizontal" ShowFooter="True" OnRowDeleting="product_RowDeleting">
                            <Columns>

                                <asp:BoundField DataField="sno" HeaderText="Sno" Visible="False" />
                                <asp:BoundField DataField="productid" HeaderText="ProductId" Visible="False" />
                                <asp:ImageField DataImageUrlField="img" HeaderStyle-Height="50px" FooterStyle-Height="50px" FooterStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <ControlStyle Height="150px" Width="150px" />
                                </asp:ImageField>
                                <asp:ImageField DataImageUrlField="img2" HeaderStyle-Height="50px" FooterStyle-Height="50px" FooterStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <ControlStyle Height="150px" Width="150px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="pname" HeaderText="ProductName" />
                                <asp:BoundField DataField="price" HeaderText="Price" />

                                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:CommandField>
                            </Columns>
                        </asp:GridView>

                           <asp:GridView ID="fittinggrid" runat="server" Visible="false" OnRowDeleting="fittinggrid_RowDeleting" AutoGenerateColumns="False" GridLines="Horizontal" ShowFooter="True" >
                            <Columns>

                                <asp:BoundField DataField="sno" HeaderText="Sno" Visible="False" />
                                <asp:BoundField DataField="productid" HeaderText="ProductId" Visible="False" />
                                <asp:ImageField DataImageUrlField="img" HeaderStyle-Height="50px" FooterStyle-Height="50px" FooterStyle-HorizontalAlign="Center">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <ControlStyle Height="150px" Width="150px" />
                                </asp:ImageField>
                              
                                <asp:BoundField DataField="pname" HeaderText="ProductName" />
                                <asp:BoundField DataField="price" HeaderText="Price" />
                                <asp:BoundField DataField="pquantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                    
               


                                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True">
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:CommandField>
                            </Columns>
                        </asp:GridView>


                    </div>
                
                <!-----------end price charges------->



                <!-----------start promocode section---------->


                <%--<div class="order-bg">

                    <div class="col-lg-4 col-md-4 col-sm-4">
                        <div class="line2"></div>
                        <div class="order-box">
                            <div class="ordr-hd">Have A Promo Code ??</div>
                        </div>
                    </div>


                    <div class="col-lg-4 col-md-4 col-sm-4">

                        <div class="order-box">
                            <div class="ordr-hd" style="color: black;">
                                Promo Code :
                                    <input type="text" name="promocode" value="" id="promocode">
                                <span class="btn btn-default btn-submit" onclick="promocodevalidation()">Apply</span>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-4">

                        <div class="order-box">
                            <div class="ordr-hd">
                                <div id="promo" style="color: red;"></div>
                            </div>

                        </div>
                    </div>



                </div>--%>
                <!-----------end promocode section------------>


         <%--       <div class="order-bg">

                    <div class="col-lg-2 col-md-2 col-sm-3">
                        <div class="line2"></div>
                        <div class="order-box">
                            <div class="ordr-hd">Order Summary</div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3 col-sm-3">
                        <div class="line2"></div>
                        <div class="order-box">
                            <div class="order-data"><strong>Sub Total:</strong></div>
                            <div class="order-data-no">Rs. /-</div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-3">
                        <div class="line2"></div>
                        <div class="order-box">
                            <div class="order-data"><strong>Discount:</strong></div>
                            <div class="order-data-no">Rs. 97.5/-</div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3">
                        <div class="line2"></div>
                        <div class="order-box">
                            <div class="order-data"><strong>Delivery Charge:</strong></div>
                            <div class="order-data-no">Free	</div>
                        </div>
                    </div>

                    <div class="col-lg-2 col-md-2 col-sm-3">
                        <div class="order-box">
                            <div class="order-data"><strong>Amount:</strong></div>
                            <div class="order-data-no">Rs. /-</div>
                        </div>
                    </div>
                </div>--%>

           <%--     <div class="order-bg">

                    <div class="col-lg-2 col-md-2 col-sm-2">
                        <div class="line2"></div>
                        <div class="order-box">
                            <div class="ordr-hd">Remark</div>
                        </div>
                    </div>

                    <div class="col-lg-8 col-md-8 col-sm-8">

                        <div class="order-box">
                            <div class="ordr-hd" style="color: black;">
                                <textarea name="remark" rows="3" cols="80" placeholder="ADD YOUR SPECIAL INSTRUCTIONS OR THE CHANGES REQUIRED FROM THE MEASUREMENT GARMENT."></textarea>
                            </div>
                        </div>
                    </div>

                </div>--%>



                <!-- <span class="btn btn-default btn-submit">SCHDULE PICKUP <input type="submit" name="s1"></span>  -->

                <%--<a href="AddressDetails.aspx" class="btn btn-default btn-submit">Proceed</a>--%>
                <asp:Button ID="btnSubmit" runat="server" class="btn btn-default btn-submit" Text="Procees" OnClick="btnSubmit_Click" />
                <a href="Home.aspx" class="btn btn-default btn-submit">ADD MORE</a>
                <%--<span class="btn btn-default btn-submit">ADD MORE<input type="submit" name="s2"></span>--%>
            </div>
        </div>



    </div>


    <div style="clear: both"></div>
</form>
    <br>
    <br>









    <script src="./Products Summery_files/jquery.min.js.download" type="text/javascript"></script>
    <!-- nicescroll    
<script src="js/jquery.nicescroll.min.js" type="text/javascript"></script>
<script src="js/viewportchecker.js" type="text/javascript"></script>   -->
    <!-- bootstrap script -->
    <script src="./Products Summery_files/bootstrap.min.js.download" type="text/javascript"></script>
    <script src="./Products Summery_files/jquery.filer.min.js.download" type="text/javascript"></script>
</asp:Content>
