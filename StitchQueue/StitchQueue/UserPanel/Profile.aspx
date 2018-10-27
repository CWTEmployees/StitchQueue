<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanelMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="StitchQueue.UserPanel.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                            <input class="file-upload" type="file" accept="image/*"/>
                                         </div>
                                      </div>
                                    </div>
                                    <div class="col-md-6">
                                        <h1><span class="pad-r"></span>Profile Information</h1> 
                                    </div>  
                              </div>

                            </div>

                            <style type="text/css">
                                  .table-borderless
                                  {
                                    border-collapse: collapse !important;
                                  }
                                .table-borderless tr
                                {
                                  border: none;
                                  border-collapse: collapse;
                                }
                                .table-borderless td
                                {
                                    border: 0;
                                    border-collapse: collapse;
                                    color: #000 !important;
                                    padding: 12px !important;
                                }
                                .table-borderless tr
                                {
                                  border: 0;
                                }
                                .table-borderless td b
                                {
                                  color: #000 !important;
                                }
                                @media only screen 
                                and (min-device-width : 320px) 
                                and (max-device-width : 480px) 
                                {
                                  .btn-warning
                                  {
                                    margin-top: 10px;
                                    margin-left: 50px;
                                    align-items: center;
                                  }
                                }
                            </style>
                            

                            <div class="col-md-6 col-sm-12 zero-padding" style=" border: 1px solid #eee;">
                                  <div class="clear profile-edit-view">
                                      
                                    <table class="table table-responsive table-borderless" width="100%" style="font-size:14px !important; border: none;">
                                      <tbody>
                                        <tr>
                                          <td><b>First Name</b></td>
                                          <td class="firstname">xxxxxxxx</td>
                                        </tr>
                                        <tr>
                                          <td><b>Last Name</b></td>
                                          <td class="lastname">xxxxxxx</td>
                                        </tr>
                                        <tr>
                                          <td><b>Gender</b></td>
                                          <td class="dob">xxxxxxxx</td>
                                        </tr>
                                        <tr>
                                          <td><b>Date of Birth</b></td>
                                          <td class="dob">xxxx</td>
                                        </tr>
                                        <tr>
                                          <td class="phone no"><b>Phone No</b></td>
                                           <td class="phone no">xxxx</td>
                                        </tr>
                                        <tr>
                                          <td><b>Email</b></td>
                                          <td class="myemail">xxx@gmail.com</td>
                                        </tr>
                                        <tr>
                                          <td><b>City</b></td>
                                          <td class="city">xxxxxxxx</td>
                                        </tr>
                                        <tr>
                                          <td><b>Countery</b></td>
                                          <td class="countery">xxxxxx</td>
                                        </tr>
                                        
                                    </tbody>
                                  </table>
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
                    <span><i class="fa fa-lock"></i> Change password</span>
                </a>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-12 col-md-offset-2">
                <a href="#" class="btn btn-warning">Update Profile</a>
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
                                        <input id="currentpassword" name="currentpassword" type="password">
                                    </div>
                                    </div>
                                    <div class="row">
                                     <div class="col-sm-5 col-xs-12">
                                        <div class="col-xs-12 text-label">
                                            New Password
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-xs-12">
                                        <input id="newpassword" name="newpassword" type="password">
                                    </div>
                                    </div>
                                    <div class="row">
                                    <div class="col-sm-5 col-xs-12">
                                        <div class="col-xs-12 text-label">
                                            Retype New Password
                                        </div>
                                    </div>
                                    <div class="col-sm-5 col-xs-12">
                                        <input id="confirmpassword" name="confirmpassword" type="password">
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
                    
                    
                   
                            
                            <div class="clear"></div>
                            <div class="form-group">
                                <div class="controls center">
                                    <button class="place-order-button" type="submit">Submit</button>
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
</asp:Content>
