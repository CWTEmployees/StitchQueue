﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="StitchQueue.Admin.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
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

        @media (min-width: 468px) and (max-width: 1024px) {
            .shap {
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
                        <asp:DropDownList ID="drpordstatus" class="form-control" runat="server">
                            <asp:ListItem>Order placed</asp:ListItem>
                            <asp:ListItem>Ready for Pickup</asp:ListItem>
                            <asp:ListItem>In Stitching</asp:ListItem>
                            <asp:ListItem>Stitching Completed</asp:ListItem>
                            <asp:ListItem>Ready For delivery</asp:ListItem>
                            <asp:ListItem>Delivered</asp:ListItem>
                        </asp:DropDownList>
                    <%--<select class="form-control" required="true">
                            <option selected disabled value="">Select..</option>
                            <option>Order placed</option>
                            <option>Ready for Pickup</option>
                            <option>In Stitching </option>
                            <option>Stitching Completed</option>
                            <option>Ready For delivery</option>
                            <option>Delivered</option>
                        </select>--%>
                    <!-- <input type="date" name="bday" class="form-control" id="product" placeholder="ENTER PRODUCT CATEGORY" required> -->
                </div>
                <asp:Button ID="btnshow" runat="server" Text="Submit" class="btn btn-primary button6 shap" OnClick="btnshow_Click"/>
                <%--<button type="submit" class="btn btn-primary button6 shap">Submit</button>--%>
            </form>
            <!--  <p>&emsp;</p>
                    <button class="btn btn-info button3">Add Category</button> -->
        </div>

    </div>

    <div class="container-fluid">
        <div class="col-md-12 col-sm-12">

            <br/>
            <br/>
            <div class="table-responsive">
                <asp:GridView ID="OrderGrid" runat="server" Visible="false" AllowPaging="True"  AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                    ShowHeaderWhenEmpty="True"
                    OnRowCancelingEdit="OrderGrid_RowCancelingEdit" OnRowEditing="OrderGrid_RowEditing"
                    OnRowUpdating="OrderGrid_RowUpdating"
                    OnSelectedIndexChanged="OrderGrid_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <%--<asp:BoundField DataField="OrderId" HeaderText="OrderId" SortExpression="OrderId" />--%>
                        <asp:TemplateField>
                            <HeaderTemplate>OrderId</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblOrderId" runat="server" Text='<%#Bind("OrderId")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--<asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />--%>
                        <asp:TemplateField>
                            <HeaderTemplate>CustomerName</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblCustomerName" runat="server" Text='<%#Bind("CustomerName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--<asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />--%>
                        <asp:TemplateField>
                            <HeaderTemplate>MobileNo</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblMobileNo" runat="server" Text='<%#Bind("MobileNo")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--<asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />--%>
                        <asp:TemplateField>
                            <HeaderTemplate>Address</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblAddress" runat="server" Text='<%#Bind("Address")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--<asp:BoundField DataField="Vendor" HeaderText="Vendor" SortExpression="Vendor" />--%>
                        <asp:TemplateField>
                            <HeaderTemplate>Vendor</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblVendor" runat="server" Text='<%#Bind("Vendor")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="OrderStatus" SortExpression="OrderStatus">
                            <EditItemTemplate>
                                <asp:DropDownList ID="StatusDrop" runat="server">
                                    <asp:ListItem Value="Order placed"></asp:ListItem>
                                    <asp:ListItem Value="Ready for Pickup"></asp:ListItem>
                                    <asp:ListItem Value="In Stitching"></asp:ListItem>
                                    <asp:ListItem Value="Stitching Completed"></asp:ListItem>
                                    <asp:ListItem Value="Ready For delivery"></asp:ListItem>
                                    <asp:ListItem Value="Delivered"></asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblOrderStatus" runat="server" Text='<%# Bind("OrderStatus") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--<asp:BoundField DataField="PickupPerson" HeaderText="PickupPerson" SortExpression="PickupPerson" />--%>
                        <asp:TemplateField>
                            <HeaderTemplate>PickupPerson</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPickupPerson" runat="server" Text='<%#Bind("PickupPerson")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--<asp:BoundField DataField="PickupDate" HeaderText="PickupDate" SortExpression="PickupDate" />--%>
                        <asp:TemplateField>
                            <HeaderTemplate>PickupDate</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblPickupDate" runat="server" Text='<%#Bind("PickupDate")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--<asp:BoundField DataField="DeliveryPerson" HeaderText="DeliveryPerson" SortExpression="DeliveryPerson" />--%>
                        <asp:TemplateField>
                            <HeaderTemplate>DeliveryPerson</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDeliveryPerson" runat="server" Text='<%#Bind("DeliveryPerson")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <%--<asp:BoundField DataField="DeliveryDate" HeaderText="DeliveryDate" SortExpression="DeliveryDate" />--%>
                        <asp:TemplateField>
                            <HeaderTemplate>DeliveryDate</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDeliveryDate" runat="server" Text='<%#Bind("DeliveryDate")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <HeaderTemplate>Operation</HeaderTemplate>
                            <ItemTemplate>
                                <asp:Button ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="btnUpdate" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="btnCancel" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false" />
                            </EditItemTemplate>


                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        No record available                    
                    </EmptyDataTemplate>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>

               <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StitchQueueConnectionString3 %>" SelectCommand="SELECT [OrderId], [CustomerName], [MobileNo], [Address], [Vendor], [OrderStatus], [PickupPerson], [PickupDate], [DeliveryPerson], [DeliveryDate] FROM [Orders] WHERE ([OrderStatus] = @OrderStatus)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="drpordstatus" Name="OrderStatus" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>--%>


                <%-- <table class="table table-striped">
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
            </table>--%>
            </div>

        </div>
    </div>
</asp:Content>
