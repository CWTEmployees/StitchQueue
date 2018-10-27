<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Discount.aspx.cs" Inherits="StitchQueue.Admin.Discount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
                
                     .form-inline
                     {
                        width: 100%;
                     }
                  
                     .form-inline .form-control 
                     {
                        display: inline-block;
                      
                        vertical-align: middle;
                        margin-bottom: 10px;
                        align-items: center;
                      }
                      .form-inline .control-label
                      {
                       
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
                    .input-file
                    {
                        background: #E1206B;
                        border: none;
                        color: #fff;

                    }
                    .btn-bs-file
                    {
                        position:relative;
                        text-align: left;
                    }


                    .btn-bs-file input[type="file"]{
                        position: absolute;
                        top: -9999999;
                        filter: alpha(opacity=0);
                        opacity: 0;
                        width:0;
                        height:0;
                        outline: none;
                        cursor: inherit;
                    }
                    .btn-info 
                    {
                        color: #000;
                        background-color: #fff;
                        border-color: #17a2b8;
                        font-size: 14px;
                    }



                   
            </style>

           
        <h1>&emsp;</h1>

       
    
      

        <div class="container-fluid">
            <h2 align="center">Discounts</h2>
           <br>
            <div class="container" style="margin: 0 auto;">
                <form class="form-horizontal" action="">
                  <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="id">Discount Code:</label>
                    <div class="col-sm-4">
                      <input type="text" name="id" class="form-control" id="id" placeholder="Enter Discount code">
                    </div>
                  </div>

                  <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="sdate">Start date:</label>
                    <div class="col-sm-4">
                       <input type="date" name="bday" class="form-control" id="sdate" placeholder="Start Date">
                    </div>
                  </div>
                  <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="edate">End date:</label>
                    <div class="col-sm-4">
                       <input type="date" name="bday" class="form-control" id="edate" placeholder="End Date">
                    </div>
                  </div>

                  <div class="form-inline">
                        <label class="control-label col-md-3 col-sm-3" for="Category">Category:</label>
                        <div class="col-sm-4"> 
                          <select id="product_categories" name="product_categories" class="form-control">
                               <option selected disabled value="">Select category....</option>
                               <option>New Users</option>
                               <option>Users who has atleast one order</option> 
                               <option>All users</option>   
                               <option></option>   
                            </select>
                        </div>
                  </div>

                  <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3"></label>
                      <label class="control-label col-md-2 col-sm-2"><input type="checkbox" value=""> &nbsp;&nbsp;check box</label>

                  </div>

                                    
                  
                </form>
            </div>
        </div>
        <br><br><br><br><br>
</asp:Content>
