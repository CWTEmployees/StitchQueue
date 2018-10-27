<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanelMaster.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="StitchQueue.UserPanel.OrderHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="process-container" style="margin-top: 70px;">
    <div class="container no-padding">
        
            <div class="col-md-12 no-padding">
                
                    <div class="heading-contant">
                        <h1><span class="pad-r"><img src="./files/final_order.png" alt="1" class=""></span>Order history</h1>         </div>
                        <div class="col-md-12 col-sm-12 no-padding">
                            <table class="col-md-12 col-sm-12" style="border: 2px solid #ECF0F1;border-radius: 10px;">
                                <thead>
                                            <tr class="top-heading-line">
                                                <td class="col-md-1 col-sm-1 zero-padding">
                                                  Order No
                                                </td>
                                                <td class="col-md-2 col-sm-2 zero-padding">
                                                  Date
                                                </td>
                                                <td class="col-md-3 col-sm-3 zero-padding" style="text-align:left;">
                                                  Order Description
                                                </td>
                                                <td class="col-md-2 col-sm-2 zero-padding">
                                                  Order Total
                                                </td>
                                                <td class="col-md-2 col-sm-2 zero-padding">
                                                  Status
                                                </td>
                                                </tr>
                                </thead>
                                <tbody>
                                                                                                <!--sir is tr ka loop chalega-->
                                    <tr class="mid-contant-line">
                                        <td>xxxxxxxxx</td>
                                        <td>DD-MMM-YYYY</td>
                                        <td>
                                            <p><strong>one-piece</strong><br><br>
                                           <!--  <p id=""><a href="view_complete_order_history.html" class="order_description_complete_details" data-order_id="">View Complete Details</a></p> -->
                                        </td>
                                        <td>Rs. 1500.00</td>
                                        <td>Not Paid</td>
                                     </tr>
                                </tbody>
                            </table>                                    
                        </div>
                        <div class="clear"></div>
                    
                </div>
                  
        </div>
    </div>        
        


<link rel="stylesheet" type="text/css" href="./css/contact2.css">


</div>
    


<br>
</asp:Content>
