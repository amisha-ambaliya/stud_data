<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product_View.aspx.cs" Inherits="Product_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 324px;
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

        .auto-style2 {
            height: 61px;
        }
        .auto-style3 {
            width: 125px;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <center>
    <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						    <div class="p-one simpleCart_shelfItem prd">
						    <h4 style="font-size:2em;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Product View&nbsp;</h4>
                                
                                
                                							
							 <table align="center"   width="100%;">
                              <asp:ValidationSummary ID="v1" runat="server" ShowSummary="false" ShowMessageBox="true" />
							 <tr>
							    <td colspan="2" align="center" >
                                     &nbsp;<asp:Image ID="Image1" runat="server"  Width="250px" Height="250px" BorderColor="#333333" BorderStyle="Solid" /></td>
							 </tr>
						     
                                      <tr>
                                        <td align="center" class="auto-style1">
                                            &nbsp;</td align="left">
						                <td class="auto-style3">
                                            &nbsp;</td>   
                                    </tr>
						         <tr>
                                <td align="left" class="auto-style1">
                                    <asp:Label ID="Label1" runat="server" Text="Product Id : " ForeColor="Black"></asp:Label>								    
						        </td>
						        <td class="auto-style3">
                                    &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                             <tr>
                                <td align="left" class="auto-style1">
                                    <asp:Label ID="Label3" runat="server" Text="Company  Name : " ForeColor="Black"></asp:Label>								    
						        </td>
						        <td class="auto-style3">
                                    &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                             <tr>
                                <td align="left" class="auto-style1">
                                    <asp:Label ID="Label5" runat="server" Text="Price : " ForeColor="Black"></asp:Label>								    
						        </td>
						        <td class="auto-style3">
                                 &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                              <tr>
                                <td align="left" class="auto-style1">
                                    <asp:Label ID="Label7" runat="server" Text="Stock : " ForeColor="Black"></asp:Label>								    
						        </td>
						        <td class="auto-style3">
                                 &nbsp;<asp:Label  ID="Label8" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr>                             
                                                          
                             <tr>
                                 <td align="left" class="auto-style1">
                                         <asp:Label ID="Label12" runat="server" Text="Quantity : " ForeColor="Black"></asp:Label>
                                   </td>
                                 <td colspan="2" class="auto-style3">
                                  &nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="101px" Height="20px" ></asp:TextBox>
                                     
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="Enter Quantity" Text="*"></asp:RequiredFieldValidator>

                                         <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TextBox1" Display="Dynamic"
                                        ErrorMessage="Pl. Enter Qty. Less Than Stock" Operator="LessThanEqual" SetFocusOnError="True"
                                        Type="Integer" Text="Out Of Stock" ForeColor="Red"></asp:CompareValidator>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="Enter Only Number" 
                                        ValidationExpression="[0-9]*" Text="*"></asp:RegularExpressionValidator>

                                        <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="TextBox1" Display="Dynamic"
                                        ErrorMessage="Pl. Enter Qty. Greater Than Zero" Operator="NotEqual" SetFocusOnError="True"
                                        Type="Integer" ValueToCompare="0">*</asp:CompareValidator>
                                      
                                </td>   
                             </tr>
                             <tr>
                                 <td align="left" class="auto-style1">
                                         <asp:Label ID="Label9" runat="server" Text="Weight : " ></asp:Label>
                                   </td>
                                 <td colspan="2" class="auto-style3">
                                  &nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="101px" Height="20px"></asp:TextBox>
                                     
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox2" ErrorMessage="Enter Weight" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                       
                                      
                                </td>   
                             </tr>
                           
                                      <tr>
                                         <td colspan="2" style="color: #0b25f5" class="auto-style2">Cash On Delivery<br>
                                             Shipping 10 days<br />
                                             Shipping Charge 100 Rs.<br>
                                             
                                            
                                </tr>

                             
                            
                             <tr>
                             <td colspan="2" align="center">
                                 <asp:Button ID="Button1" runat="server" Text="Add To Cart" 
                                 CssClass="button" OnClick="Button1_Click1" Height="52px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                             </tr>
                              <tr>
                                <td>
                                    &nbsp;</td>
                             </tr>  
                             </table>	
						   
							</div>	
						</div>
						<div class="clearfix"> </div>
					</div>
	      </div>
</div>
        </center>
</asp:Content>

