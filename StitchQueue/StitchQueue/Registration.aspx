<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="StitchQueue.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/popup.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body onload="createCaptcha()">


    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="col-sm-6 col-md-8 col-md-offset-3">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h1 class="text-center login-title">Sign up</h1>
                    </div>

                    <div class="account-wall">
                        <img class="profile-img" src="images/default-user.png"
                            alt="">
                        <form class="form-signin" runat="server">
                            <asp:TextBox ID="firstname" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvFname" runat="server" ValidationGroup="regist" ControlToValidate="firstname" ForeColor="Red" ErrorMessage="Enter FirstName" Display="Dynamic"></asp:RequiredFieldValidator>
                            <%--<input class="form-control" placeholder="First Name" type="text" id="inputFirstName" />--%>

                            <asp:TextBox ID="lastname" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvLname" runat="server" ValidationGroup="regist" ControlToValidate="lastname" ForeColor="Red" ErrorMessage="Enter LastName" Display="Dynamic"></asp:RequiredFieldValidator>
                            <%--<input class="form-control" placeholder="Last Name" type="text" id="inputLastName" />--%>

                            <asp:TextBox ID="mobile" runat="server" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvmbl" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="mobile" ErrorMessage="Enter Mobile Number" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revphn" runat="server" ValidationGroup="regist" ControlToValidate="mobile" ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red" Text="Enter a valid phone number"></asp:RegularExpressionValidator>
                            <%--<input class="form-control" placeholder="Mobile Number" type="text" id="inputMobile" />--%>

                            <asp:TextBox ID="email" runat="server" class="form-control" placeholder="EmailId"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmailId" ErrorMessage="Enter Email ID" ControlToValidate="email" runat="server" ForeColor="Red" ValidationGroup="regist" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="rfvEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="Invalid Email Format" ForeColor="Red" Display="Dynamic" ValidationGroup="regist"></asp:RegularExpressionValidator>
                            <%--<input class="form-control" placeholder="EmailId" type="text" id="inputEmailId" />--%>

                            <asp:TextBox ID="password" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="password" ErrorMessage="Enter Password" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revpwd" runat="server" ErrorMessage="Password length must be between 7 to 10 characters" Display="Dynamic" ControlToValidate="password" ValidationGroup="regist" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$" />
                            <%--<input class="form-control" placeholder="Password" type="text" id="inputPassword" />--%>

                            <asp:TextBox ID="CPassword" runat="server" class="form-control" placeholder="Confirm Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvcpwd" runat="server" ForeColor="Red" ValidationGroup="regist" ControlToValidate="CPassword" ErrorMessage="Enter Confirm Password " Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmpvpwd" runat="server" ControlToValidate="CPassword" CssClass="ValidationError" ControlToCompare="password" ForeColor="Red" ErrorMessage="Password Must be Same" Display="Dynamic" />
                            <%--<input class="form-control" placeholder="Confirm Password" type="text" id="inputConfirmPassword" /><br>--%>
                            <br />


                            <asp:Image ID="imgCaptcha" runat="server" Height="50px" Width="150px" />
                            

                            <asp:Button ID="refershbtn" runat="server" class="" Text="" OnClick="refershbtn_Click" />


                            <asp:TextBox ID="captchtxt" runat="server" CssClass="form-control" placeholder="Code"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvcapt" runat="server" ControlToValidate="captchtxt" ValidationGroup="regist" ForeColor="Red" ErrorMessage="Enter Captcha"></asp:RequiredFieldValidator>







                            <%--<div class="form-group">
                                    <label>
                                        <div id="captcha" style=""></div>
                                    </label>
                                    <label>
                                        <i class="fa fa-refresh" aria-hidden="true"></i>
                                        <input type="button" class="refresh" id="refresh" onclick="createCaptcha()" style="display: inline; float: right;" /></label>
                                </div>
                                <input type="text" class="form-control" placeholder="Captcha" id="cpatchaTextBox" />--%>

                            <asp:Label ID="reglbl" runat="server"></asp:Label>

                            <label class="checkbox pull-right">
                                <a href="Login.aspx" class="">Already have an account? Log in</a>
                            </label>

                            <br />
                            <asp:Button ID="reg" runat="server" class="btn btn-lg btn-block" ValidationGroup="regist" Text="Submit" OnClick="reg_Click" />
                            <%--<button class="btn btn-lg btn-block" type="submit">
                                    Sign up</button>--%>

                            <span class="clearfix"></span>
                        </form>
                    </div>

                </div>
            </div>

        </div>
    </div>


    <!-- Trigger/Open The Modal -->
    <!-- <button id="myBtn">Open Modal</button> -->



    <!-- The Modal -->
    <!-- <div id="myModal" class="modal">

                  Modal content
                
                      <div class="modal-content">
                           
                            
                        </div>
                
                </div> -->


    <!-- <script>
var modal = document.getElementById('myModal');
var btn = document.getElementById("myBtn");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
    modal.style.display = "block";
}
span.onclick = function() {
    modal.style.display = "none";
}
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script> -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="./js/Captcha.js"></script>

    <script type="text/javascript">
        $(window).load(function () {
            $('#myModal').modal('show');
        });
    </script>


</body>
</html>
