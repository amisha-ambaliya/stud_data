<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
            height: 56px; 
            width: 56px;
            border:none;
            
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
            <nav style="background-color: #C4AEAD"><br>
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

        </div>
     

    
        <div>
            
            <table align="center" border="0" style="border-image-source:initial;">
                <tr>
                    <th colspan="3"><br /><br />
                        <h1>Create New Account</h1>
                        <asp:ValidationSummary ID="vs1" runat="server" ShowMessageBox="true" ShowSummary="false"/>
                        <br />
                    </th>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="ll1" runat="server" Text="Title :-"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="t1" runat="server" Height="30px" Width="169px">
                            <asp:ListItem>----Select----</asp:ListItem>
                            <asp:ListItem>Mr</asp:ListItem>
                            <asp:ListItem>Mrs</asp:ListItem>
                            <asp:ListItem>Ms</asp:ListItem>                            
                </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="l1" runat="server" Text="FirstName :-"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="fnm" runat="server" Height="28px" Width="164px" ></asp:TextBox>
                     </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="*" ForeColor="#ff0000" Display="None" ControlToValidate="fnm"></asp:RequiredFieldValidator>
                    </td>
                   
                </tr>
                 <tr>
                    <td align="right">
                        <asp:Label ID="l2" runat="server" Text="LastName :-"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="lnm" runat="server" Height="28px" Width="164px" ></asp:TextBox></td>
                     <td>
                        <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="*" ForeColor="#ff0000" Display="None" ControlToValidate="lnm"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="l3" runat="server" Text="Gender :-"></asp:Label>
                    </td>
                     <td style="padding-bottom:3%;" align="center">
                                                <asp:RadioButton ID="rb1" runat="server" Text="Male" GroupName="r1" 
                                                    Height="20px" Width="65px" />
                                                <asp:RadioButton ID="rb2" runat="server" Text="Female" GroupName="r1" 
                                                    Height="20px" />
                                            </td>

                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="l4" runat="server" Text="Address :-"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="add1" runat="server" Height="35px" Width="164px" TextMode="MultiLine"></asp:TextBox>
                    </td>                       
                    <td>
                        <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="add1" ForeColor="#ff0000" Display="None" ErrorMessage="Must be Required Address">*</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="l5" runat="server" Text="City :-"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="c1" runat="server" Height="28px" Width="164px"></asp:TextBox>                       
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="c1" Display="None" ForeColor="#ff0000" ErrorMessage="Enter City">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">
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
                    <td align="right">
                        <asp:Label ID="Label1" runat="server" Text="UserName :-"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="unm" runat="server" Height="28px" Width="164px"></asp:TextBox>
                    </td>
                     <td>
                        <asp:RequiredFieldValidator ID="rff" runat="server" ErrorMessage="*" ForeColor="#ff0000" Display="None" ControlToValidate="unm"></asp:RequiredFieldValidator>

                    </td>
                 <tr>
                    <td align="right">
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
                
                    <td align="right">
                        <asp:Label ID="l8" runat="server" Text="Password :-"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="p1" runat="server" Height="28px" Width="164px" TextMode="Password"></asp:TextBox>
                    </td>
                     <td>
                        <asp:RequiredFieldValidator ID="rfv8" runat="server" ErrorMessage="Enter Password" ControlToValidate="p1" Display="None"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <asp:Label ID="l9" runat="server" Text="Confirm-Password :-"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="cp1" runat="server" Height="28px" Width="164px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv9" runat="server" ErrorMessage="Enter Confirm-Password" ControlToValidate="cp1" Display="None"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="p1" ControlToValidate="cp1" ErrorMessage="Please ! Enter Correct Password"></asp:CompareValidator>
                    </td>
                </tr>

               
                <tr>                  
                        <td align="right">
                        <asp:Label ID="Label2" runat="server" Text="Choose Question:-"></asp:Label>
                    </td>
                    <td align="center">
                         <asp:DropDownList ID="que" runat="server" Height="50px" Width="164px">
                                                    <asp:ListItem>----Select----</asp:ListItem>
                                                    <asp:ListItem>Your favourite book ? </asp:ListItem>
                                                    <asp:ListItem>Your favourite teacher ? </asp:ListItem>
                                                    <asp:ListItem>Your Car Number?</asp:ListItem>
                                                    <asp:ListItem>Your favourite hobby ?</asp:ListItem>
                                            </asp:DropDownList>  
                    </td>
                    
                </tr>
                    <tr>
                        <td align="right">
                        <asp:Label ID="Label3" runat="server" Text="Answer:-"></asp:Label>
                        <td>
                            <asp:TextBox ID="ans" runat="server" Height="28px" Width="164px"></asp:TextBox></td>
                    </tr>
                <tr>
                    <td  align="center" colspan="3">
                        <br />
                        <asp:Button ID="b1" runat="server" Text="Submit" CssClass="btn" Height="50px" Width="105px" OnClick="Button1_Click"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="b2" runat="server" Text="Cancel" CssClass="btn" Height="50px" Width="105px" />
                        <br />
                    </td>
                    
                </tr>                       
            
        
            </table>
            <br />
            <p style="text-align:center; font-weight:5; color:#aaa; font-size: x-large;">
             <a href="Home.aspx" class="ft">Home</a>|
             <a href="About_us.aspx" class="ft">About Us</a>|
             <a href="View.aspx" class="ft">View</a>|
             <a href="Feedback.aspx" class="ft">Contact Us</a>|
                </p>
            <p class="footer-copy">Copyright @ 2021 All Rights Reserved | Designed By :- <a href="Default.aspx" style="color:white">Rensi Sukhadiya , Urvisha Pambhar And Amisha Ambaliya</a></p>

    </div>      
        
    </div>
    </form>
</body>
</html>
