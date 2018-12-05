<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanelMaster.Master" AutoEventWireup="true" CodeBehind="AddressBook.aspx.cs" Inherits="StitchQueue.UserPanel.AddressBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <class ="process-container" style="margin-top:75px;">
        <div class="stand-container">
            <div class="row pad-b">
                <div class="col-md-12">
                    <div class="block-text bg-white">
                        <div class="heading-contant">
                            <h1>
                                <span class="pad-r">
                                    <img src="./files/address-book.png" alt="1" class=""></span>
                                <span>Address Book</span>
                            </h1>
                            <p style="margin-top:-40px">Your address details</p>
                        </div>
                    </div>
<style>
	.heading-contant h1 {
   
    margin: 50px;
}
	</style>
                    <div class="content row m-top-50" style="border: 1px solid #ccc; padding: 20px;">
                        <div class="row padding-bottom-30">
                            <div class="col-md-2 col-sm-2 address-block add_more_address" data-type="pickup">
                                <button id="Mybtn" class="btn btn-primary" style="font-size: 20px;margin-left: 0px;">
                                    <span style="font-size: 120px;">+</span><br>
                                    ADD ADDRESS
                                </button>
                            </div>
                            <div class="col-md-10">
                                <form id="addressbook" runat="server">
                                <div id="address" style="display: none;">

                                    <h2 class="address_h2">Address Details :-</h2>
                                    <br>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="firstname" class="control-label">First name</label>
                                            <%--<input class="form-control" id="firstname" name="firstname" placeholder="First name">--%>
                                            <asp:TextBox ID="txtfirstname" runat="server" class="form-control" placeholder="First name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvFname" runat="server" ValidationGroup="addbook" ControlToValidate="txtfirstname" ForeColor="Red" ErrorMessage="Enter FirstName" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Second name</label>
                                            <%--<input class="form-control" id="secondname" name="secondname" placeholder="Second name">--%>
                                            <asp:TextBox ID="txtsecondname" runat="server" class="form-control" placeholder="Second name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvSname" runat="server" ValidationGroup="addbook" ControlToValidate="txtsecondname" ForeColor="Red" ErrorMessage="Enter SecondName" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <label class="control-label">Address 1</label>
                                            <%--<input id="address1" name="address1" placeholder="Address 1(H.no.,Street)" type="text" class="form-control">--%>
                                            <asp:TextBox ID="txtaddress1" runat="server" class="form-control" placeholder="Address 1(H.no.,Street)"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvaddress" runat="server" ValidationGroup="addbook" ControlToValidate="txtaddress1" ForeColor="Red" ErrorMessage="Enter Address 1(H.no.,Street)" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <label class="control-label">Address 2</label>
                                            <%--<input id="autocomplete" placeholder="Address 2(Area)" onfocus="geolocate()" type="text" class="form-control">--%>
                                            <asp:TextBox ID="txtaddress2" runat="server" class="form-control" placeholder="Address 2(Area)"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvaddress2" runat="server" ValidationGroup="addbook" ControlToValidate="txtaddress2" ForeColor="Red" ErrorMessage="Enter Address 2(Area)" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label class="control-label">City</label>
                                            <%--<input class="form-control field" id="locality" placeholder="City">--%>
                                            <asp:TextBox ID="txtcity" runat="server" class="form-control" placeholder="City"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvcity" runat="server" ValidationGroup="addbook" ControlToValidate="txtcity" ForeColor="Red" ErrorMessage="Enter City" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">State</label>
                                            <%--<input class="form-control" id="administrative_area_level_1" placeholder="State">--%>
                                            <asp:TextBox ID="txtstate" runat="server" class="form-control" placeholder="State"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="addbook" ControlToValidate="txtstate" ForeColor="Red" ErrorMessage="Enter State" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label class="control-label">Zip code</label>
                                            <%--<input class="form-control" id="postal_code" placeholder="Zip code">--%>
                                            <asp:TextBox ID="txtzip" runat="server" class="form-control" placeholder="Zip Code"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvzip" runat="server" ValidationGroup="addbook" ControlToValidate="txtzip" ForeColor="Red" ErrorMessage="Enter State" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-4">
                                            <label class="control-label">Country</label>
                                            <%--<input class="form-control" id="country" placeholder="country">--%>
                                            <asp:TextBox ID="txtcountry" runat="server" class="form-control" placeholder="Country"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvcountry" runat="server" ValidationGroup="addbook" ControlToValidate="txtcountry" ForeColor="Red" ErrorMessage="Enter Country" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <label class="control-label">Phone</label>
                                            <%--<input class="form-control" id="phone" placeholder="phone">--%>
                                            <asp:TextBox ID="txtMobile" runat="server" class="form-control" placeholder="Phone"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvmobile" runat="server" ValidationGroup="addbook" ControlToValidate="txtMobile" ForeColor="Red" ErrorMessage="Enter Country" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <br>
                                     <div class="row">
                                        <div class="col-md-8">
                                            <div class="button-area">
                                                <asp:Label ID="lbladdress" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                    </div>



                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="button-area">
                                                <%--<button type="submit" class="left-button">Add Address</button>--%>
                                                <asp:Button ID="btnsubmit" runat="server" ValidationGroup="addbook" class="left-button" Text="Add Address" ForeColor="White" OnClick="btnsubmit_Click" />
                                                <button class="right-button" onclick="  return false;">Cancel</button>
                                            </div>
                                        </div>
                                    </div>



                                </div>
</form>
                            </div>
                        </div>
                    </div>





                    <br>
                    <br>
                </div>
            </div>
        </div>
    </div>
        </class>

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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
    </script>
    <script src="public/js/bootstrap.min.js"></script>
    <script>

        $(document).ready(function () {
            $('#Mybtn').click(function () {
                $('#address').toggle(500);
                $(this).hide();
                $('.right-button').click(function () {
                    // $('#address').toggle(500);
                    $('#address').hide();
                    $('#Mybtn').show();
                });
            });
        });


    </script>

    <link rel="stylesheet" type="text/css" href="./css/contact2.css">


    <br>
</asp:Content>
