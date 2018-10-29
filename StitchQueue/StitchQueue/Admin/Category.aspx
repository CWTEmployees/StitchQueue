<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="StitchQueue.Admin.Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<script src="js/jquery-2.2.3.min.js"></script>--%>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/ModelCategory.js"></script>
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
        <h2 align="center">Categories</h2>
        <br />
        <div class="container" style="margin: 0 auto;">
            <form class="form-horizontal" action="#" id="category_insert" method="post">

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="id">Model Id:</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="modelid" runat="server" class="form-control" placeholder="Enter Model Id"></asp:TextBox>
                        <%--<input type="text" name="id" class="form-control" id="id" placeholder="Enter Model Id">--%>
                    </div>
                </div>





                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Model Category:</label>
                    <div class="col-sm-4">
                        <!-- <select id="category" name ="category" class="form-control" placeholder="Category*"></select> -->
                        <asp:DropDownList ID="DropDown1" runat="server">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>

                            <asp:ListItem Value="1">Blouse</asp:ListItem>
                            <asp:ListItem Value="2">Anarkali</asp:ListItem>
                            <asp:ListItem Value="3">Kurti</asp:ListItem>
                            <asp:ListItem Value="4">Salwar</asp:ListItem>
                            <asp:ListItem Value="5">Bottom</asp:ListItem>
                            <asp:ListItem Value="6">Embroidery</asp:ListItem>


                        </asp:DropDownList>
                        <%--<select class="form-control input-lg" id="model_category" name="model_category"></select>--%>
                    </div>
                </div>

                <%--testting dropdown--%>

                 <form id="form1">
        <div>
            <div>
                <script type="text/javascript">
                    window.onload = function () {
                        debugger;
                        var parentSelect = document.getElementById("DropDownList1");
                        var childSelect = document.getElementById("DropDownList2");
                        var options = [].slice.apply(childSelect, [0]);
                        var emptyOption = options[0];
                        childSelect.innerHTML = "";
                        childSelect.options.add(emptyOption);

                        parentSelect.addEventListener("change", function (e) {
                            var selectedValue = parentSelect.options[parentSelect.selectedIndex].value;
                            var setall = new Array();
                            setall = selectedValue.split(',');
                            var selectedValue = setall[0];
                            childSelect.innerHTML = "";
                            childSelect.options.add(emptyOption);
                            if (selectedValue == 0) return;
                            for (var i = 0; i < options.length; i++) {
                                if (options[i].getAttribute("value").split(',')[0] == selectedValue) {
                                    childSelect.options.add(options[i]);
                                }
                            }

                        });
                        return false;
                    };
                </script>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="149px">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                    <asp:ListItem Value="7">Anarkali</asp:ListItem>
                    <asp:ListItem Value="3">Blouse</asp:ListItem>
                    <asp:ListItem Value="8">Bottom</asp:ListItem>
                    <asp:ListItem Value="9">Embroidery</asp:ListItem>
                    <asp:ListItem Value="4">Kurti</asp:ListItem>
                    <asp:ListItem Value="6">Salwar</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" Height="18px" Width="151px">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                    <asp:ListItem Value="7">Dress Model</asp:ListItem>
                    <asp:ListItem Value="3">Front</asp:ListItem>
                    <asp:ListItem Value="3">Back</asp:ListItem>
                    <asp:ListItem Value="3">Sleeve</asp:ListItem>
                    <asp:ListItem Value="8">Bottom Model</asp:ListItem>
                    <asp:ListItem Value="9">Embroiedry Model</asp:ListItem>
                    <asp:ListItem Value="4">Front</asp:ListItem>
                    <asp:ListItem Value="4">Back</asp:ListItem>
                    <asp:ListItem Value="4">Sleeve</asp:ListItem>
                    <asp:ListItem Value="6">Front</asp:ListItem>
                    <asp:ListItem Value="6">Back</asp:ListItem>
                    <asp:ListItem Value="6">Sleeve</asp:ListItem>
                    <asp:ListItem Value="6">Bottom</asp:ListItem>
                    
                    
                </asp:DropDownList>
            </div>
        </div>
    </form>

                <%--                <div class="col-xs-6">
  <select class="form-control" name="select1" id="select1">
    <option value="1">Blouse</option>
    <option value="2">Anarkali</option>
    <option value="3">Kurti</option>
    <option value="4">Salwar</option>
  </select>
</div>
<div class="col-xs-6">
  <select class="form-control" name="select2" id="select2">
    <option value="1">front</option>
    <option value="1">back</option>
    <option value="1">Sleeve</option>
    <option value="2">DressModel</option>
 
<option value="3">front</option>
    <option value="3">back</option>
    <option value="3">Sleeve</option>
 
    
    <option value="4">front</option>
    <option value="4">back</option>
    <option value="4">Sleeve</option>
    <option value="4">BWM<option>
</select>
</div>--%>
                <script>
                    //Reference: https://jsfiddle.net/fwv18zo1/
                    var $DropDown1 = $('#DropDown1'),
             $DropDown2 = $('#DropDown2'),
         $options = $DropDown2.find('option');

                    $DropDown1.on('change', function () {
                        $DropDown2.html($options.filter('[value="' + this.value + '"]'));
                    }).trigger('change');
                </script>


                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Sub Category:</label>
                    <div class="col-sm-4">
                        <!-- <select name ="sub_category" id ="sub_category" class="form-control" placeholder="Sub category"></select> -->
                        <asp:DropDownList ID="DropDown2" runat="server">
                            <asp:ListItem Value="0">--Select--</asp:ListItem>

                            <asp:ListItem Value="1">Front</asp:ListItem>
                            <asp:ListItem Value="1">Back</asp:ListItem>
                            <asp:ListItem Value="1">Sleeve</asp:ListItem>


                            <asp:ListItem Value="2">Dress Model</asp:ListItem>

                            <asp:ListItem Value="3">Front</asp:ListItem>
                            <asp:ListItem Value="3">Back</asp:ListItem>
                            <asp:ListItem Value="3">Sleeve</asp:ListItem>

                            <asp:ListItem Value="4">Front</asp:ListItem>
                            <asp:ListItem Value="4">Back</asp:ListItem>
                            <asp:ListItem Value="4">Sleeve</asp:ListItem>
                            <asp:ListItem Value="4">Bottom Model</asp:ListItem>

                            <asp:ListItem Value="5">Bottom</asp:ListItem>

                            <asp:ListItem Value="6">Embroiedry Model</asp:ListItem>




                        </asp:DropDownList>
                        <%--<select class="form-control input-lg" name="sub_category" id="sub_category"></select>--%>
                    </div>
                </div>

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Price:</label>
                    <div class="col-sm-4">
                        <input type="text" name="price" class="form-control" id="price" placeholder="Price" />
                    </div>
                </div>

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Model Title:</label>
                    <div class="col-sm-4">
                        <input type="text" name="title" class="form-control" id="title" placeholder="Title" />
                    </div>
                </div>

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Upload Image:</label>
                    <div class="col-md-4">
                        <input class="btn-bs-file btn btn-lg btn-info" id="filebutton" name="filebutton" class="input-file" type="file" accept="image/gif, image/jpeg, image/png" onchange="readURL(this);" required="true">

                        <br />
                        <img id="cwt" src="#" alt="your image" />
                    </div>
                </div>

            </form>
        </div>
    </div>











    <h1>&emsp;</h1>
    <div class="container-fluid" align="center" style="">
        <div class="row">

            <div class="col-md-3 col-sm-3 col-xs-6">
                <button class="btn btn-primary btn-category">ADD</button>
            </div>
            <!-- <div class="col-md-3 col-sm-3 col-xs-6">
                       <button class="btn btn-primary btn-category">EDIT</button>
                   </div> -->
            <div class="col-md-3 col-sm-3 col-xs-6">
                <button class="btn btn-primary btn-category">UPDATE</button>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
                <button class="btn btn-primary btn-category">DELETE</button>
            </div>

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


    <%-- <script>

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

    </script>--%>



    <!-- loading-gif Js -->
    <%--  <script src="js/modernizr.js"></script>
    <script>
        //paste this code under head tag or in a seperate js file.
        // Wait for window load
        $(window).load(function () {
            // Animate loader off screen
            $(".se-pre-con").fadeOut("slow");;
        });
    </script>--%>
    <!--// loading-gif Js -->
    <!-- Sidebar-nav Js -->
    <%-- <script>
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>--%>
    <!--// Sidebar-nav Js -->


    <!-- dropdown nav -->
    <%-- <script>
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
    </script>--%>
    <!-- //dropdown nav -->

    <!-- Js for bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->


    <%-- <script type="text/javascript" src="js/category.js"></script>
    <script>

        populateCountries("model_category", "sub_category");
        // populateCountries("country2","state2"); 
    </script>--%>



    <script type="text/javascript">
        
    </script>

</asp:Content>
