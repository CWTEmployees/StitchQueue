<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="StitchQueue.Admin.Product" %>

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

        thead {
            background-color: #04528E;
            color: #ffffff !important;
        }

        .head tr th {
            color: #ffffff;
        }

        .table-striped > tbody > tr:nth-of-type(2n+1) {
            background-color: #f9f9f9;
        }

        .form-inline .form-control {
            display: inline-block;
            width: 300px;
            vertical-align: middle;
        }

        .center_div {
            margin: 0 auto;
            margin-left: 200px;
            width: 80%;
            text-align: center;
            align-items: center;
        }
    </style>


    <div class="container-fluid">
        <h2 align="center">Products</h2>
        <br>
        <div class="container" style="margin: 0 auto;">
            <form class="form-horizontal" action="">

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Model Category:</label>
                    <div class="col-sm-4">
                        <!-- <select id="category" name ="category" class="form-control" placeholder="Category*"></select> -->
                        <select class="form-control input-lg" id="model_category" name="model_category"></select>
                    </div>
                </div>

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Sub Category:</label>
                    <div class="col-sm-4">
                        <!-- <select name ="sub_category" id ="sub_category" class="form-control" placeholder="Sub category"></select> -->
                        <select class="form-control input-lg" name="sub_category" id="sub_category" placeholder="State"></select>
                    </div>
                </div>
            </form>
        </div>
    </div>




    <h1>&emsp;</h1>
    <div class="container-fluid" align="center" style="">
        <div class="row">

            <div class="col-md-3 col-sm-3 col-xs-6">
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
                <button class="btn btn-primary btn-category">SUBMIT</button>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
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

    <div class="container-fluid">
        <div class="col-sm-6">

            <br>
            <br>
            <table class="table table-striped">
                <thead class="head">
                    <tr>
                        <th>S.no.</th>
                        <th>Id</th>
                        <th>Title</th>
                        <th>Image</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="ttr">
                        <td>1</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>2</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr class="ttr">
                        <td>3</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>
                         
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>xxxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>5</td>
                        <td>xxxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>6</td>
                        <td>xxxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>7</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>8</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>9</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>10</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                </tbody>
            </table>


        </div>
    </div>

    <h1>&emsp;</h1>


     <script type= "text/javascript" src = "js/product.js"></script>
     <script>

         populateCountries("model_category", "sub_category");
         // populateCountries("country2","state2"); 
    </script>
</asp:Content>
