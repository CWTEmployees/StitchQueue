<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="AddressDetails.aspx.cs" Inherits="StitchQueue.AddressDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <title>About us | StitchQ</title>

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
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="css/main.css">

    <link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>
    <script src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js"></script>
    <script src="./js/wow.js" type="text/javascript"></script>
    <script src="./js/back_to_top.js" type="text/javascript"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../js/autocomplete.js"></script>

    <div class="col-md-12 no-padding">

        <div class="heading-contant">
            <h1 class="main-top-hed">
                <span class="pad-r">
                    <img src="images/address_book.png" alt="1" class=""></span>Address details</h1>
            <h5 style="font-family: 'Montserrat', sans-serif;">Please provide with your relevant address details to complete the order.</h5>
            <hr>
        </div>

    </div>



    <div class="page-content">
        <div class="process-container">
            <div class="container no-padding checkout-address">



                <h2 class="address_h2">Pickup Address :-</h2>
                <br>
                <div id="address">

                    <div class="row">
                        <div class="col-md-3">
                            <label class="control-label">First name</label>
                            <asp:TextBox ID="firstname" runat="server" class="form-control" placeholder="First name"></asp:TextBox>
                            <%--<input class="form-control" id="firstname" name="firstname" placeholder="First name">--%>
                        </div>
                        <div class="col-md-3">
                            <label class="control-label">Second name</label>
                            <asp:TextBox ID="lastname" runat="server" class="form-control" placeholder="First name"></asp:TextBox>
                            <%--<input class="form-control" id="secondname" name="secondname" placeholder="Second name">--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="control-label">Address 1</label>
                            <asp:TextBox ID="address1" runat="server" class="form-control" placeholder="Address 1(H.no.,Street)"></asp:TextBox>
                            <%--<input id="address1" name="address1" placeholder="Address 1(H.no.,Street)" type="text" class="form-control">--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="control-label">Address 2</label>
                            <asp:TextBox ID="autocomplete" runat="server" ClientIDMode="Static" placeholder="Address 2(Area)" class="form-control"></asp:TextBox>
                            <%--<input id="autocomplete" placeholder="Address 2(Area)" onFocus="geolocate()" type="text" class="form-control">--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <label class="control-label">City</label>
                            <asp:TextBox ID="city" runat="server" placeholder="City" class="form-control"></asp:TextBox>
                            <%--<input class="form-control field" id="locality" placeholder="City">--%>
                        </div>
                        <div class="col-md-3">
                            <label class="control-label">State</label>
                            <asp:TextBox ID="state" runat="server" placeholder="State" class="form-control"></asp:TextBox>
                            <%--<input class="form-control" id="administrative_area_level_1" placeholder="State">--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <label class="control-label">Zip code</label>
                            <asp:TextBox ID="zipcode" runat="server" placeholder="Zip code" class="form-control"></asp:TextBox>
                            <%--<input class="form-control" id="postal_code" placeholder="Zip code">--%>
                        </div>
                        <div class="col-md-3">
                            <label class="control-label">Country</label>
                            <asp:TextBox ID="country" runat="server" placeholder="country" class="form-control"></asp:TextBox>
                            <%--<input class="form-control" id="country" placeholder="country">--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="control-label">Phone</label>
                            <asp:TextBox ID="phone" runat="server" placeholder="phone" class="form-control"></asp:TextBox>
                                
                        </div>
                    </div>
                </div>

                <br />



                <div class="checkbox">
                    <label>
                        <asp:CheckBox ID="ship" BorderStyle="Double" runat="server" OnCheckedChanged="ship_CheckedChanged" Text="Click Here Shipp to Same Address" />
                        <%--<input type="checkbox" id="ship" onclick="myFunction()" />Click Here Shipp to Different Address</label>--%>
                </div>

                <br />
                <br />



                <div id="addres" style="display:">
                    <h2 class="address_h2">Shipping Address :-</h2>
                    <br>

                        <div class="row">
                        <div class="col-md-3">
                            <label class="control-label">First name</label>
                            <asp:TextBox ID="SFirstname" runat="server" class="form-control" placeholder="First name"></asp:TextBox>
                            <%--<input class="form-control" id="firstname" name="firstname" placeholder="First name">--%>
                        </div>
                        <div class="col-md-3">
                            <label class="control-label">Second name</label>
                            <asp:TextBox ID="SLastname" runat="server" class="form-control" placeholder="First name"></asp:TextBox>
                            <%--<input class="form-control" id="secondname" name="secondname" placeholder="Second name">--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="control-label">Address 1</label>
                            <asp:TextBox ID="SAddress1" runat="server" class="form-control" placeholder="Address 1(H.no.,Street)"></asp:TextBox>
                            <%--<input id="address1" name="address1" placeholder="Address 1(H.no.,Street)" type="text" class="form-control">--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="control-label">Address 2</label>
                            <asp:TextBox ID="SAddress2" runat="server" ClientIDMode="Static" placeholder="Address 2(Area)" class="form-control"></asp:TextBox>
                            <%--<input id="autocomplete" placeholder="Address 2(Area)" onFocus="geolocate()" type="text" class="form-control">--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <label class="control-label">City</label>
                            <asp:TextBox ID="SCity" runat="server" placeholder="City" class="form-control"></asp:TextBox>
                            <%--<input class="form-control field" id="locality" placeholder="City">--%>
                        </div>
                        <div class="col-md-3">
                            <label class="control-label">State</label>
                            <asp:TextBox ID="SState" runat="server" placeholder="State" class="form-control"></asp:TextBox>
                            <%--<input class="form-control" id="administrative_area_level_1" placeholder="State">--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <label class="control-label">Zip code</label>
                            <asp:TextBox ID="SZipcode" runat="server" placeholder="Zip code" class="form-control"></asp:TextBox>
                            <%--<input class="form-control" id="postal_code" placeholder="Zip code">--%>
                        </div>
                        <div class="col-md-3">
                            <label class="control-label">Country</label>
                            <asp:TextBox ID="SCountry" runat="server" placeholder="country" class="form-control"></asp:TextBox>
                            <%--<input class="form-control" id="country" placeholder="country">--%>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label class="control-label">Phone</label>
                            <asp:TextBox ID="SPhone" runat="server" placeholder="phone" class="form-control"></asp:TextBox>
                                
                        </div>
                    </div>
                </div>

                <br />
                <br />

                <div class="row">
                    <div class="col-md-12 center">
                        <input type="submit" name="submit" value="Submit" id="Submit" class="place-order-button" style="color: #fff;">
                    </div>
                </div>

            </div>
        </div>
    </div>

    <br />
    <br />
    <style type="text/css">
        .form-control {
            -moz-box-shadow: inset -3px -3px 10px #eee;
            -webkit-box-shadow: inset -3px -3px 10px #eee;
            box-shadow: inset -3px -3px 10px #eee;
            border-radius: 15px !important;
        }

        .place-order-button {
            background-color: #fa735d !important;
            border: none;
            color: #fff !important;
            font-size: 14px !important;
            letter-spacing: 1px !important;
            padding: 10px 18px !important;
            text-transform: uppercase !important;
            font-family: 'Montserrat', sans-serif;
        }

        a.place-order-button:hover {
            background-image: linear-gradient(to bottom, #ff5c61 0%, #ff383e 100%);
            color: #fff;
            cursor: pointer;
        }

        .place-order-button:hover {
            background-image: linear-gradient(to bottom, #ff5c61 0%, #ff383e 100%);
            color: #fff;
            cursor: pointer;
        }
    </style>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBTu3dWM5XOAh7Vp4F87hCjA9DWwQIB3tU&libraries=places&callback=initAutocomplete" async defer></script>


    <script type="text/javascript">
    function myFunction() {
               var checkBox = document.getElementById("ship");
               var text = document.getElementById("address2");
               if (checkBox.checked == true) {
                   text.style.display = "block";
               }
               else {
                   text.style.display = "none";
               }
           }
           </script>
</asp:Content>
