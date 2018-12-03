<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="StitchQueue.Admin.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
        .form-inline {
            width: 100%;
        }

            .form-inline .form-control {
                display: inline-block;
                vertical-align: middle;
                margin-bottom: 10px;
                align-items: center;
            }

            .form-inline .control-label {
            }

            .form-inline label {
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-align: center;
                -ms-flex-align: center;
                align-items: center;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                justify-content: right;
                margin-bottom: 0;
                width: 100px !important;
                height: 40px !important;
            }

        .input-file {
            background: #E1206B;
            border: none;
            color: #fff;
        }

        .btn-bs-file {
            position: relative;
            text-align: left;
        }


            .btn-bs-file input[type="file"] {
                position: absolute;
                top: -9999999;
                filter: alpha(opacity=0);
                opacity: 0;
                width: 0;
                height: 0;
                outline: none;
                cursor: inherit;
            }

        .btn-info {
            color: #000;
            background-color: #fff;
            border-color: #17a2b8;
            font-size: 14px;
        }
    </style>


    <h1>&emsp;</h1>

    <div class="container-fluid">
        <h2 align="center">Product</h2>
        <br />
        <div class="container" style="margin: 0 auto;">
            <form class="form-horizontal" action="#" id="category_insert" method="post">

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="id">Product Id:</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="productid" runat="server" class="form-control" placeholder="Enter Product Id"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPname" runat="server" ForeColor="Red"  ValidationGroup="Addprdct" ControlToValidate="productid" ErrorMessage="Enter Product Id" Display="Dynamic"></asp:RequiredFieldValidator>
                        <%--<input type="text" name="id" class="form-control" id="id" placeholder="Enter Model Id">--%>
                    </div>
                </div>


                <div class="form-inline" runat="server" id="divModel">   
                    <label class="control-label col-md-3 col-sm-3" for="Category">Product Category:</label>
                    <div class="col-sm-4">
                        <!-- <select id="category" name ="category" class="form-control" placeholder="Category*"></select> -->
                       <asp:TextBox ID="pName" runat="server" class="form-control" placeholder="Enter Product Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"  ValidationGroup="Addprdct" ControlToValidate="pName" ErrorMessage="Enter Product Name" Display="Dynamic"></asp:RequiredFieldValidator>
                        <%--<select class="form-control input-lg" id="model_category" name="model_category"></select>--%>
                    </div>
                </div>

             

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Price:</label>
                    <div class="col-sm-4">
                        <%--<input type="text" name="price" class="form-control" id="price" placeholder="Price" />--%>
                        <asp:TextBox ID="txtprice" runat="server" class="form-control" placeholder="Price"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvprice" runat="server" ForeColor="Red" ValidationGroup="Addprdct" ControlToValidate="txtprice" ErrorMessage="Enter product price"></asp:RequiredFieldValidator>
                    </div>
                </div>

           

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Upload Image:</label>
                    <div class="col-md-4">
                        <asp:FileUpload ID="addimg" runat="server" class="btn-bs-file btn btn-lg btn-info" />
                        <%--<input class="btn-bs-file btn btn-lg btn-info" id="filebutton" name="filebutton" class="input-file" type="file" accept="image/gif, image/jpeg, image/png" onchange="readURL(this);" required="true"/>--%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ValidationGroup="Addprdct" ControlToValidate="addimg" ErrorMessage="Enter Images"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="Addprdct" Display="Dynamic" Text="*Invalid format" ForeColor="Red" ToolTip="Image formate only" ControlToValidate="addimg" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
                        <br />
                        <%--<img id="cwt" src="#" alt="your image" />--%>
                    </div>
                </div>

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Upload Image:</label>
                    <div class="col-md-4">
                        <asp:FileUpload ID="addimg2" runat="server" class="btn-bs-file btn btn-lg btn-info" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ValidationGroup="Addprdct" ControlToValidate="addimg2" ErrorMessage="Enter Images"></asp:RequiredFieldValidator>
                        <%--<input class="btn-bs-file btn btn-lg btn-info" id="filebutton" name="filebutton" class="input-file" type="file" accept="image/gif, image/jpeg, image/png" onchange="readURL(this);" required="true"/>--%>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationGroup="Addprdct" Display="Dynamic" Text="*Invalid format" ForeColor="Red" ToolTip="Image formate only" ControlToValidate="addimg2" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
                        <br />
                        <%--<img id="cwt" src="#" alt="your image" />--%>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <asp:Label ID="prodlbl" runat="server" Text=""></asp:Label>

   








    <h1>&emsp;</h1>
    <div class="container-fluid" align="center" style="">
        <div class="row">

            <div class="col-md-3 col-sm-3 col-xs-6">
                <asp:Button ID="btnAdd" runat="server" class="btn btn-primary btn-category" ValidationGroup="Addprdct" Text="ADD" OnClick="btnAdd_Click" />
                <%--<button class="btn btn-primary btn-category">ADD</button>--%>
            </div>
             <%--<div class="col-md-3 col-sm-3 col-xs-6">
                       <button class="btn btn-primary btn-category">EDIT</button>
                   </div> 
            <div class="col-md-3 col-sm-3 col-xs-6">
                <button class="btn btn-primary btn-category">UPDATE</button>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
                <button class="btn btn-primary btn-category">DELETE</button>
            </div>--%>

        </div>
    </div>

    <style type="text/css">
        .btn-category {
            width: 90%;
        }

        .btn-category2 {
            width: 150px;
            align-items: center;
            text-align: center;
        }
    </style>


    <script>

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#cwt')
                        .attr('src', e.target.result)
                        .width(200)
                        .height(200);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>


    <!-- Required common Js -->
    <script src='js/jquery-2.2.3.min.js'></script>
    <!-- //Required common Js -->
    <!-- loading-gif Js -->
    <script src="js/modernizr.js"></script>
    <script>
        //paste this code under head tag or in a seperate js file.
        // Wait for window load
        $(window).load(function () {
            // Animate loader off screen
            $(".se-pre-con").fadeOut("slow");;
        });
    </script>
    <!--// loading-gif Js -->
    <!-- Sidebar-nav Js -->
    <script>
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
    <!--// Sidebar-nav Js -->


    <!-- dropdown nav -->
    <script>
        $(document).ready(function () {
            $(".dropdown").hover(
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function () {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- //dropdown nav -->

    <!-- Js for bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->


    <script type="text/javascript" src="js/category.js"></script>
    <script >

        populateCountries("model_category", "sub_category");
        // populateCountries("country2","state2"); 
    </script>
</asp:Content>
