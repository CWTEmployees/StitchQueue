<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="MainProduct.aspx.cs" Inherits="StitchQueue.Admin.MainProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div>
        <asp:GridView ID="Product" runat="server" class="table table-striped" ShowHeaderWhenEmpty="True"
            AutoGenerateColumns="False" onrowdeleting="Product_RowDeleting"
            OnRowCancelingEdit="Product_RowCancelingEdit" OnRowEditing="Product_RowEditing"
            OnRowUpdating="Product_RowUpdating" CellPadding="4"
            EnableModelValidation="True" GridLines="None" Width="1297px"
             
            onselectedindexchanged="Product_SelectedIndexChanged" >
            
 
            <Columns>
 
            <asp:TemplateField>
            <HeaderTemplate>Id</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID ="lblId" runat="server" Text='<%#Bind("ProductId")%>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
 
            <asp:TemplateField>
            <HeaderTemplate>Name</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID ="lblName" runat="server" Text='<%#Bind("ProductName") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtName" runat="server" Text='<%#Bind("ProductName") %>'></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtName" runat="server" Text="*" ToolTip="Enter name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtName" runat="server" Text="*" ToolTip="Enter alphabate " ControlToValidate="txtName" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
           
            </EditItemTemplate>
          
            </asp:TemplateField>
           
            <asp:TemplateField>
            <HeaderTemplate>Price</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID="lblPrice" runat ="server" Text='<%#Bind("Price") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID ="txtPrice" runat="server" Text='<%#Bind("Price") %>'></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtAge" runat="server" Text="*" ToolTip="Enter age" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtAge" runat="server" Text="*" ToolTip="Enter numeric value" ControlToValidate="txtPrice" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
          
            </EditItemTemplate>
          
            </asp:TemplateField>
 
           
 
          
 
           
 
            <asp:TemplateField>
            <HeaderTemplate>Photo</HeaderTemplate>
            <ItemTemplate>
            <asp:Image ID="imgPhoto" Width="100px" Height="100px" runat="server"  ImageUrl='<%#Bind("Images") %>' />
            </ItemTemplate>
            <EditItemTemplate>
            <asp:FileUpload ID="image" runat="server" ToolTip="select Employee Photo"/>
            <asp:RegularExpressionValidator ID="revfuPhoto" runat="server" Text="*" ToolTip="Image formate only" ControlToValidate="image" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
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
        </asp:GridView>
        <br />
          
    </div>
</asp:Content>
