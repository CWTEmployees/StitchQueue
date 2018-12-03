<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="StitchQueue.Admin.AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Form Name -->
    <h3 align="center">ADD USER</h3>

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
				margin-bottom: 20px;
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

        .control-label span {
            color: #FE0000;
        }


        @media (min-width: 1025px) and (max-width: 1580px) {

            .head {
                padding-right: 120px;
            }
        }
    </style>


    <h1>&emsp;</h1>



    <div class="container-fluid">

        <br>
        <div class="container" style="margin: 0 auto;">
            <form class="form-horizontal" action="">
                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="firstname">First name<span>*</span></label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtfirstname" runat="server" class="form-control" placeholder="First name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFname" runat="server" ValidationGroup="regist" ControlToValidate="txtfirstname" ForeColor="Red" ErrorMessage="Enter FirstName" Display="Dynamic"></asp:RequiredFieldValidator>
                        <%--<input type="text" name="firstname" class="form-control" id="firstname" placeholder="First name">--%>
                    </div>
                </div>
                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="lastname">Last name<span>*</span></label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtLastname" runat="server" class="form-control" placeholder="Last name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLname" runat="server" ValidationGroup="regist" ControlToValidate="txtLastname" ForeColor="Red" ErrorMessage="Enter LastName" Display="Dynamic"></asp:RequiredFieldValidator>
                        <%--<input type="text" name="lastname" class="form-control" id="lastname" placeholder="Last name">--%>
                    </div>
                </div>
                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="firmname">Firm name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtFirmname" runat="server" class="form-control" placeholder="Firm name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvfirm" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="txtFirmname" ErrorMessage="Enter Firm Name" Display="Dynamic"></asp:RequiredFieldValidator>
                        <%--<input type="text" name="firmname" class="form-control" id="firmname" placeholder="Firm name">--%>
                    </div>
                </div>
                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="mobile">Mobile<span>*</span></label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtMobile" runat="server" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvmbl" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="txtMobile" ErrorMessage="Enter Mobile Number" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revphn" runat="server" ValidationGroup="regist" ControlToValidate="txtMobile" ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" Text="Enter a valid phone number"></asp:RegularExpressionValidator>
                        <%--<input type="text" name="mobile" class="form-control" id="mobile" placeholder="Mobile Number">--%>
                    </div>
                </div>
                <div class="form-inline" style="margin-left: -195px;">
                    <label class="control-label col-md-4 col-sm-3 col-xs-3" for="altnumer">Alternative Contact</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtalternativcontact" runat="server" class="form-control" placeholder="Alternative Contact"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAltMob" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="txtalternativcontact" ErrorMessage="Enter alternative Mobile Number" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regaltmob" runat="server" ValidationGroup="regist" ControlToValidate="txtalternativcontact" ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" Text="Enter a valid phone number"></asp:RegularExpressionValidator>
                        <%--<input type="text" name="altnumer" class="form-control" id="altnumer" placeholder="Alternative Contact">--%>
                    </div>
                </div>
                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="email">Email<span>*</span></label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email Address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmailId" ErrorMessage="Enter Email ID" ControlToValidate="txtEmail" runat="server" ForeColor="Red" ValidationGroup="regist" Display="Dynamic" />
                        <asp:RegularExpressionValidator ID="rfvEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" ForeColor="Red" Display="Dynamic" ValidationGroup="regist"></asp:RegularExpressionValidator>
                        <%--<input type="email" name="email" class="form-control" id="email" placeholder="Email Address">--%>
                    </div>
                </div>
                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="address">Address<span>*</span></label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtaddress" runat="server" class="form-control" placeholder="Address for communication"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAddress" ErrorMessage="Enter Address" ControlToValidate="txtaddress" runat="server" ForeColor="Red" ValidationGroup="regist" Display="Dynamic" />
                        <%--<input type="text" name="address" class="form-control" id="address" placeholder="Address for communication">--%>
                    </div>
                </div>
                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="usertype">User Type<span>*</span></label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="cat" runat="server" class="form-control">
                            <asp:ListItem Value="-1">Select User Type</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>Vendor</asp:ListItem>
                            <asp:ListItem>Logistics</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="-1" ID="Req_ID"
                            Display="Dynamic" ValidationGroup="regist" runat="server"
                            ControlToValidate="cat"
                            ErrorMessage="Select User Type" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <%--<select id="usertype" name="usertype" class="form-control">
                            <option selected disabled>Select model category....</option>
                            <option>Admin</option>
                            <option>Vendor</option>
                            <option>Logistics</option>
                        </select>--%>
                    </div>
                </div>
                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3"></label>
                    <label class="control-label col-md-2 col-sm-2">
                        <asp:CheckBox ID="isactive" runat="server" Text="Is Active" />
                        <%--<input type="checkbox" value="">
                        &nbsp;&nbsp;Is Active</label>--%>
                </div>
                <%--   <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3"></label>
                    <label class="control-label head col-md-4 col-sm-4">
                        <input type="checkbox" value="">
                        &nbsp;&nbsp;Create Credentials</label>

                </div>--%>
                <br>

                <asp:Label ID="reglbl" runat="server"></asp:Label>

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3"></label>
                    <asp:Button ID="btnsubmit" runat="server" ValidationGroup="regist" class="btn btn-primary col-md-2" Text="Submit" OnClick="btnsubmit_Click" />
                    <%--<button class="btn btn-primary col-md-2">Submit</button>--%>
                </div>



            </form>
        </div>
    </div>
</asp:Content>
