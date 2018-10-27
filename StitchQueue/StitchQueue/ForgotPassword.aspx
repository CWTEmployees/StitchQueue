<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="StitchQueue.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" type="text/css" href="css/popup.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
    
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="col-sm-6 col-md-8 col-md-offset-3">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h1 class="text-center login-title">Forgot Password</h1>
                    </div>

                    <div class="account-wall">
                        <img class="profile-img" src="Contents/images/default-user.png"
                            alt="">
                        <form class="form-signin" runat="server">
                            <asp:TextBox ID="email" runat="server" class="form-control" placeholder="EmailId"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="frvfrgpass" runat="server" ValidationGroup="frgpass" ControlToValidate="email" ForeColor="Red" ErrorMessage="Enter Email Id" Display="Dynamic"></asp:RequiredFieldValidator>
                            <%--<input class="form-control" placeholder="Email" type="text" id="inputEmail" />--%>

                            <label class="checkbox pull-right">
                                <a href="Login.aspx" class="">Back to Sign in</a>
                            </label>


                            <asp:Label ID="frgpasslbl" runat="server"></asp:Label>

                            <br />
                            <asp:Button ID="frgpass" runat="server" class="btn btn-lg btn-block" Text="Submit" ValidationGroup="frgpass" OnClick="frgpass_Click"/>
                            <%--<button class="btn btn-lg btn-block" type="submit">
                                Submit</button>--%>

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

    <script type="text/javascript">
        $(window).load(function () {
            $('#myModal').modal('show');
        });
    </script>
</body>
</html>
