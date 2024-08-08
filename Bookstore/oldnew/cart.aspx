<%@ Page Language="VB" AutoEventWireup="false" CodeFile="cart.aspx.vb" Inherits="cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
        <div style="font-size: xx-large; vertical-align: baseline; width: 614px; color: #ffffff;
            direction: ltr; height: 112px; background-color: #660000; text-align: left; font-variant: normal">
            &nbsp;
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp; My Web Shop</div><br /><br />
        Your shopping cart:<br />
        <table style="width: 500px" cellspacing="0"
                cellpadding="0" border="0">
            <tr>
                <td style="width: 286px; height: 153px">
                    <asp:ListBox ID="lstCart" runat="server"
                        Width="267px" Height="135px">
                    </asp:ListBox>
                </td>
                <td style="height: 153px">
                    <asp:Button ID="btnRemove" runat="server"
                        Width="100px" Text="Remove Item" /><br /><br />
                    <asp:Button ID="btnEmpty" runat="server"
                        Width="100px" Text="Empty Cart" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnContinue" runat="server"
            PostBackUrl="~/Order.aspx" Text="Continue Shopping" />&nbsp;
        <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" /><br />
        <br />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
