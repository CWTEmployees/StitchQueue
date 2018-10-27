<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="StitchQueue.Admin.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
                 thead 
             {
                background-color: #04528E;
                color: #ffffff !important;
            }
            .head  tr th
            {
                color: #ffffff;
            }
            .table-striped > tbody > tr:nth-of-type(2n+1) 
            {
                background-color: #f9f9f9;
            }
             .form-inline .form-control 
            {
                display: inline-block;
                width: 300px;
                vertical-align: middle;
            }
            .center_div
            {
                margin: 0 auto;
                margin-left: 200px;
                width:80%;
                text-align:center;
                align-items: center;
            }
 @media (min-width: 468px) and (max-width: 1024px) {
        .shap{
  margin-left: 110px;
   margin-top: 10px;
        }
}  
               @media (min-width: 320px) and (max-width: 767px) {
  
  .center_div {

    text-align: center;
    margin-left: -10px;

}
  
}
             
            </style>

            <h3 align="center">ORDER DETAILS</h3>
             <div class="container-fluid">
        <!-- Form Name -->
               <br>
               <div class="container center_div">
                    <form class="form-inline" action="">
                      <div class="form-group">
                        <label for="product">Select date:</label>&emsp;
                        <select class="form-control" required="true">
                            <option selected disabled value="">Select..</option>
                            <option>Order placed</option>
                            <option>Ready for Pickup</option>
                            <option>In Stitching </option>
                            <option>Stitching Completed</option>
                            <option>Ready For delivery</option>
                            <option>Delivered</option>
                        </select>
                        <!-- <input type="date" name="bday" class="form-control" id="product" placeholder="ENTER PRODUCT CATEGORY" required> -->
                      </div>
                      <button type="submit" class="btn btn-primary button6 shap">Submit</button>

                    </form>
                   <!--  <p>&emsp;</p>
                    <button class="btn btn-info button3">Add Category</button> -->
               </div>
                        
            </div>

            <div class="container-fluid">
            <div class="col-md-12 col-sm-12">
        
            <br><br>
                <div class="table-responsive">
            <table class="table table-striped">
                <thead class="head">
                    <tr>
                        <th>Order ID</th>
                        <th>Customer Name</th>
                        <th>Contact</th>
                        <th>Address</th>
                        <th>Vendor Name</th>
                        <th>Status</th>
                        <th>Pickup person Name</th>
                        <th>Pickup date</th>
                        <th>Delivery person Name</th>
                        <th>Delivery date</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="ttr">
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxx</td>
                        <td>xxx</td>
                        <td>xxx</td>
                        <td>
                            
                            <select class="form-control">
                              <option selected>Status..</option>
                              <option>Ready for Pickup</option>
                              <option>In Stitching</option>
                              <option>Stitching Complete</option>
                              <option>Ready For delivery</option>
                              <option>Delivered</option>
                            </select>
                                                       
                        </td>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxx</td>
                        <td>xxx</td>
                        <td><button class="btn btn-info">Save</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxx</td>
                        <td>xxx</td>
                        <td>xxx</td>
                        <td>
                            <select class="form-control">
                              <option selected>Status..</option>
                              <option>Ready for Pickup</option>
                              <option>In Stitching</option>
                              <option>Stitching Complete</option>
                              <option>Ready For delivery</option>
                              <option>Delivered</option>
                            </select>
                        </td>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxx</td>
                        <td>xxx</td>
                        <td><button class="btn btn-info">Save</button></td>
                    </tr>
                    <tr class="ttr">
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxx</td>
                        <td>xxx</td>
                        <td>xxx</td>
                        <td>
                            <select class="form-control">
                              <option selected>Status..</option>
                              <option>Ready for Pickup</option>
                              <option>In Stitching</option>
                              <option>Stitching Complete</option>
                              <option>Ready For delivery</option>
                              <option>Delivered</option>
                            </select>
                        </td>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxx</td>
                        <td>xxx</td>
                        <td><button class="btn btn-info">Save</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxx</td>
                        <td>xxx</td>
                        <td>xxx</td>
                        <td>
                            <select class="form-control">
                              <option selected>Status..</option>
                              <option>Ready for Pickup</option>
                              <option>In Stitching</option>
                              <option>Stitching Complete</option>
                              <option>Ready For delivery</option>
                              <option>Delivered</option>
                            </select>
                        </td>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxx</td>
                        <td>xxx</td>
                        <td><button class="btn btn-info">Save</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>xxx</td>
                        <td>xxx</td>
                        <td>
                            <select class="form-control">
                              <option selected>Status..</option>
                              <option>Ready for Pickup</option>
                              <option>In Stitching</option>
                              <option>Stitching Complete</option>
                              <option>Ready For delivery</option>
                              <option>Delivered</option>
                            </select>
                        </td>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxx</td>
                        <td>xxx</td>
                        <td><button class="btn btn-info">Save</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxx</td>
                        <td>xxx</td>
                        <td>xxx</td>
                        <td>
                            <select class="form-control">
                              <option selected>Status..</option>
                              <option>Ready for Pickup</option>
                              <option>In Stitching</option>
                              <option>Stitching Complete</option>
                              <option>Ready For delivery</option>
                              <option>Delivered</option>
                            </select>
                        </td>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxx</td>
                        <td>xxx</td>
                        <td><button class="btn btn-info">Save</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxx</td>
                        <td>xxx</td>
                        <td>xxx</td>
                        <td>
                            <select class="form-control">
                              <option selected>Status..</option>
                              <option>Ready for Pickup</option>
                              <option>In Stitching</option>
                              <option>Stitching Complete</option>
                              <option>Ready For delivery</option>
                              <option>Delivered</option>
                            </select>
                        </td>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxx</td>
                        <td>xxx</td>
                        <td><button class="btn btn-info">Save</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxx</td>
                        <td>xxx</td>
                        <td>xxx</td>
                        <td>
                            <select class="form-control">
                              <option selected>Status..</option>
                              <option>Ready for Pickup</option>
                              <option>In Stitching</option>
                              <option>Stitching Complete</option>
                              <option>Ready For delivery</option>
                              <option>Delivered</option>
                            </select>
                        </td>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxx</td>
                        <td>xxx</td>
                        <td><button class="btn btn-info">Save</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxx</td>
                        <td>xxx</td>
                        <td>xxx</td>
                        <td>
                            <select class="form-control">
                              <option selected>Status..</option>
                              <option>Ready for Pickup</option>
                              <option>In Stitching</option>
                              <option>Stitching Complete</option>
                              <option>Ready For delivery</option>
                              <option>Delivered</option>
                            </select>
                        </td>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxx</td>
                        <td>xxx</td>
                        <td><button class="btn btn-info">Save</button></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxx</td>
                        <td>xxx</td>
                        <td>xxx</td>
                        <td>
                            <select class="form-control">
                              <option selected>Status..</option>
                              <option>Ready for Pickup</option>
                              <option>In Stitching</option>
                              <option>Stitching Complete</option>
                              <option>Ready For delivery</option>
                              <option>Delivered</option>
                            </select>
                        </td>
                        <td>1</td>
                        <td>3000</td>
                        <td>xxxxxxx</td>
                        <td>xxx</td>
                        <td><button class="btn btn-info">Save</button></td>
                    </tr>
                </tbody>
            </table>
           </div>

            </div>
        </div>
</asp:Content>
