<%@ Page Title="" Language="C#" MasterPageFile="~/StitchQueueMaster.Master" AutoEventWireup="true" CodeBehind="OrderInvoice.aspx.cs" Inherits="StitchQueue.OrderInvoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="orderinvoice">

    <br />
    <asp:Panel ID="InvoicePanel" runat="server" Height="517px" Width="1077px">
        <table class="auto-style1" border="1">
            <tr>
                <td style="text-align: center; font-size: large">Retaile Invoice</td>
            </tr>

            <tr>
                <td class="auto-style2">Order Id:
                        <asp:Label ID="lblOrderId" runat="server"></asp:Label>
                    <br />
                    <br />
                    Order Date:
                        <asp:Label ID="lblOrderDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">

                    <asp:GridView ID="GridInvoice" runat="server" AutoGenerateColumns="False" Height="192px" Width="830px" ShowFooter="True" FooterStyle-HorizontalAlign="Justify" GridLines="Horizontal" HorizontalAlign="Center">


                        <Columns>
                            <asp:BoundField DataField="productid" HeaderText="Product ID"></asp:BoundField>
                            <asp:BoundField DataField="pname" HeaderText="Product Name"></asp:BoundField>
                            <asp:BoundField DataField="price" HeaderText="Price"></asp:BoundField>
                            <asp:BoundField DataField="totalprice" HeaderText="Total Price"></asp:BoundField>
                        </Columns>
                        <FooterStyle Wrap="True" />


                        <HeaderStyle Wrap="True" />


                    </asp:GridView>

                </td>
            </tr>
            <%--<tr>
                    <td style="text-align: right">Grand Total:<asp:Label ID="lblGrangTotal" runat="server"></asp:Label>
                    </td>
                </tr>--%>
            <tr>
                <td class="auto-style3">Declaration:<br />
                    <br />
                    <br />
                    THIS IS COMPUTER GENERATED INVOICE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <%-- <asp:Label ForeColor="Red" CssClass="align-content-center" ID="txtlabel3" runat ="server"></asp:Label>--%>
        </table>
    </asp:Panel>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Thank You For Shopping With Us,Your Order Placed Successfully..."></asp:Label>
    <p>
        &nbsp;
    </p>
    <p>
        <asp:Button ID="DownloadInvoice" runat="server" Height="31px" OnClick="DownloadInvoice_Click" Text="Download Invoice" Width="189px" />
    </p>

    </form>
</asp:Content>
