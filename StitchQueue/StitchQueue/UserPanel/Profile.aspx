<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanelMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="StitchQueue.UserPanel.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=txtfirstname]').hide();
            $('[id*=txtlastname]').hide();
            $('[id*=txtgender]').hide();
            $('[id*=txtdateofbirth]').hide();
            $('[id*=txtmobile]').hide();
            $('[id*=txtemail]').hide();
            $('[id*=txtcity]').hide();
            $('[id*=txtcountry]').hide();
            $('[id*=btnSave]').hide();
            $('[id*=btnCancle]').hide();

            $("[id*=btnupdate]").click(function () {
                $('[id*=lblfirstname]').hide();
                $('[id*=lbllastname]').hide();
                $('[id*=lblgender]').hide();
                $('[id*=lbldateofbirth]').hide();
                $('[id*=lblmobile]').hide();
                $('[id*=lblemail]').hide();
                $('[id*=lblcity]').hide();
                $('[id*=lblcountry]').hide();
                $('[id*=btnupdate]').hide();


                $('[id*=txtfirstname]').val($('[id*=lblfirstname]').html().trim());
                $('[id*=txtlastname]').val($('[id*=lbllastname]').html().trim());
                $('[id*=txtgender]').val($('[id*=lblgender]').html().trim());
                $('[id*=txtdateofbirth]').val($('[id*=lbldateofbirth]').html().trim());
                $('[id*=txtmobile]').val($('[id*=lblmobile]').html().trim());
                $('[id*=txtemail]').val($('[id*=lblemail]').html().trim());
                $('[id*=txtcity]').val($('[id*=lblcity]').html().trim());
                $('[id*=txtcountry]').val($('[id*=lblcountry]').html().trim());



                $('[id*=txtfirstname]').show();
                $('[id*=txtlastname]').show();
                $('[id*=txtgender]').show();
                $('[id*=txtdateofbirth]').show();
                $('[id*=txtmobile]').show();
                $('[id*=txtemail]').show();
                $('[id*=txtcity]').show();
                $('[id*=txtcountry]').show();
                $('[id*=btnSave]').show();
                $('[id*=btnCancle]').show();
                return false;
            });
        });
    </script>
    <form id="prfForm" runat="server">
        <div class="process-container" style="margin-top: 70px;">
            <div class="stand-container">
                <div class="row pad-b">
                    <div class="col-md-12">
                        <div class="block-text bg-white">
                            <div class="heading-contant">
                                <div class="col-md-9">
                                    <div class="col-md-3">
                                        <div class="row">
                                            <div class="circle">
                                                <!-- User Profile Image -->
                                                <img class="profile-pic upload-button" src="./files/avatar.png">
                                            </div>
                                            <div class="p-image">
                                                <h6 class="upload-image">Eidt Profile</h6>
                                                <input class="file-upload" type="file" accept="image/*" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <h1><span class="pad-r"></span>Profile Information</h1>
                                    </div>
                                </div>

                            </div>

                            <style type="text/css">
                                .table-borderless {
                                    border-collapse: collapse !important;
                                }

                                    .table-borderless tr {
                                        border: none;
                                        border-collapse: collapse;
                                    }

                                    .table-borderless td {
                                        border: 0;
                                        border-collapse: collapse;
                                        color: #000 !important;
                                        padding: 12px !important;
                                    }

                                    .table-borderless tr {
                                        border: 0;
                                    }

                                    .table-borderless td b {
                                        color: #000 !important;
                                    }

                                @media only screen and (min-device-width : 320px) and (max-device-width : 480px) {
                                    .btn-warning {
                                        margin-top: 10px;
                                        margin-left: 50px;
                                        align-items: center;
                                    }
                                }
								                       
							</style>


                            <div class="col-md-6 col-sm-12 zero-padding" style="border: 1px solid #eee;">
                                <div class="clear profile-edit-view">

                                    <table class="table table-responsive table-borderless" width="100%" style="font-size: 14px !important; border: none;">
                                        <tbody>
                                            <tr>
                                                <td><b>First Name</b></td>
                                                <td class="firstname">
                                                    <asp:Label ID="lblfirstname" runat="server" Text=""></asp:Label>
                                                    <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvfirst" runat="server" ControlToValidate="txtfirstname" ErrorMessage="FirstName cannot be empty" ForeColor="Red" ValidationGroup="userprfl"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>Last Name</b></td>
                                                <td class="lastname">
                                                    <asp:Label ID="lbllastname" runat="server" Text=""></asp:Label>
                                                    <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvlast" runat="server" ControlToValidate="txtlastname" ErrorMessage="LastName cannot be empty" ForeColor="Red" ValidationGroup="userprfl"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>Gender</b></td>
                                                <td class="dob">
                                                    <asp:Label ID="lblgender" runat="server" Text=""></asp:Label>
                                                    <asp:TextBox ID="txtgender" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvgender" runat="server" ControlToValidate="txtgender" ErrorMessage="Enter Gender" ForeColor="Red" ValidationGroup="userprfl"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>Date of Birth</b></td>
                                                <td class="dob">
                                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                    <asp:Label ID="lbldateofbirth" runat="server" Text=""></asp:Label>
                                                    <asp:TextBox ID="txtdateofbirth" runat="server"></asp:TextBox>
                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdateofbirth"></ajaxToolkit:CalendarExtender>
                                                    <asp:RequiredFieldValidator ID="rfvcal" runat="server" ControlToValidate="txtdateofbirth" ErrorMessage="Select Date Of Birth" ForeColor="Red" ValidationGroup="userprfl"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="phone no"><b>Phone No</b></td>
                                                <td class="phone no">
                                                    <asp:Label ID="lblmobile" runat="server" Text=""></asp:Label>
                                                    <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvmbl" runat="server" ForeColor="Red" ValidationGroup="userprfl" ControlToValidate="txtmobile" ErrorMessage="Enter Mobile Number" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="revmbl" runat="server" ValidationGroup="userprfl" ControlToValidate="txtmobile" ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" Text="Enter a valid phone number"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>Email</b></td>
                                                <td class="myemail">
                                                    <asp:Label ID="lblemail" runat="server" Text=""></asp:Label>
                                                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ForeColor="Red" ErrorMessage="Enter Email" ValidationGroup="userprfl" ControlToValidate="txtemail" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="revmobile" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ErrorMessage="please input correct email" ValidationGroup="userprfl" ControlToValidate="txtemail"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>City</b></td>
                                                <td class="city">
                                                    <asp:Label ID="lblcity" runat="server" Text=""></asp:Label>
                                                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvcity" runat="server" ForeColor="Red" ValidationGroup="userprfl" ErrorMessage="Enter City" ControlToValidate="txtcity" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><b>Country</b></td>
                                                <td class="countery">
                                                    <asp:Label ID="lblcountry" runat="server" Text=""></asp:Label>
                                                    <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ValidationGroup="userprfl" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <asp:RequiredFieldValidator ID="rfvcountry" runat="server" ForeColor="Red" ValidationGroup="userprfl" ErrorMessage="Enter Country" ControlToValidate="txtcountry" Display="Dynamic"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:Label ID="lblupdate" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>

                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="col-md-3 col-sm-6 col-xs-12" style="padding-left: 60px;">
                <a href="#" class="pwd" data-toggle="modal" data-target="#profile_info_manager">
                    <span><i class="fa fa-lock"></i>Change password</span>
                </a>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-12 col-md-offset-2">
                <a href="#" class="btn btn-warning">
                    <asp:Button ID="btnupdate" runat="server" Text="Update Profile" />
                    <asp:Button ID="btnSave" runat="server" Text="Save Profile" OnClick="btnSave_Click" ValidationGroup="userprfl" />
                    <asp:Button ID="btnCancle" runat="server" Text="Cancle" CausesValidation="false" />
                </a>
            </div>

        </div>

        <div class="modal fade" id="profile_info_manager" tabindex="-1" role="dialog" aria-labelledby="profileinfoManagerLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>

                        <h3 class="modal-title" id="profileinfoManagerLabel">Change Password</h3>
                    </div>
                    <div class="modal-body">
                        <form action="" method="post" accept-charset="utf-8" id="edit-profile-form" name="edit-profile-form" role="form">
                            <div class="col-md-12 no-padding change-pas-in">
                                <div class="row">
                                    <div class="col-sm-5 col-xs-12">
                                        <div class="col-xs-12 text-label">
                                            Current Password
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-xs-12">
                                        <%--<input id="currentpassword" name="currentpassword" type="password">--%>
                                        <asp:TextBox ID="txtCurrentPass" runat="server" TextMode="Password" class="form-control" placeholder="Enter Current Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvCPass" runat="server" ForeColor="Red" ValidationGroup="CPass" ControlToValidate="txtCurrentPass" ErrorMessage="Please Enter Current Password" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 col-xs-12">
                                        <div class="col-xs-12 text-label">
                                            New Password
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-xs-12">
                                        <%--<input id="newpassword" name="newpassword" type="password">--%>
                                        <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" class="form-control" placeholder="Enter New Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvNPass" runat="server" ForeColor="Red" ValidationGroup="CPass" ControlToValidate="txtNewPass" ErrorMessage="Please Enter New Password" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revNPass" runat="server" ErrorMessage="Password must be between 7 to 10 characters" ControlToValidate="txtNewPass" Display="Dynamic" ForeColor="Red" ValidationGroup="CPass" ValidationExpression="^[a-zA-Z0-9'$@&#.\s]{7,10}$" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-5 col-xs-12">
                                        <div class="col-xs-12 text-label">
                                            Retype New Password
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-xs-12">
                                        <%--<input id="confirmpassword" name="confirmpassword" type="password">--%>
                                        <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" class="form-control" placeholder="Enter Confirm Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvCnfPass" runat="server" ForeColor="Red" ValidationGroup="CPass" ControlToValidate="txtConfirmPass" ErrorMessage=" PleaseEnter Confirm Password " Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="cmpCnfPass" runat="server" ControlToValidate="txtConfirmPass" ValidationGroup="CPass" CssClass="ValidationError" ControlToCompare="txtNewPass" ForeColor="Red" Display="Dynamic" ErrorMessage="Confirm Password Not Match" ToolTip="Password must be the same" />
                                    </div>
                                </div>
                                <!--  <div class="row">
                                    <div class="col-sm-3">
                                        
                                    </div>
                                    <div class="col-sm-3">
                                        <input class="place-order-button" id="reset-password-button" type="submit" value="CHANGE PASSWORD">
                                    </div>
                                        
                                    </div>    
                                  <input type="hidden" name="submitted" value="submitted">
                            <div class="retrive-pas"></div> -->
                            </div>
                            <div class="col-sm-3">
                                <asp:Label ID="lblPass" runat="server" Text=""></asp:Label>
                            </div>



                            <div class="clear"></div>
                            <div class="form-group">
                                <div class="controls center">
                                    <asp:Button ID="btnchangpass" runat="server" Text="CHANGE PASSWORD" class="place-order-button" OnClick="btnchangpass_Click" ValidationGroup="CPass" />
                                    <%--<button class="place-order-button" type="submit">Submit</button>--%>
                                </div>
                            </div>

                            <input type="hidden" name="submitted" value="submitted">
                        </form>
                    </div>

                    <div class="modal-footer">
                        <a href="#" class="btn" data-dismiss="modal">Close</a>
                    </div>
                </div>
            </div>
        </div>




        </div>
    
  <link rel="stylesheet" type="text/css" href="./css/contact2.css">

        <br>
    </form>
</asp:Content>
