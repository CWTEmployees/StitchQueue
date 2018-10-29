<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="StitchQueue.Admin.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap-theme.css"></script>
    
    


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

            
                <script>
                    //Reference: https://jsfiddle.net/fwv18zo1/
                    debugger;
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
</asp:Content>
