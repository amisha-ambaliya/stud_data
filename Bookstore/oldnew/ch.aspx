<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ch.aspx.cs" Inherits="ch" %>

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
           .cart1 
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            height: 47px; 
            width: 54px;
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
       
         .auto-style3 {
            height: 26px;
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
            <br>
            <img src="img/29.png" width="100%" style="height: 267px" />
             </div>
            
    <div>
      <h4 style="font-size:2em;" align="center"> Shopping Detail</h4>						
                             <table border="0"  align="center" width="100%">
                    <tr style="float:left; margin-bottom:2%;">
                       <td align="center">
                            <asp:Label ID="lblUser" runat="server" Text="Name :" Width="204px"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TextBox1" runat="server" Width="290px"  ForeColor="Black"></asp:TextBox>
                        </td>
                        
                    </tr>
                    
                    <tr style="float:left; margin-bottom:2%;">
                        <td align="center" class="auto-style3">
                            <asp:Label ID="lblEmail" runat="server" Text="Email :" Width="204px"></asp:Label>
                        </td>
                        <td align="left" class="auto-style3">
                            <asp:TextBox ID="TextBox2" runat="server" Width="290px"  ForeColor="Black"></asp:TextBox>
                        </td>
                       
                    </tr>
                    <tr style="float:left; margin-bottom:2%;">
                <td align="center">
                    <asp:Label ID="lblContact" runat="server" Text="Mobile No.:" Width="204px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" Width="290px"  ForeColor="Black"></asp:TextBox>
                </td>
               
            </tr>
                    <tr style="float:left; margin-bottom:2%;">
                     <td align="center">
                            <asp:Label ID="lblCmnt" runat="server" Text="Address :" Width="204px"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="290px"  ForeColor="Black"></asp:TextBox>
                        </td>
                       
                    </tr>
                    <tr style="float:left">
                        <td align="center"><asp:Label ID="Label4" runat="server" Text="Selected Product :" Width="204px"></asp:Label></td>
                        <td align="center">
                            <table style="border:2px solid #204056;" width="130%">
                                <tr style="border:2px solid #204056;">
                                    <td><b>Product Name</b></td>
                                    <td><b>Quantity</b></td>
                                    <td><b>Total</b></td>
                                    
                                </tr>
                                
                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>    
                                
                            </table>
                            
                        </td>
                        
                    </tr>
                   
                                 
                        <table align=""><tr><td>
                        <h3 style="width: 511px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Amount:</h3>
                           <td> 
                               <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                           </td>
                       
                      </table>
                       
                                 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnSubmit" runat="server" Text="Confirm" CssClass="button" 
                                 onclick="btn1" Height="45px" align="center" Width="114px"/>
                            &nbsp;
                      
                        <td align="center" >
                        </td>
                    </tr>
                </table>  
          
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:mycon %>" 
                            SelectCommand="SELECT [pname], [qui], [total] FROM [ADDTOCAR1]" ProviderName="<%$ ConnectionStrings:mycon.ProviderName %>"></asp:SqlDataSource>
    </div>
            






            <br />
            <p style="text-align:center; color:#aaa; font-size: x-large;">
             <a href="Home.aspx" class="ft" >Home</a>|
             <a href="About_us.aspx" class="ft">About Us</a>|
             <a href="View.aspx" class="ft">View</a>|
             <a href="Feedback.aspx" class="ft">Contact Us</a>|
             </p>
            <p class="footer-copy">Copyright @ 2019 All Rights Reserved | Designed By :-Vinsi Gabani<a href="Default.aspx" style="color:white"> AND </a><a href="Default.aspx">Krushi Mayani</a></p>

    
    </form>
</body>
</html>
