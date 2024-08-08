<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Products" %>

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
           border-style: outset;
             border-color: inherit;
             border-width: medium;
             background-color: #808080;
             color:white;
             text-align:center;
             text-decoration:none;
             font-size:19px;
             cursor:pointer;
             display:inline-block;
             padding:5px 5px;
            height: 25px; 
            width: 80px;
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
       
          .footer-copy
        {
	        padding:0.5em 0.5em;
	        background:#333333;
	        text-align:center;
            color:#aaa;
        }
        .auto-style1 {
            width: 367px;
        }
       </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Container">
        <div class="Navigation">
            <nav style="background-color: #C4AEAD"><br/>
                <br>
                 <a href="Login.aspx" class="log1" style="font-family:Andalus;">Log in</a>/
                <a href="Register.aspx" style="font-family:Andalus;">Register</a>&nbsp;&nbsp;
                <a href="Admin/l1.aspx"><img src="img/m2.png" class="cart1" /></a>
                <br />
                &nbsp;&nbsp;&nbsp;
                <img src="img/l3.png" style="width:17%; height: 122px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
     <div></br>
        <img src="img/29.png" width="100%" style="height: 245px"/>
        <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						    <div class="p-one simpleCart_shelfItem prd">
             
						    <h4 style="font-size:2em;" align="center">All Products</h4>					
				      	   <table align="center" style="height: 576px; width: 731px" cellspacing="50px">
                                 <tr>
                                     <td>
                                  <h2 align="center" style="margin-left:5%; margin-top: -55px;"> POETRY</h2>
						            <a href="Poetry.aspx"><img src="img/poetry.jpg" style="height: 250px; width: 286px; margin-left:9%;" />
                                  </td>
                                     <td class="auto-style1">
                                  <h2 align="center" style="margin-left:5%; margin-top: -55px;" class="auto-style3"> NOVEL</h2>
                                  &nbsp;<a href="Novel.aspx"><img src="img/novel.jpg" style="height: 250px; width: 286px; margin-left:6%;" /></a>
                                 </td>
                                      <td>
                                  <h2 align="center" style="margin-left:5%; margin-top: -55px;" > STORY</h2>
                                  <a href="Story.aspx"><img src="img/story.jpg" style="height: 250px; width: 286px; margin-left:9%;" /></a>
                                  </td>
                                    </tr>    
                                 <tr>
                                     <td>
                                  <h2 align="center" style="margin-left:5%;" > HISTORY</h2>
                                  <a href="History.aspx"><img src="img/h.jpg" style="height: 250px; width: 286px; margin-left:9%;" /></a></td>
                                   <td class="auto-style1">
                                  <h2 align="center" style="margin-left:5%;" class="auto-style3"> DRAMA</h2>
                                  <a href="drama.aspx"><img src="img/drama.jpg" style="height: 250px; width: 286px; margin-left:6%;" /></a>
                                       </td>
                                     <td class="auto-style1">
                                  <h2 align="center" style="margin-left:5%;" class="auto-style3"> HORROR</h2>
                                  <a href="horror.aspx"><img src="img/hh1.jpg" style="height: 250px; width: 286px; margin-left:6%;" /></a>
                               		 </td>
                               		</tr> 
                                   
                                     
                                    								   						   
							</table>
                            </div>	
						</div>
						<div class="clearfix"> </div>
					</div>
	      </div>
        <br />
             <p style="text-align:center; color:#aaa; font-size: x-large;">
             <a href="Home.aspx" class="ft" >Home</a>|
             <a href="About_us.aspx" class="ft">About Us</a>|
             <a href="View.aspx" class="ft">View</a>|
             <a href="Feedback.aspx" class="ft">Contact Us</a>|
             </p>
            <p class="footer-copy">Copyright @ 2021 All Rights Reserved | Designed By :- <a href="Default.aspx" style="color:white">Rensi Sukhadiya , Urvisha Pambhar and Amisha Ambaliya</a></p>


    </div>
    </form>
</body>
</html>
