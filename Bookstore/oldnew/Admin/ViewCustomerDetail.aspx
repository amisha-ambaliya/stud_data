<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="ViewCustomerDetail.aspx.cs" Inherits="Admin1_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content">
     <div class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="icon_genius"></i>View Customer Details</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Default.aspx">Home</a></li>						
						<li>Customer Details</li>
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
                                   <table>
                                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                           AutoGenerateColumns="False" DataKeyNames="id" 
                                           onselectedindexchanged="GridView1_SelectedIndexChanged" GridLines="None" 
                                           CellPadding="3" ForeColor="#333333">
                                           <RowStyle BackColor="#EFF3FB"/>
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="True" 
                                                SortExpression="id" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%"/>
                                            </asp:BoundField>
                                             <asp:BoundField DataField="title" HeaderText="Title" 
                                                SortExpression="title" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%"/>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="f_name" HeaderText="F_Name" SortExpression="f_name" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="l_name" HeaderText="L_Name" SortExpression="l_name" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="gen" HeaderText="Gender" 
                                                SortExpression="gen" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="addr" HeaderText="Address" 
                                                SortExpression="addr" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="c_no" HeaderText="Mobile_No" 
                                                SortExpression="c_no" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="u_name" HeaderText="Username" 
                                                SortExpression="u_name" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            
                                            <asp:BoundField  ControlStyle-Width="30" DataField="gmail" HeaderText="Email" SortExpression="gmail" >
                                                <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            
                                            <asp:BoundField DataField="pass" HeaderText="Password" 
                                                SortExpression="pass" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                           
                                            <asp:BoundField DataField="c_pass" HeaderText="Confirm-Password" SortExpression="c_pass" >
                                            
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ques" HeaderText="Quesion" 
                                                SortExpression="ques" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%"/>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ans" HeaderText="Answer" SortExpression="ans" >
                                            
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            
                                            <asp:CommandField ButtonType="Image" HeaderText="Opration" 
                                                DeleteImageUrl="~/Admin/Buttons/more-btn_2.jpg" 
                                                ShowDeleteButton="True" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:CommandField>
                                        </Columns>
                                           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                           <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                           <HeaderStyle Font-Bold="True" ForeColor="White" />
                                           <EditRowStyle BackColor="#2461BF" />
                                           <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                  ConnectionString="<%$ ConnectionStrings:mycon %>" 
                                           SelectCommand="SELECT * FROM [register_tb]"
                                            DeleteCommand="DELETE FROM [register_tb] WHERE [id]=@id" ProviderName="<%$ ConnectionStrings:mycon.ProviderName %>"></asp:SqlDataSource>
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

