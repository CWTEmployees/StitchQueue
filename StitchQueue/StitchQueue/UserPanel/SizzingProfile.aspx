<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanelMaster.Master" AutoEventWireup="true" CodeBehind="SizzingProfile.aspx.cs" Inherits="StitchQueue.UserPanel.SizzingProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="sizeProfile" runat="server">
        <div class="process-container" style="margin-top: 70px;">
            <div class="stand-container">
                <div class="row pad-b">
                    <div class="col-md-12">
                        <div class="block-text bg-white">
                            <div class="heading-contant">
                                <h1><span class="pad-r">
                                    <img src="./files/final_order.png" alt="1" class=""></span>Sizing Profile</h1>
                            </div>
                            <div class="col-md-12 col-sm-12" style="padding: 0 10px;">
                                <table class="col-md-12 col-sm-12">
                                    <tbody>
                                        <tr class="top-heading-line">
                                            <td class="col-md-1 col-sm-1 zero-padding">ProfileName
                                            </td>

                                            <td class="col-md-3 col-sm-3 zero-padding">Last Updated
                                            </td>
                                            <a href="#">
                                                <td class="col-md-2 col-sm-2 zero-padding">View / Edit Profile
                                                </td>
                                            </a>
                                        </tr>

                                        <tr>
                                            <asp:ListView ID="sizingProfile" runat="server" OnItemCommand="sizingProfile_ItemCommand">
                                                <ItemTemplate>
                                                    <td class="col-md-1 col-sm-1 zero-padding">
                                                        <center><font color="#000"><%# Eval("ProfileName") %></font></center>
                                                    </td>

                                                    <td class="col-md-3 col-sm-3 zero-padding">
                                                        <center><font color="#000"><%# Eval("LastUpdate") %></font></center>
                                                    </td>
                                                    <td class="col-md-3 col-sm-3 zero-padding">
                                                        <div class="col-sm-3 col-sm-offset-4 btn-edit" style="margin-top: 15px;">
                                                            <asp:Button ID="btnEdit" runat="server" Text="View/Edit" class="place-order-button btn-view" CommandName="EditSizing" CommandArgument='<%# Eval("Id") %>' />
                                                        </div>
                                                    </td>
                                                </ItemTemplate>
                                            </asp:ListView>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>

                <br>
                <br>
                <div class="row">
                    <div class="col-sm-6 col-xs-12 col-sm-offset-4 btn-sizing" style="margin-bottom: 50px;">
                        <a href="AddSizingProfile.aspx" id="" class="place-order-button">ADD SIZING PROFILE</a>
                    </div>
                </div>
            </div>
        </div>
        <style type="text/css">
            @media only screen and (min-device-width : 320px) and (max-device-width : 480px) {
                .btn-sizing {
                    margin-left: 40px;
                }

                .btn-view {
                    font-size: 10px !important;
                    letter-spacing: 1px !important;
                    padding: 5px 12px !important;
                }

                .btn-edit {
                    margin-bottom: 20px;
                }
            }
        </style>





        </div>
    </form>
    <link rel="stylesheet" type="text/css" href="./css/contact2.css">
    <br />
</asp:Content>



