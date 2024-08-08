<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 324px;
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
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

        
        .prd {
            background-color: #FFFFFF;
        }
        .products-grid-left {
            background-color: #FFFFFF;
        }

        
        .auto-style3 {
            width: 350px;
        }

        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server"><br>
    <img src="img\29.png" width="100%" style="height: 227px"/>
   <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						    <div class="p-one simpleCart_shelfItem prd">
						    <h4 style="font-size:2em;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product View&nbsp;</h4>
                                
                                
                                							
							 <table align="center" style="margin-left:15%;  width="100%;">
							 <tr>
                                  <td rowspan="8" class="auto-style3">    <asp:Image ID="Image2" runat="server"  Width="450px" Height="499px" BorderColor="#333333" BorderStyle="Solid" ImageUrl="~/img/v33.gif" />&nbsp;</td>
							    <td colspan="3" align="center">
                                    <asp:Image ID="Image1" runat="server"  Width="253px" Height="281px" BorderColor="#333333" BorderStyle="Solid" /></td>
							 </tr>					     
						     <br />						         
						         <tr>
      
                                <td align="center" class="auto-style1">
                                    <asp:Label ID="Label1" runat="server" Text="Product Id : " ForeColor="Black"></asp:Label>								    
						        </td>
						        <td class="auto-style2">
                                    &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                             <tr>
                                <td align="center" class="auto-style1">
                                    <asp:Label ID="Label3" runat="server" Text="Product  Name : " ForeColor="Black"></asp:Label>								    
						        </td>
						        <td>
                                    &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                             <tr>
                                <td align="center" class="auto-style1">
                                    <asp:Label ID="Label5" runat="server" Text="Price : " ForeColor="Black"></asp:Label>								    
						        </td>
						        <td>
                                 &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                              <tr>
                                <td align="center" class="auto-style1">
                                    <asp:Label ID="Label7" runat="server" Text="Stock : " ForeColor="Black"></asp:Label>								    
						        </td>
						        <td>
                                 &nbsp;<asp:Label  ID="Label8" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                            
                                                          
                             <tr>
                                 <td align="center" class="auto-style1">
                                         <asp:Label ID="Label12" runat="server" Text="Quantity : " ForeColor="Black"></asp:Label>
                                   </td><td colspan="2">
                                  &nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="107px" Height="26px"></asp:TextBox>
                                     
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="TextBox2" ErrorMessage="Enter Quantity" Text="*"></asp:RequiredFieldValidator>
                                       
                                      
                                </td>   
                             </tr>
                                      <tr>
                                         <td colspan="2" style="color: blue" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Cash On Delivery<br>
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Shipping Charge 100<br>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Shipping 10 days </tr>

                             <tr>
                             <td colspan="2" align="center">
                                 <asp:Button ID="Button1" runat="server" Text="Add To Cart" 
                                 OnClick="Button1_Click1" Height="51px" CssClass="button" Width="145px"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                             </tr>
                              <tr>
                                <td class="auto-style3">
                                    &nbsp;</td>
                             </tr>  
                             </table>	
						   
							</div>	
						</div>
					</div>
	      </div>
</div>

















  
</asp:Content>

