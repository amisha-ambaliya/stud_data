<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Order.aspx.cs" Inherits="Admin1_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main-content">
     <div class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i>Manage Order</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Default.aspx">Home</a></li>						
						<li><i class="fa fa-file-text-o"></i>Manage Order</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <div class="panel">
                          <div class="panel-heading">                          
                          </div>
                          <div class="panel-body">
                              <form class="form-horizontal" action="" style="margin-left:30%;"> 
                             
                               <table style="margin-top:1%;" align="center">
                                <tr>
                                <td>    
                                              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                  DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" 
                                                  ForeColor="#333333" GridLines="None">                                                  
                                                  <RowStyle BackColor="#E3EAEB" BorderColor="White" />
                                                  <Columns>                                                  
                                                      <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                                                          SortExpression="Id" InsertVisible="False">
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White" CssClass="upd1" Width="5%" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="Cname" HeaderText="Name" 
                                                          SortExpression="Cname" ReadOnly="True"  >                                                          
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />                                                          
                                                      </asp:BoundField>                                                          
                                                      <asp:TemplateField   HeaderText="Gmail" SortExpression="Gmail">
                                                            <ItemTemplate>
                                                                <asp:Label ReadOnly="True" ID="Label1" runat="server" Text='<%# Bind("Gmail") %>'></asp:Label>                                                            
                                                         </ItemTemplate>  
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />                                                    
                                                    </asp:TemplateField>
                                                      <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" 
                                                          SortExpression="Contact_no" ReadOnly="True" >
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="Address" HeaderText="Address" 
                                                          SortExpression="Address" ReadOnly="True"  >                                                      
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                      </asp:BoundField>
                                                          <asp:TemplateField HeaderText="Selected Product">
                                                            <ItemTemplate>
                                                                <table width="120%" border="1">
                                                                    <tr>
                                                                    <td style="font-weight:bold;">Product Name</td>
                                                                      <td style="font-weight:bold;">Qut</td>
                                                                       <td style="font-weight:bold;">Price</td>
                                                                    </tr>
                                                                    <tr>
                                                                    <td><%# Eval("Sel_pro") %></td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                              <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="10%" />
                                                          </asp:TemplateField>
                                                     
                                                      <asp:TemplateField HeaderText="Total">
                                                        <ItemTemplate>
                                                            <asp:Label ID="l1" runat="server"  Text='<%# Eval("m_total") %>'></asp:Label>
                                                        </ItemTemplate>
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:TemplateField>
                                                      
                                                      <asp:BoundField  DataField="Status" HeaderText="Status" SortExpression="Status" >
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:BoundField>
                                                      
                                                      <asp:BoundField ReadOnly="True"  DataField="O_date" HeaderText="odate" 
                                                          SortExpression="O_date" >
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:BoundField>
                                                      
                                                     <asp:CommandField ButtonType="Image" HeaderText="Opration" 
                                                          DeleteImageUrl="~/Admin/Buttons/more-btn_2.jpg" ShowDeleteButton="True" 
                                                          CancelImageUrl="~/Admin/Buttons/more-btn.jpg" 
                                                          EditImageUrl="~/Admin/Buttons/more-btn_3.jpg" ShowEditButton="True" 
                                                          UpdateImageUrl="~/Admin/Buttons/more-btn_3.jpg">
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:CommandField>                                                   
                                                  </Columns>                                                 
                                                  <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                  <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                  <HeaderStyle Font-Bold="True" ForeColor="White" />
                                                  <EditRowStyle BackColor="#7C6F57" />
                                                  <AlternatingRowStyle BackColor="White" />
                                              </asp:GridView>                                              
                                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                  ConnectionString="<%$ ConnectionStrings:mycon %>" 
                                                  SelectCommand="SELECT * FROM [Order1]"
                                                   DeleteCommand="DELETE FROM Order1 WHERE id=@id"
                                                   UpdateCommand="UPDATE Order1 SET status = @status where id=@id " OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:mycon.ProviderName %>">
                                                   <DeleteParameters>
                                                    <asp:Parameter Name="id" />
                                                   </DeleteParameters>
                                                   <UpdateParameters>
                                                    <asp:Parameter Name="status" Type="String" />
                                                   </UpdateParameters>
                                              </asp:SqlDataSource>
                                                 
                               </td>
                               </tr>
                               </table>
                               </form>
                               
                      </div>                                   
                  </div>                 
              </div>   
                        
     </div>
</div>

</asp:Content>

