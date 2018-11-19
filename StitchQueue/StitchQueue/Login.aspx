<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StitchQueue.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/popup.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" type="text/css" href="css/contact2.css">
</head>
<body>
    <!-- The Modal -->
    <form id="lgn" runat="server">
        <div id="loginModal" class="modal">

            <!-- Modal content -->

            <div class="modal-content">

                <div class="col-sm-6 col-md-4 col-md-offset-4">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h1 class="text-center login-title">Sign in to continue</h1>
                    </div>

                    <div class="account-wall">
                        <img class="profile-img" src="images/default-user.png"
                            alt="">
                        
                            <asp:TextBox ID="emailtxt" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvemail" runat="server" ValidationGroup="lgn" ControlToValidate="emailtxt" ForeColor="Red" ErrorMessage="Enter EmailId" Display="Dynamic"></asp:RequiredFieldValidator>
                            <%--<input type="text" class="form-control" placeholder="Email" required autofocus>--%>
                            <br />
                            <asp:TextBox ID="passtxt" runat="server" TextMode="Password" class="form-control" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvpass" runat="server" ValidationGroup="lgn" ControlToValidate="passtxt" ForeColor="Red" ErrorMessage="Enter Password" Display="Dynamic"></asp:RequiredFieldValidator>
                            <br />


                            <asp:Label ID="lgnlbl" runat="server"></asp:Label>

                            <%--<input type="password" class="form-control" placeholder="Password" required>--%>
                            <%--<button class="btn btn-lg btn-primary btn-block" type="submit">
                            Sign in</button>--%>
                            <asp:Button ID="login" runat="server" class="btn btn-lg btn-block" Text="Submit" ValidationGroup="lgn" OnClick="login_Click" />
                            <label class="checkbox pull-left">
                                <a href="Registration.aspx" class="">Create an account </a>
                            </label>
                            <a href="ForgotPassword.aspx" class="pull-right need-help">Forgot Password </a><span class="clearfix"></span>
                    
                    </div>

                </div>
            </div>

        </div>

        <div class="container">
            <div class="row">
            </div>
        </div>
    </form>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#loginModal").modal('show');
        });
    </script>
</body>
</html>
