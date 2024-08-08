<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view1.aspx.cs" Inherits="view1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
         .Navigation 
        {            
           background-color:white;
            width:100%;
            color:white;
            font-size:20px;
            
        }
           .cart 
        {
            height: 56px; 
            width: 56px;
            border:none;
            
        }
                   .cart1 
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            height: 47px; 
            width: 54px;
        }
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
        .btn
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
         .footer 
        {
            position:fixed;
            width:100%;
            height:20%;
            background-color:gray;
            color:white;
            text-align:center;
            padding:20px;
        }
        .ft {
            font-size:25px;
            color:#aaa;
            text-align:center;
         
        }
        .footer-copy
        {
	        padding:0.5em 0.5em;
	        background:#333333;
	        text-align:center;
            color:#aaa;
        }
        .log1 
        {
            margin-left:1100px;
            
        }
        .menu1 {
             text-decoration:none;             
             font-size:x-large;  
             font-family:Andalus;
        }
         .new 
        {
            border-style: outset;
             border-color: inherit;
             border-width: medium;
background-color:#996633;
             color:white;
             text-align:center;
             font-size:15px;
             cursor:pointer;
             display:inline-block;
             padding:5px 5px;
        }
       

            
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="Container">
        <div class="Navigation">
           <nav style="background-color: #C4AEAD"><br/>
                <a href="Login.aspx" class="log1" style="font-family:Andalus;">Log in</a>/
                <a href="Register.aspx" style="font-family:Andalus;">Register</a>&nbsp;&nbsp;
                <a href="Admin/l1.aspx"><img src="img/m2.png" class="cart1" /></a>
                <br />
                &nbsp;
                <img src="img/l3.png" style="width:17%; height: 124px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Home.aspx" class="menu1">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Product.aspx" class="menu1">All Product</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                
                <a href="About_us.aspx" class="menu1">About Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Feedback.aspx" class="menu1">Feedback</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Contact_us.aspx" class="menu1">Contact Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Account.aspx" class="new">My Account</a>
                <a href="OderStatus.aspx" class="new">Order Status</a>
                
                <a href="Home.aspx" class="new">LogOut</a>
                
                
            </nav>
            <br/>
            <img src="img/29.png" width="100%" style="height: 237px"/>
        </div>
    <br />
            <h1 align="center">View Cart</h1><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
                                Height="96px" 
                                Width="83%" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                                 DataKeyNames="id" GridLines="none" BackColor="White" 
                                    BorderColor="#999999" BorderStyle="Ridge" BorderWidth="1px" align="center">
                                 <Columns>                                
                                     <asp:ImageField DataImageUrlField="images" ControlStyle-CssClass="img-responsive" 
                                     HeaderText="Images">
                                         <ControlStyle Height="100px" Width="100px" />
                                         <HeaderStyle BackColor="Black" />
                                     </asp:ImageField>
                                    <asp:TemplateField HeaderText="Product name" SortExpression="pname" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="P_name" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                        <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>                                 
                                     <asp:TemplateField HeaderText="Price" SortExpression="price" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="price" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                    <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Quantity" SortExpression="qui" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="qut" runat="server" Text='<%# Eval("qui") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                    <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>   
                                  
                                  
                                     
                                    <asp:TemplateField HeaderText="Sub Total" SortExpression="total" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="total" runat="server" Text='<%# Eval("total") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                    <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>
                                  
                                     <asp:CommandField ButtonType="Image" 
                                         DeleteImageUrl="~/Admin/Buttons/more-btn_2.jpg" ShowDeleteButton="True">
                                         <HeaderStyle BackColor="Black" Width="30" />
                                     </asp:CommandField>
                                     
                                     </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#CCCCCC" CssClass="G1" />
                            </asp:GridView>
    </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:mycon %>" 
                                    SelectCommand="SELECT * FROM [ADDTOCART1] WHERE ([unm] = @uid)"
                                     DeleteCommand="DELETE FROM ADDTOCART1 where id=@id" ProviderName="<%$ ConnectionStrings:mycon.ProviderName %>">
                             <SelectParameters>                                       
                                        <asp:SessionParameter Name="uid" SessionField="uid" Type="String" />
                                    </SelectParameters>
                                 <DeleteParameters>
                                   <asp:Parameter Name="id" Type="Int32" />
                                 </DeleteParameters>
                                    
                                </asp:SqlDataSource>
      <table>
							<tr>
							<td style="float:left; margin-left:60%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <h3>Total Amount:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h3>
							    
							</td>
							</tr>						
                              
							</table>
								
        <div>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:Button ID="Button1" CssClass="button" Width="118px" runat="server" Text="Shop More" OnClick="Button1_Click" Height="58px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" Width="116px" CssClass="button" runat="server" Text="Checkout"  OnClick="Button2_Click" Height="58px"/>
                            
							 </div>   

        <br />
            <p style="text-align:center; color:#aaa; font-size: x-large;">
             <a href="Home.aspx" class="ft" >Home</a>|
             <a href="About_us.aspx" class="ft">About Us</a>|
             <a href="View.aspx" class="ft">View</a>|
             <a href="Feedback.aspx" class="ft">Contact Us</a>|
             </p>
            <p class="footer-copy">Copyright @ 2021 All Rights Reserved | Designed By :- <a href="Default.aspx" style="color:white">Rensi Sukhadiya , Urvisha Pambhar And Amisha Ambaliya</a></p>

                            
    </form>

</body>
</html>
