<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         .Navigation 
        {            
           background-color:#f3a268;
            width:100%;
            color:white;
            font-size:20px;
            
        }
          .cart 
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            height: 47px; 
            width: 54px;
        }
        .btn
         {
            border-style: outset;
            border-color: inherit;
            border-width: medium;
background-color: #808080;
             color:white;
             text-align:center;
             font-size:15px;
             cursor:pointer;
             display:inline-block;
             padding:5px 5px;
        }
            
        .auto-style1 {
            height: 171px;
        }
        #l3, #l6,#l7,#rb1,#rb2,#ms1,#l1 {
            font-family:Calibri;

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
                  .cart1 
        {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            height: 47px; 
            width: 54px;
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
                &nbsp; <img src="img/l3.png" style="width:17%; height: 124px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Home.aspx" class="menu1">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Product.aspx" class="menu1">All Product</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                
                <a href="About_us.aspx" class="menu1">About Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Feedback.aspx" class="menu1">Feedback</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Contact_us.aspx" class="menu1">Contact Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="Account.aspx" class="new">My Account</a>
                <a href="OderStatus.aspx" class="new">Order Status</a>
                
                <a href="Home.aspx" class="new">LogOut</a>
                
            </nav>

        </div>
        <div>
            <br />
            <table align="center" border="0">
                
                <tr>
                    <th colspan="3" class="auto-style1"><br/>
                        <h1 style="font-family:Calibri">Feedback</h1>
                        <asp:ValidationSummary ID="vs1" ShowMessageBox="true" runat="server" ShowSummary="false" />
                        
                    </th>                    
                </tr>
                <tr>
                    <td rowspan="6">
                        <img src="img/feed1.jpg" style="height: 311px; width: 251px; border:inset;"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="l1" runat="server" Text="Name :-"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="t1" runat="server" Height="28px" Width="164px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Enter UserName " Display="None" ControlToValidate="t1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="l3" runat="server" Text="Gender :-"></asp:Label>
                    </td>
                    <td  align="center">
                                                <asp:RadioButton ID="rb1" runat="server" Text="Male" GroupName="r1" 
                                                    Height="20px" Width="65px" />
                                                <asp:RadioButton ID="rb2" runat="server" Text="Female" GroupName="r1" 
                                                    Height="20px" />
                                            </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="l6" runat="server" Text="Contact No. :-"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="cn1" runat="server" Height="28px" Width="164px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv6" runat="server" ErrorMessage="Contact No. Must be Required" Display="None" ControlToValidate="cn1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="re6" runat="server" ErrorMessage="Only 10 Number"  Display="None" ControlToValidate="cn1" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="l7" runat="server" Text="G-mail :-"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="g1" runat="server" Height="28px" Width="164px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rgv7" runat="server" ErrorMessage="Please ! Enter your G-mail" Display="None" ControlToValidate="g1"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="re7" runat="server" ErrorMessage="Using @ and ." Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="g1"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="l8" runat="server" Text="Message :-"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ms1" runat="server" TextMode="MultiLine" Height="50px" Width="164px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ms1" ErrorMessage="Enter your feedback !" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                 <tr>
                    <td colspan="4" align="center"><br />
                        <asp:Label ID="Label1" runat="server"></asp:Label><br />
                        <asp:Button ID="b1" runat="server" Text="Submit" CssClass="btn" Height="50px" Width="97px" OnClick="btn_submit"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="b2" runat="server" Text="Reset" CssClass="btn" Height="50px" Width="97px" OnClick="btn_reset"/><br />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        
            <p style="text-align:center; font-weight:5; color:#aaa; font-size: x-large;">
             <a href="Home.aspx" class="ft">Home</a>|
             <a href="About_us.aspx" class="ft">About Us</a>|
             <a href="View.aspx" class="ft">View</a>|
             <a href="Feedback.aspx" class="ft">Contact Us</a>|
                </p>
            <p class="footer-copy">Copyright @ 2021 All Rights Reserved | Designed By :- <a href="Default.aspx" style="color:white">Rensi Sukhadiya , Urvisha Pambhar AND Amisha Ambaliya</a></p>

    
    </div>
    </form>
</body>
</html>
