<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="SelectDesign.aspx.cs" Inherits="StitchQueue.SelectDesign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Front</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/jquery.toast.min.css" rel="stylesheet">

    <link href="css/selectdesign.css" rel="stylesheet">

    <table>
        <tr>
            <div class="container">
                <div class="row">
                    <div class="fixed-header">
                        <h1 class="text-center">Choose Your Strich<br>
                            <img src="front/hr_line2.png" width="10%"><br>
                        </h1>
                        <br>
                        <p>
                            <h4>You are a brilliant designer yourself. Create your fashion with alternatives that suit
                                your
                                qualifications. We sew your dress as per your first-class layout so please design your
                                self
                                to have the layout.</h4>
                        </p>
                        <br>
                        <br>
                        <div class="container">

                            <div class="row bs-wizard" style="border-bottom: 0;">

                                <div class="col-xs-3 step1 bs-wizard-step active">
                                    <div class="text-center bs-wizard-stepnum">Step 1</div>
                                    <div class="progress">
                                        <div class="progress-bar"></div>
                                    </div>
                                    <a href="#" class="bs-wizard-dot"></a>

                                </div>

                                <div class="col-xs-3 step2 bs-wizard-step disabled">
                                    <div class="text-center bs-wizard-stepnum">Step 2</div>
                                    <div class="progress">
                                        <div class="progress-bar"></div>
                                    </div>
                                    <a href="#" class="bs-wizard-dot"></a>

                                </div>

                                <div class="col-xs-3 step3 bs-wizard-step disabled">
                                    <div class="text-center bs-wizard-stepnum">Step 3</div>
                                    <div class="progress">
                                        <div class="progress-bar"></div>
                                    </div>
                                    <a href="#" class="bs-wizard-dot"></a>

                                </div>

                                <div class="col-xs-3 step4 bs-wizard-step disabled">
                                    <div class="text-center bs-wizard-stepnum">Step 4</div>
                                    <div class="progress">
                                        <div class="progress-bar"></div>
                                    </div>
                                    <a href="#" class="bs-wizard-dot"></a>

                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="step step-1" data-design="front">
                        <div class="row">
                            <asp:ListView ID="FrontData" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="<%# Eval("DesignId") %>">
                                        <img src="<%# Eval("Images") %>" class="img-responsive center center">
                                        <p class="text-center"><%# Eval("StyleName") %></p>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                        <br />
                    </div>


                    <div class="step step-2 hidden" data-design="back">
                        <div class="row">
                            <asp:ListView ID="BackData" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="<%# Eval("DesignId") %>">
                                        <img src="<%# Eval("Images") %>" class="img-responsive center center">
                                        <p class="text-center"><%# Eval("StyleName") %></p>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>

                    </div>


                    <div class="step step-3 hidden" data-design="sleeve">
                        <div class="row">
                            <asp:ListView ID="SleeveData" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="<%# Eval("DesignId") %>">
                                        <img src="<%# Eval("Images") %>" class="img-responsive center center">
                                        <p class="text-center"><%# Eval("StyleName") %></p>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>

                        </div>

                    </div>


                    <div class="step step-4 hidden" data-design="addon">
                        <div class="row">
                            <h3 class="hed">Top Lining</h3>
                            <asp:ListView ID="addonTlining" runat="server">
                                <ItemTemplate>
                                    <div class="col-sm-3">
                                        <img src="<%# Eval("Images") %>" class="img-responsive">
                                        <p class="text-center">
                                            <%# Eval("StyleName") %>
                                            <br>
                                            Rs.<%# Eval("Price") %>/-
                                        </p>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>

                        <div class="row">
                            <h3 class="hed">Closing</h3>
                            <asp:ListView ID="addonclosing" runat="server">
                                <ItemTemplate>
                                    <div class="col-sm-3">
                                        <img src="<%# Eval("Images") %>" class="img-responsive">
                                        <p class="text-center">
                                            <%# Eval("StyleName") %>
                                            <br>
                                            Rs.<%# Eval("Price") %>/-
                                        </p>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                            
                        </div>

                         <div class="row">
                            <h3 class="hed">Others</h3>
                            <asp:ListView ID="addonOthers" runat="server">
                                <ItemTemplate>
                                    <div class="col-sm-3">
                                        <img src="<%# Eval("Images") %>" class="img-responsive">
                                        <p class="text-center">
                                            <%# Eval("StyleName") %>
                                            <br>
                                            Rs.<%# Eval("Price") %>/-
                                        </p>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                            
                        </div>

                       
                    </div>

                    <div class="step step-1" data-design="front">
                        <div class="row">
                            <asp:ListView ID="AnarkliData" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-3 col-lg-3 col-sm-6 col-xs-12 design-box" data-id="<%# Eval("DesignId") %>">
                                        <img src="<%# Eval("Images") %>" class="img-responsive center center">
                                        <p class="text-center"><%# Eval("StyleName") %></p>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                        <br />
                    </div>
                </div>
            </div>
            <div class="footer-btn">
                <div class="text-center" style="margin-right: 10px;">
                    <div class="btn-group">
                        <button type=" button" class="btn btn-danger btn-prev" data-step="1">preview</button>
                        <button type="button" class="btn btn-danger btn-next" data-step="1">Next</button>
                    </div>
                </div>
            </div>
            <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.toast.min.js"></script>
            <script src="js/main.js"></script>
        </tr>
    </table>
</asp:Content>
