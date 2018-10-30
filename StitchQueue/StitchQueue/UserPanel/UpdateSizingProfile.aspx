<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UserPanelMaster.Master" AutoEventWireup="true" CodeBehind="UpdateSizingProfile.aspx.cs" Inherits="StitchQueue.UserPanel.UpdateSizingProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                            <form action="#" runat="server" method="post" accept-charset="utf-8" class="fl w100p" id="sizing_profile_view">
                                <div class="row">
                                    <div class="col-sm-12 option-value form-group no-padding">
                                        <div class="col-sm-2 no-padding" style="padding-left: 5px !important;">
                                            <label class="control-label no-padding middle-line-height" style="text-align: left;">Profile Name</label>
                                        </div>
                                        <div class="col-sm-4 no-padding">
                                            <%--<input type="text" name="profile_name" value="" class="span4 form-control no-padding">--%>
                                            <asp:TextBox ID="txtProfile" runat="server" class="span4 form-control no-padding"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row sizing-bg sizing-border">
                                    <div class="col-sm-12 same-top-bottom-padding">
                                        <div class="col-md-3 option-value form-group">
                                            <img src="./files/around_bust.png" class="around bust">
                                            <label class="control-label">around bust</label>
                                            <%--<input type="text" name="around_bust" value="" class="span4 form-control">--%>
                                            <asp:TextBox ID="txtaround_bust" runat="server" class="span4 form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3 option-value form-group">
                                            <img src="./files/waist.png" class="waist">
                                            <label class="control-label">waist</label>
                                            <%--<input type="text" name="waist" value="" class="span4 form-control">--%>
                                            <asp:TextBox ID="txtwaist" runat="server" class="span4 form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3 option-value form-group">
                                            <img src="./files/hips.png" class="hips">
                                            <label class="control-label">hips</label>
                                            <%--<input type="text" name="hips" value="" class="span4 form-control">--%>
                                            <asp:TextBox ID="txthips" runat="server" class="span4 form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3 option-value form-group">
                                            <img src="./files/shoulder_width.png" class="shoulder width">
                                            <label class="control-label">shoulder width</label>
                                            <%--<input type="text" name="shoulder_width" value="" class="span4 form-control">--%>
                                            <asp:TextBox ID="txtshoulder_width" runat="server" class="span4 form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3 option-value form-group">
                                            <img src="./files/arm_hole.png" class="arm hole">
                                            <label class="control-label">arm hole</label>
                                            <%--<input type="text" name="arm_hole" value="" class="span4 form-control">--%>
                                            <asp:TextBox ID="txtarm_hole" runat="server" class="span4 form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3 option-value form-group">
                                            <img src="./files/ankle.png" class="ankle">
                                            <label class="control-label">ankle</label>
                                            <%--<input type="text" name="ankle" value="" class="span4 form-control">--%>
                                            <asp:TextBox ID="txtankle" runat="server" class="span4 form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3 option-value form-group">
                                            <img src="./files/thighs.png" class="thighs">
                                            <label class="control-label">thighs</label>
                                            <%--<input type="text" name="thighs" value="" class="span4 form-control">--%>
                                            <asp:TextBox ID="txtthighs" runat="server" class="span4 form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3 option-value form-group">
                                            <img src="./files/length_of_full_length.png" class="length of full length">
                                            <label class="control-label">length of full length</label>
                                            <%--<input type="text" name="length_of_full_length" value="" class="span4 form-control">--%>
                                            <asp:TextBox ID="txtleglength" runat="server" class="span4 form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <asp:Label ID="lblprofile" runat="server"></asp:Label>

                                <div class="row">
                                    <div class="col-md-12 center">
                                        <%--<input type="submit" name="submit_sizing_profile" value="Add Sizing Profile" id="submit_sizing_profile" class="place-order-button" style="color: #fff;">--%>
                                        <asp:Button ID="btnUpdate" runat="server" Text="Update Sizing Profile" OnClick="btnUpdate_Click" class="place-order-button" />
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    </div>
    <link rel="stylesheet" type="text/css" href="./css/contact2.css">


    <br>
</asp:Content>
