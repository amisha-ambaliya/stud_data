<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Viewfeedback.aspx.cs" Inherits="Admin1_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content">
     <div class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="icon_genius"></i>View Feedback</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Default.aspx">Home</a></li>						
						<li>Feedback</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <div class="panel">
                          <div class="panel-heading"> 
                          <i class="fa fa-file-text-o"></i>
                          Form                         
                          </div>
                          <div class="panel-body">
                              <form class="form-horizontal" action=""> 
                                   <div class="form-group">                                  
                                   <table align="center">
                                    <tr>
                                        <td>
                                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                           AutoGenerateColumns="False" DataKeyNames="id" GridLines="None" 
                                           CellPadding="4" ForeColor="#333333" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                           <RowStyle BackColor="#EFF3FB" />
                                            <Columns>
                                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                    SortExpression="ID" >
                                                    <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                                                    SortExpression="Gender" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Contact_No" HeaderText="Contact No" 
                                                    SortExpression="Contact_No" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%"/>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Gmail" HeaderText="Gmail" SortExpression="Gmail" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Msg" HeaderText="Msg" SortExpression="Msg" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                </asp:BoundField>
                                              
                                            </Columns>
                                            
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle  Font-Bold="True" ForeColor="White" />
                                            <AlternatingRowStyle BackColor="White" />
                                            
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:mycon %>"
                                            ProviderName="<%$ ConnectionStrings:mycon.ProviderName %>" SelectCommand="SELECT * FROM [Feedback]">
                                        </asp:SqlDataSource>
                                        </td>
                                   </tr>     
                                  </table>
                                   </div>
                               </form>
                          </div>
                      </div>                                   
                  </div>                 
              </div>   
               </div>
</div>
</asp:Content>

