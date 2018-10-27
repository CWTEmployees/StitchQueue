<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="StitchQueue.Admin.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <h2 align="center">Change Password</h2>
        <br>
        <div class="container" style="margin: 0 auto;">
            <form class="form-horizontal">

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Current Password:</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtCurrentPass" runat="server" TextMode="Password" class="form-control" placeholder="Enter Current Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCPass" runat="server" ForeColor="Red" ValidationGroup="CPass" ControlToValidate="txtCurrentPass" ErrorMessage="Enter Current Password" Display="Dynamic"></asp:RequiredFieldValidator>
                        <%--<input type="text" name="Current" class="form-control" id="Current" placeholder="Current Password">--%>
                    </div>
                </div>
                <br>
                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">New Password:</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" class="form-control" placeholder="Enter New Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNPass" runat="server" ForeColor="Red" ValidationGroup="CPass" ControlToValidate="txtNewPass" ErrorMessage="Enter New Password" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revNPass" runat="server" ErrorMessage="Password must be between 7 to 10 characters" ControlToValidate="txtNewPass" Display="Dynamic" ForeColor="Red" ValidationGroup="CPass" ValidationExpression="^[a-zA-Z0-9'$@&#.\s]{7,10}$" />
                        <%--<input type="text" name="new" class="form-control" id="new" placeholder="New Password">--%>
                    </div>
                </div>
                <br>
                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Conform Password:</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" class="form-control" placeholder="Enter Confirm Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCnfPass" runat="server" ForeColor="Red" ValidationGroup="CPass" ControlToValidate="txtConfirmPass" ErrorMessage="Enter Confirm Password " Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmpCnfPass" runat="server" ControlToValidate="txtConfirmPass" ValidationGroup="CPass" CssClass="ValidationError" ControlToCompare="txtNewPass" ForeColor="Red" Display="Dynamic" ErrorMessage="Confirm Password Not Match" ToolTip="Password must be the same" />
                        <%--<input type="text" name="conform" class="form-control" id="conform" placeholder="Conform Password">--%>
                    </div>
                </div>
            </form>
        </div>
    </div>


    <asp:Label ID="lblPass" runat="server" Text="" ForeColor="Red"></asp:Label>

    <h1>&emsp;</h1>
    <div class="container-fluid" align="center" style="">
        <div class="row">

            <div class="col-md-3 col-sm-3 col-xs-6">
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
                <asp:Button ID="btnchangpass" runat="server" Text="Submit" class="btn btn-primary btn-category" OnClick="btnchangpass_Click" ValidationGroup="CPass" />
                <%--<button class="btn btn-primary btn-category">SUBMIT</button>--%>
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

    <h1>&emsp;</h1>
    <h1>&emsp;</h1>
    <h1>&emsp;</h1>
</asp:Content>
