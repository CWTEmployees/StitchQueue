<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PartnerDetails.aspx.cs" Inherits="StitchQueue.Admin.PartnerDetails" %>

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
    </style>

    <!-- Form Name -->
    <h3 align="center">PARTNER DETAILS</h3>


    <div class="container-fluid">
        <div class="col-sm-12">

            <br>
            <br>
            <div class="table-responsive">


                <table class="table table-striped">
                    <thead class="head">
                        <tr>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Mobile</th>
                            <th>Categories</th>
                            <%--<th>Reset Password </th>--%>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:ListView ID="detail" runat="server" >
                            <ItemTemplate>

                                <tr class="ttr">
                                    <td><%# Eval("FirstName") %></td>
                                    <td><%# Eval("Address") %></td>
                                    <td><%# Eval("Mobile") %></td>
                                    <td><%# Eval("UserType") %></td>
                                    <%--<td><a href="#">Reset password</a></td>--%>

                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </tbody>
                </table>
            </div>
          <%--  <div class="sbtn" align="right">
                <button class="btn btn-info button4">1</button>
                <button class="btn btn-info button5">2</button>
            </div>--%>

        </div>
    </div>
</asp:Content>
