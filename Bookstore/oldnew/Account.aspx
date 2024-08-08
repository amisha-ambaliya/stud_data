<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>
         .button 
         {
             background-color: #808080;
             border:outset;
             color:white;
             text-align:center;
             font-size:15px;
             cursor:pointer;
             display:inline-block;
             padding:5px 5px;
         }

       
        .auto-style1 {
            width: 60px;
        }

       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <div class="container1">
      <%-- <h4 style="height: 1px"> <a href="Cap.aspx">Product ></a>Cap</h4>--%>
            

         

			         <h4 style="padding-left:10%;font-size:2em;" align="center">My Account</h4>
				     <asp:Panel ID="Panel1" runat="server" Width="100%"  >
                      <asp:Panel ID="pnlviewdetail" runat="server" Width="100%" Visible="false">
           <table border="1" align="center" syle="margin-left:40%;">
								        
                                        <tr>
								            <td style="padding-bottom:3%;" align="right">Title :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label6" runat="server"></asp:Label>
                                            </td>                                                
								        </tr> 
                                        <tr>
								            <td style="padding-bottom:3%;" align="right">First Name :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </td>                                                
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Last Name :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                            </td>                                             
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Gender :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label3" runat="server" ></asp:Label>
                                            </td>
								        </tr>
								         
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Address :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label4" runat="server" ></asp:Label>
                                             </td>
                                                 
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">City :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label5" runat="server" ></asp:Label>
                                             </td>
								           
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Mobile No :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label8" runat="server"></asp:Label>
                                             </td>
                                             
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Username :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label9" runat="server" ></asp:Label>
                                            </td>
                                              
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">G-mail :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label10" runat="server" ></asp:Label>
                                            </td>
                                              
								        </tr>
                                     <tr>
								            <td style="padding-bottom:3%;" align="right">Password :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label7" runat="server" ></asp:Label>
                                            </td>
                                              
								        </tr>
                                 <tr>
								            <td style="padding-bottom:3%;" align="right">Confirm-Password :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label11" runat="server" ></asp:Label>
                                            </td>
                                              
								        </tr>
                                 <tr>
								            <td style="padding-bottom:3%;" align="right">Question :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label12" runat="server" ></asp:Label>
                                            </td>
                                              
								        </tr>
                                     <tr>
								            <td style="padding-bottom:3%;" align="right">Answer :-</td>
								            <td style="padding-bottom:3%;" class="auto-style1">
                                                <asp:Label ID="Label13" runat="server" ></asp:Label>
                                            </td>
                                              
								        </tr>

								        
								       
								        <tr>
								            <td colspan="2" align="center" style="padding-top:1%; padding-bottom:1%;">
                                                <asp:Button ID="Button2" runat="server" Text="Edit" onclick="Button2_Click" CssClass="button" Width="81px" />
                                               
								            </td>
								        </tr>
								        
								    </table>
        </asp:Panel>      
    
    </asp:Panel>
    <asp:Panel ID="pnlupdate" runat="server" Width="100%" Visible="false">
         <table border="0" align="center" style="margin-left:15%;" align="center">
                                        <tr>
								            <td style="padding-bottom:3%;" align="right">Title :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:DropDownList ID="d1" runat="server" Height="24px" Width="152px">
                                                    <asp:ListItem>-----Select-----</asp:ListItem>
                                                    <asp:ListItem>Mr</asp:ListItem>
                                                    <asp:ListItem>Mrs</asp:ListItem>
                                                    <asp:ListItem>Ms</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td>
                                                &nbsp;</td>    
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">First Name :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Height="25px" Width="150px"></asp:TextBox></td>
                                            <td>
                                                &nbsp;</td>    
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Last Name :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Height="25px" Width="150px"></asp:TextBox></td>
                                            <td>
                                                &nbsp;</td>    
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Gender :-</td>
								            <td style="padding-bottom:3%;" align="center">
                                                <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="r1" 
                                                    Height="20px" Width="65px" />
                                                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="r1" 
                                                    Height="20px" />
                                            </td>
								        </tr>
								         
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Address :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="32px" 
                                                    Width="148px"></asp:TextBox></td>
                                            <td>
                                                &nbsp;</td>        
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">City :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox9" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
								            <td>
                                                &nbsp;</td>
								        </tr>
								         
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Contact No :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="150px"></asp:TextBox></td>
                                              
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Username :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="150px"></asp:TextBox></td>
                                             
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">G-mail :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True" Height="25px" Width="150px"></asp:TextBox></td>
                                            </tr>
								       <tr>
								            <td style="padding-bottom:3%;" align="right">Password :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" Height="25px" Width="150px"></asp:TextBox></td>
                                            </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Confirm-Password :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" Height="25px" Width="150px"></asp:TextBox></td>
                                            </tr>
								       <tr>
								            <td style="padding-bottom:3%;" align="right">Question :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:DropDownList ID="que" runat="server" Height="25px" Width="150px">
                                                    <asp:ListItem>----Select----</asp:ListItem>
                                                    <asp:ListItem>Your favourite book ? </asp:ListItem>
                                                    <asp:ListItem>Your favourite teacher ? </asp:ListItem>
                                                    <asp:ListItem>Your Car Number?</asp:ListItem>
                                                    <asp:ListItem>Your favourite hobby ?</asp:ListItem>
                                            </asp:DropDownList>

								            </td>
                                            </tr>
								       <tr>
								            <td style="padding-bottom:3%;" align="right">Answer :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox11" runat="server" ReadOnly="True" Height="25px" Width="150px"></asp:TextBox></td>
                                            </tr>
								       
								        <tr>
								            <td colspan="2" align="center" style="padding-top:1%; padding-bottom:1%; padding-left:10%;">
                                                <asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" CssClass="button" Width="118px"/>
                                               
								            </td>
								        </tr>								        
								    </table>
        </asp:Panel>     
</div>

</asp:Content>

