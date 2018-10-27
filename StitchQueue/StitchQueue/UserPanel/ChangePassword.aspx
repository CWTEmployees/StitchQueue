<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanelMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="StitchQueue.UserPanel.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="process-container">
        <div class="container no-padding">

            <div class="col-md-12 no-padding">
                <form action="#" method="post" accept-charset="utf-8" id="reset-password-form" name="reset-password-form" role="form">
                    <div class="heading-contant">
                        <h1><span class="pad-r">
                            <img src="./files/computer_icon.png" alt="1" class=""></span>Change your password</h1>
                        <!-- <p>You can change your password below.</p>
                                <p><a href="">Forgot your password?</a></p>-->
                    </div>
                    <div class="col-md-12 no-padding change-pas-in">
                        <div class="row">
                            <div class="col-sm-3 col-xs-12">
                                <div class="col-xs-12 text-label">
                                    Current Password
                                </div>
                            </div>
                            <div class="col-sm-5 col-xs-12">
                                <asp:TextBox ID="txtCurrentPass" runat="server" TextMode="Password" class="form-control" placeholder="Enter Current Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCPass" runat="server" ForeColor="Red" ValidationGroup="CPass" ControlToValidate="txtCurrentPass" ErrorMessage="Please Enter Current Password" Display="Dynamic"></asp:RequiredFieldValidator>
                                <%--<input id="currentpassword" name="currentpassword" type="password">--%>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3 col-xs-12">
                                <div class="col-xs-12 text-label">
                                    New Password
                                </div>
                            </div>
                            <div class="col-sm-5 col-xs-12">
                                <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" class="form-control" placeholder="Enter New Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvNPass" runat="server" ForeColor="Red" ValidationGroup="CPass" ControlToValidate="txtNewPass" ErrorMessage="Please Enter New Password" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revNPass" runat="server" ErrorMessage="Password must be between 7 to 10 characters" ControlToValidate="txtNewPass" Display="Dynamic" ForeColor="Red" ValidationGroup="CPass" ValidationExpression="^[a-zA-Z0-9'$@&#.\s]{7,10}$" />
                                <%--<input id="newpassword" name="newpassword" type="password">--%>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3 col-xs-12">
                                <div class="col-xs-12 text-label">
                                    Retype New Password
                                </div>
                            </div>
                            <div class="col-sm-5 col-xs-12">
                                <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" class="form-control" placeholder="Enter Confirm Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCnfPass" runat="server" ForeColor="Red" ValidationGroup="CPass" ControlToValidate="txtConfirmPass" ErrorMessage=" PleaseEnter Confirm Password " Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cmpCnfPass" runat="server" ControlToValidate="txtConfirmPass" ValidationGroup="CPass" CssClass="ValidationError" ControlToCompare="txtNewPass" ForeColor="Red" Display="Dynamic" ErrorMessage="Confirm Password Not Match" ToolTip="Password must be the same" />
                                <%--<input id="confirmpassword" name="confirmpassword" type="password">--%>
                            </div>
                        </div>
                        <br />
                         <div class="row">
                            <div class="col-sm-3">
                            </div>

                            <div class="col-sm-3">
                                <asp:Label ID="lblPass" runat="server" Text="" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-3">
                            </div>

                            <div class="col-sm-3">
                                <asp:Button ID="btnchangpass" runat="server" Text="CHANGE PASSWORD" class="place-order-button" OnClick="btnchangpass_Click" ValidationGroup="CPass" />
                                <%--<input class="place-order-button" id="reset-password-button" type="submit" value="CHANGE PASSWORD">--%>
                            </div>

                        </div>
                        <div class="retrive-pas"></div>
                    </div>



                </form>
            </div>


        </div>
    </div>
</asp:Content>
