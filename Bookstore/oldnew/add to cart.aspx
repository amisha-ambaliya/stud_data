<%@ Page Language="VB" AutoEventWireup="false" CodeFile="add to cart.aspx.vb" Inherits="add_to_cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div style="font-size: xx-large; vertical-align: baseline; width: 614px; color: #ffffff;
            direction: ltr; height: 112px; background-color: #660000; text-align: left; font-variant: normal">
            &nbsp;
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp; My Web Shop</div>
        <br /><br />
        <asp:Label ID="Label1" runat="server"
            Text="Please select a product:"></asp:Label>
        <asp:DropDownList ID="ddlProducts" runat="server" Width = "150px"
            DataSourceID="AccessDataSource1" DataTextField="Name"
            DataValueField="ProductID" AutoPostBack="True">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server"
            DataFile="F:\vinsi\Group-5\Patanjali\App_Data"
            SelectCommand="SELECT [ProductID], [Name], [ShortDescription],
                [LongDescription], [ImageFile], [UnitPrice]
                FROM [Products] ORDER BY [Name]">
        </asp:AccessDataSource>
        <br />
        <table>
            <tr >
                <td style="width: 250px; height: 22px">
                    <asp:Label ID="lblName" runat="server"
                        Font-Bold="False" Font-Size="Larger">
                    </asp:Label>
                </td>
                <td style="width: 20px" rowspan="4">
                </td>
                <td rowspan="4" valign="top">
                    <asp:Image ID="imgProduct" runat="server" Height="200" />
                </td>
            </tr>
            <tr>
                <td style="width: 250px">
                    <asp:Label ID="lblShortDescription" runat="server">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 250px">
                    <asp:Label ID="lblLongDescription" runat="server">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 250px">
                    <asp:Label ID="lblUnitPrice" runat="server"
                        Font-Bold="True" Font-Size="Larger">
                    </asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="each"
                        Font-Bold="True" Font-Size="Larger">
                    </asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Quantity:"
            Width="80px" BorderWidth = "0px"></asp:Label>
        <asp:TextBox ID="txtQuantity" runat="server" Width="80px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="txtQuantity" Display="Dynamic"
            ErrorMessage="Quantity is a required field.">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server"
            ControlToValidate="txtQuantity" Display="Dynamic"
            ErrorMessage="Quantity must range from 1 to 500."
            MaximumValue="500" MinimumValue="1" Type="Integer">
        </asp:RangeValidator><br /><br />
        <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" />&nbsp;
        <asp:Button ID="btnCart" runat="server" CausesValidation="False"
            PostBackUrl="~/Cart.aspx" Text="Go to Cart" />
    </div>
    </form>
</body>
</html>
