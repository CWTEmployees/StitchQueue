<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="StitchQueue.Admin.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

        thead {
            background-color: #04528E;
            color: #ffffff !important;
        }

        .head tr th {
            color: #ffffff;
        }

        .table-striped > tbody > tr:nth-of-type(2n+1) {
            background-color: #f9f9f9;
        }

        .form-inline .form-control {
            display: inline-block;
            width: 300px;
            vertical-align: middle;
        }

        .center_div {
            margin: 0 auto;
            margin-left: 200px;
            width: 80%;
            text-align: center;
            align-items: center;
        }
    </style>


    <div class="container-fluid">
        <h2 align="center">Products</h2>
        <br>
        <div class="container" style="margin: 0 auto;">
            <form class="form-horizontal" action="">

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Model Category:</label>
                    <div class="col-sm-4">
                        <!-- <select id="category" name ="category" class="form-control" placeholder="Category*"></select> -->
                        <asp:DropDownList ID="drpModel" OnSelectedIndexChanged="drpModel_SelectedIndexChanged" class="form-control input-lg" AutoPostBack="true" runat="server">
                        </asp:DropDownList>
                        <%--<select class="form-control input-lg" id="model_category" name="model_category"></select>--%>
                    </div>
                </div>

                <div class="form-inline">
                    <label class="control-label col-md-3 col-sm-3" for="Category">Sub Category:</label>
                    <div class="col-sm-4">
                        <!-- <select name ="sub_category" id ="sub_category" class="form-control" placeholder="Sub category"></select> -->
                        <asp:DropDownList ID="drpSubModel" runat="server" class="form-control input-lg">
                        </asp:DropDownList>
                        <%--<select class="form-control input-lg" name="sub_category" id="sub_category" placeholder="State"></select>--%>
                    </div>
                </div>
            </form>
        </div>
    </div>




    <h1>&emsp;</h1>
    <div class="container-fluid" align="center" style="">
        <div class="row">

            <div class="col-md-3 col-sm-3 col-xs-6">
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
                <asp:Button ID="btnshow" runat="server" Text="Submit" class="btn btn-primary button6 shap" OnClick="btnshow_Click" />
                <%--<button class="btn btn-primary btn-category">SUBMIT</button>--%>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
            </div>

        </div>
    </div>

    <style type="text/css">
        .btn-category {
            width: 90%;
        }

        .btn-category2 {
            width: 150px;
            align-items: center;
            text-align: center;
        }
    </style>

    <div class="container-fluid">
        <div class="col-sm-6">

            <br />
            <br />

            <asp:GridView ID="DesignGrid" runat="server" AutoGenerateColumns="False" Visible="false" CellPadding="4" DataKeyNames="DesignId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"
                ShowHeaderWhenEmpty="True"
                OnRowDeleting="DesignGrid_RowDeleting"
                OnRowCancelingEdit="DesignGrid_RowCancelingEdit" OnRowEditing="DesignGrid_RowEditing"
                OnRowUpdating="DesignGrid_RowUpdating" 
                EnableModelValidation="True" 
                OnSelectedIndexChanged="DesignGrid_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <%--<asp:BoundField DataField="DesignId" HeaderText="DesignId" ReadOnly="True" SortExpression="DesignId" />--%>
                    <asp:TemplateField>
                        <HeaderTemplate>DesignId</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDesignId" runat="server" Text='<%#Bind("DesignId")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <%--<asp:BoundField DataField="DesignName" HeaderText="DesignName" SortExpression="DesignName" />--%>
                    <asp:TemplateField>
                        <HeaderTemplate>DesignName</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDesignName" runat="server" Text='<%#Bind("DesignName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <%--<asp:BoundField DataField="StyleName" HeaderText="StyleName" SortExpression="StyleName" />--%>
                    <asp:TemplateField>
                        <HeaderTemplate>StyleName</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblStyleName" runat="server" Text='<%#Bind("StyleName") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtStyleName" runat="server" Text='<%#Bind("StyleName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtName" runat="server" Text="*" ToolTip="Enter name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revtxtName" runat="server" Text="*" ToolTip="Enter alphabate " ControlToValidate="txtName" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>

                        </EditItemTemplate>

                    </asp:TemplateField>

                    <%--<asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />--%>
                    <asp:TemplateField>
                        <HeaderTemplate>Price</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblPrice" runat="server" Text='<%#Bind("Price") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPrice" runat="server" Text='<%#Bind("Price") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtAge" runat="server" Text="*" ToolTip="Enter age" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revtxtAge" runat="server" Text="*" ToolTip="Enter numeric value" ControlToValidate="txtPrice" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>

                        </EditItemTemplate>

                    </asp:TemplateField>

                    <%--<asp:BoundField DataField="Images" HeaderText="Images" SortExpression="Images" />--%>
                    <asp:TemplateField>
                        <HeaderTemplate>Images</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Image ID="imgPhoto" Width="100px" Height="100px" runat="server" ImageUrl='<%#Bind("Images") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="image" runat="server" ToolTip="select Employee Photo" />
                            <asp:RegularExpressionValidator ID="revfuPhoto" runat="server" Text="*Invalid" ForeColor="Red" ToolTip="Image formate only" ControlToValidate="image" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
                        </EditItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Operation</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" />
                            <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" CausesValidation="true" OnClientClick="return confirm('Are you sure?')" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="btnCancel" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false" />
                        </EditItemTemplate>


                    </asp:TemplateField>

                </Columns>
                <EmptyDataTemplate>
                    No record available                    
                </EmptyDataTemplate>

                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StitchQueueConnectionString4 %>" SelectCommand="SELECT [DesignId], [DesignName], [StyleName], [Price], [Images] FROM [Design] WHERE (([ProductId] = @ProductId) AND ([DesignName] = @DesignName))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="drpModel" Name="ProductId" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="drpSubModel" Name="DesignName" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>



            <%-- <table class="table table-striped">
                <thead class="head">
                    <tr>
                        <th>S.no.</th>
                        <th>Id</th>
                        <th>Title</th>
                        <th>Image</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="ttr">
                        <td>1</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>2</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr class="ttr">
                        <td>3</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>
                         
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>xxxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>5</td>
                        <td>xxxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>6</td>
                        <td>xxxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>7</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>8</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>9</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                    <tr>
                        <td>10</td>
                        <td>xxx</td>
                        <td>xxxxxxxxxxxx</td>
                        <td>image</td>

                    </tr>
                </tbody>
            </table>--%>
        </div>
    </div>

    <h1>&emsp;</h1>


    <script type="text/javascript" src="js/product.js"></script>
    <script>

        populateCountries("model_category", "sub_category");
        // populateCountries("country2","state2"); 
    </script>
</asp:Content>
