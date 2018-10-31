<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="OrderDetail.aspx.cs" Inherits="StitchQueue.OrderDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- Website CSS style -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Website Font style -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">



    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="css/review_order.css">

    <style type="text/css">
        .main-top-hed {
            color: #E40256;
        }
    </style>
    <div class="container-fluid">

        <div class="page-content">
            <div class="process-container">
                <div class="col-md-12 no-padding">

                    <div class="heading-contant">
                        <h1 class="main-top-hed"><span class="pad-r">
                            <img src="images/final_order.png" alt="1" class=""></span>Review your order</h1>
                    </div>
                    <br>
                </div>

                <div class="col-md-4">
                    <h2 class="hed-add-col">ORDER REVIEW</h2>
                    <!-- Start payment 1 -->
                    <div class="panel panel-default">
                        <!-- Toggle Heading -->

                        <!-- Toggle Content -->
                        <asp:GridView ID="product" runat="server" AutoGenerateColumns="False" GridLines="Horizontal" Width="200%" ShowFooter="True">
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


                            </Columns>
                        </asp:GridView>
                    </div>

                    <!-- End Add 3 -->
                </div>


                <div class="col-md-12 no-padding">
                    <div class="col-md-4">
                        <h2 class="hed-add-col">ADDRESS DETAILS</h2>
                        <div class="panel panel-default">
                            <!-- Toggle Heading -->

                            <!-- Toggle Content -->
                            <div class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <div class="payment-block">

                                        <!-- Start Add 1 -->
                                        <div class="panel panel-default panel-box-border">
                                            <!-- Toggle Heading -->
                                            <div class="panel-heading">
                                                <h4 class="panel-title" style="background: none !important; font-family: 'Montserrat', sans-serif;">PICKUP DETAILS
                                                </h4>
                                            </div>
                                            <!-- Toggle Content -->
                                            <asp:ListView ID="orderaddress" runat="server">
                                                <ItemTemplate>
                                                    <div id="collapse-1" class="panel-collapse collapse in">
                                                        <div class="panel-body">
                                                            <%--<a href="#" class="edit-block btn btn-block">Edit <i class="fa fa-edit"></i>--%>
                                                            </a>
                                                            <label><%# Eval("fullname") %></label>
                                                            <p></p>
                                                            <p style="margin-top: 5px; font-weight: bold; font-size: 16px; font-family: 'Montserrat', sans-serif;">Address:</p>
                                                            <label><%# Eval("address1") %></label><br>
                                                            <label><%# Eval("address2") %></label><br>
                                                            <label><%# Eval("city") %></label><br>
                                                            <label><%# Eval("state") %></label><br>
                                                            <label><%# Eval("zip") %></label>
                                                            <p style="margin-top: 5px; font-weight: bold; font-size: 16px; font-family: 'Montserrat', sans-serif;">Contact Details:</p>
                                                            <label><%# Eval("mobile") %></label>
                                                            <br />
                                                            <label><%# Session["User"] %></label>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </div>
                                        <!-- End Add 1 -->

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <style type="text/css">
            </style>
                    <div class="col-md-4">
                        <h2 class="hed-add-col">Shipping Method</h2>
                        <!-- Start shipment 1 -->
                        <div class="panel panel-default">

                            <div class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <form action="http://www.stitchmyfabric.com/checkout/place_order" method="post" accept-charset="utf-8" id="checkout-form">
                                        <div class="shipping-block">
                                            <div class="alert alert-error" id="shipping_error_box" style="display: none"></div>
                                            <div id="shipping-methods">
                                                <p class="ship-payment-radio">
                                                    <label class="radio">
                                                        <input type="radio" name="shipping_method" value="6e356bc976aa3ee66214373df35f9b58" checked="checked" id="s6e356bc976aa3ee66214373df35f9b58">
                                                        <span>Delivery Boy</span>

                                                    </label>
                                                </p>
                                                <p class="ship-payment-radio">
                                                    <label class="radio">
                                                        <span style="color: red"></span>
                                                    </label>
                                                </p>
                                            </div>

                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- End shipment 1 -->
                        </div>
                        <!-- Start payment 1 -->
                        <h2 class="hed-add-col">Payment Method</h2>
                        <div class="panel panel-default">
                            <!-- Toggle Heading -->

                            <!-- Toggle Content -->
                            <div class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <div class="payment-block">
                                        <p class="ship-payment-radio">
                                            <label class="radio">
                                                <input type="radio" name="module" value="twocheckout" checked="checked" id="twocheckout">
                                                <span>Cash on Delivery</span>
                                            </label>
                                        </p>
                                        <!--      <p class="ship-payment-radio">
                                <label class="radio">
                                   <input type="radio" name="module" value="cod" id="cod">                        
                                   
                                   <span>Others</span>
                                </label>
                            </p> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End payment 3 -->
                        <%--<h2 class="hed-add-col">INSTRUCTIONS</h2>--%>
                        <div class="panel panel-default">
                            <!-- Toggle Heading -->

                            <!-- Toggle Content -->

                            <div class="checkout-button">
                                <asp:Button ID="btnPlace" runat="server" class="btn btn-primary btn-large btn-block after-review-butt" OnClick="btnPlace_Click" Text="Submit Order" /> 
                                <%--<button id="process-order" class="btn btn-primary btn-large btn-block after-review-butt">Submit Order</button>--%>
                            </div>
                            <%--<div class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <div class="order-instruction-block">
                                        <textarea name="shipping_notes" cols="40" rows="10" style="height: 100px; width: 100%; padding: 5px;"></textarea>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                    </div>




                </div>



            </div>
        </div>
    </div>

    </div>


    <!-- 
<div class="container-fluid">
     <div class="col-md-12 no-padding">
       <div class="heading-contant">
          <h2 class="main-top-hed"><span class="pad-r"><img src="images/final_order.png" alt="1" class=""></span>Review your order</h2>
          <hr>
      </div>                        
    </div>
    
    <div class="col-md-4 col-sm-4 col-xs-12">
      <h3 class="order_h3">address details</h3>
      <div class="details">
        <h4 class="order_h4">Shipping Details</h4>
        <label>Full Name <a href="#" style="float: right;">Edit details <i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></label>
        <h5 class="order_h5"><strong>Address :</strong></h5>
        <label>Address Line 1</label><br>
        <label>Address Line 2</label><br>
        <label>City</label><br>
        <label>Area</label><br>
        <label>Pin</label>
        <h5 class="order_h5"><strong>Contact Details :</strong></h5>
        <label>Mobile</label><br>
        <label>Email</label>
      </div>
    </div>

     <div class="col-md-4 col-sm-4 col-xs-12">
      <h3 class="order_h3">Shipping Method</h3>
      <div class="details" style="padding:20px;">
         <input type="radio" checked="checked" name="radio"> Delivery Boy
      </div>

       <h3 class="order_h3">Payment Method</h3>
      <div class="details" style="padding:20px;">
         <input type="radio" checked="checked" name="radio"> Cash on Delivery
      </div>
      <h3 class="order_h3">instructions</h3>
      <div class="details" style="padding:20px;">
         <textarea class="form-control" rows="3"></textarea>
      </div>
    </div>

     <div class="col-md-4 col-sm-4 col-xs-12">
      <h3 class="order_h3">Order review</h3>
      <div class="details">
        <br>
        <div class="row">
          <div class="col-md-3 col-sm-3 col-xs-3"><strong>Name</strong></div>
          <div class="col-md-3 col-sm-3 col-xs-3 col-md-offset-2"></div>
          <div class="col-md-3 col-sm-3 col-xs-3 pull-right"><strong>Totals</strong></div>
        </div>
         <hr>
         <div class="row">
          <div class="col-md-3 col-sm-3 col-xs-3"><label>Salwar</label></div>
          <div class="col-md-3 col-sm-3 col-xs-3 col-md-offset-2"></div>
          <div class="col-md-3 col-sm-3 col-xs-3 pull-right"><label>PKR 1500</label></div>
        </div>
         <hr>
         <div class="row">
          <div class="col-md-3 col-sm-3 col-xs-3"></div>
          <div class="col-md-3 col-sm-3 col-xs-3 col-md-offset-2"><p>Sub Total</p></div>
          <div class="col-md-3 col-sm-3 col-xs-3 pull-right"><label>PKR 1500</label></div>
        </div>
        <hr>
         <div class="row">
          <div class="col-md-1 col-sm-1 col-xs-1"></div>
          <div class="col-md-4 col-sm-4 col-xs-4 col-md-offset-3"><p style="font-size: 18px; font-weight: bold;">Grand Total</p></div>
          <div class="col-md-4 col-sm-4 col-xs-4 pull-right"><label style="font-size: 18px; font-weight: bold;">PKR 1500</label></div>
        </div>
        <br>
        

       
      </div>
      <br>

      <a href="#" class="btn btn-default btn-order">Submit Order</a>
    </div>




</div>


<style type="text/css">
  .order_h3
  {
    text-transform: uppercase;
    background: #F3F3F3;
    padding: 10px;
  }
  .order_h4
  {
    border-bottom: 1px dotted #000;
    border-top: 1px dotted #000;
    padding: 10px;
    text-transform: uppercase;

  }
  .order_h5
  {
    font-size: 16px;
  }
  .details
  {
    border: 1px solid rgb( 186, 186, 186 );
    border-radius: 5px;
    padding-left: 10px;
    padding-right: 10px;
  }
  .details label
  {
    color: #6E7883;
  }
  .order_p
  {
    border-bottom: 1px dotted #000;
    padding-top: 20px;
  }
  .btn-order, .btn-order:hover
  {
    padding: 10px;
    padding-right: 30px;
    padding-left: 30px;
    background: #E40256;
    color: #fff;
    border:none;
  }
</style>
 -->
</asp:Content>
