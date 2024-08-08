<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="f1.aspx.cs" Inherits="f1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div>
            <br />
             <table align="center" border="0">
                <tr>
                    <th colspan="3" class="auto-style1">
                        <h1 style="font-family:Calibri">Forget Password</h1>
                        <asp:ValidationSummary ID="vs1" ShowMessageBox="true" runat="server" ShowSummary="false" />
                        
                    </th>                    
                </tr>
                  <tr>
                    <td rowspan="5">
                        <img src="img/fp3.jpg" style="height: 311px; width: 251px; border:inset;"  />
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="l1" runat="server" Text="UserName :-"></asp:Label>
                    </td>
                    <td align="center" class="auto-style2">
                        <asp:TextBox ID="t1" runat="server" Height="28px" Width="164px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Enter UserName " Display="None" ControlToValidate="t1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                  <tr>
                    <td>
                        <asp:Label ID="l2" runat="server" Text="Choose Question :-"></asp:Label>
                    </td>
                    <td align="center" class="auto-style2">
                        <asp:DropDownList ID="que" runat="server" Height="62px" Width="164px">
                                                    <asp:ListItem>----Select----</asp:ListItem>
                                                    <asp:ListItem>Your favourite book ? </asp:ListItem>
                                                    <asp:ListItem>Your favourite teacher ? </asp:ListItem>
                                                    <asp:ListItem>Your Car Number?</asp:ListItem>
                                                    <asp:ListItem>Your favourite hobby ?</asp:ListItem>
                                            </asp:DropDownList>  
                 
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Answer :-"></asp:Label>
                    </td>
                    <td align="center" class="auto-style2">
                        <asp:TextBox ID="t2" runat="server" Height="28px" Width="164px"></asp:TextBox></td>
                        <asp:RequiredFieldValidator ID="rf2" runat="server" ErrorMessage="Enter Answer" Display="None" ControlToValidate="t2"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                     <td colspan="2" align="center"><br />
                        <asp:Label ID="l3" runat="server"></asp:Label><br />
                        <asp:Button ID="b1" runat="server" Text="Submit" CssClass="btn" Height="50px" Width="97px" OnClick="btn_login"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="b2" runat="server" Text="Reset" CssClass="btn" OnClick="btn_reset"  Height="50px" Width="97px" />
                        
                    </td>
                </tr>
            </table>
    
    </div>
</asp:Content>

