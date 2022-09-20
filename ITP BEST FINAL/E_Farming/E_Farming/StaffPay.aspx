<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StaffPay.aspx.cs" Inherits="E_Farming.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type ="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container">
        
             <br />
            <div class="card">
               <div class="card-body">
                     <div class="col">
                        <center>
                            <img width="200px" src="photos/salary.png" />
                           <h3>Salary Payments</h3>
                            
                        </center>
                  </div>
                
                         
                   
                   
                   <div class="row">
         <div class="col-md-4">
            <div class="card">
               <div class="card-body">
                           <center>
                           <h4>Add Details</h4>
                           </center>
                     

                                      <div class="row">
                                      <div class="col-md-6">
                                      <label>PID</label>
                                      <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                      <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class ="fas fa-check-circle"></i></asp:LinkButton>
                                      </div>
                                      </div>
                                      </div>
                                     
                                      <div class="col-md-6">
                                      <label>Name</label>
                                      <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                                      </div>
                                      </div>
                     
                                      </div>


                                     <div class="row">
                                     <div class="col-md-6">
                                     <label>Payment</label>
                                     <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                                     </div>
                                     </div>

                                     <div class="col-md-6">
                                     <label>Account No</label>
                                     <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                     </div>
                                     </div>

                                     </div>


                                     <div class="row">
                                     <div class="col-md-6">
                                     <label>Pay Date</label>
                                     <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"  ReadOnly="True"></asp:TextBox>
                                     </div>
                                     </div>
                                     
                                     <div class="col-md-6">
                                     <label>Pending Status</label>
                                     <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" ReadOnly="True" Text="Pending"></asp:TextBox>
                                     </div>
                                     </div>
                                         </div>


                                     <div class="row">
                                     <div class="col-md-6">
                                     <label>AdminID</label>
                                     <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"></asp:TextBox>
                                     </div>
                                     </div>
                                     </div>
             
                                        <br />
                                   <div class="row">
                                   <div class="col-6 mx-auto">
                                   <center>
                                   <div class="form-group">
                                   <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Done" OnClick="Button1_Click" />
                                   </div>
                                   </center>
                                   </div>
                                  </div>
               </div>
            </div>
            
         </div>


                                       <div class="col-md-8">
            <div class="card">
               <div class="card-body">
                 
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT [Employee_ID], [Employee_Name], [account_no], [Date], [Net_Salary] FROM [Salary_Management_tbl]" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>"></asp:SqlDataSource>
                     <asp:GridView class =" table table-striped table-bordered" ID ="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                         <Columns>
                             <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" SortExpression="Employee_ID" />
                             <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" SortExpression="Employee_Name" />
                             <asp:BoundField DataField="account_no" HeaderText="account_no" SortExpression="account_no" />
                             <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                             <asp:BoundField DataField="Net_Salary" HeaderText="Net_Salary" SortExpression="Net_Salary" />
                         </Columns>
                   </asp:GridView>

                   </div>
                </div>
             </div>



                       
                </div>

                   <div class="row">
                       <center>
                       <asp:Button class="btn btn-secondary" ID="Button2" runat="server" Text="View Details" OnClick="View_Click"  />
                       <asp:Button class="btn btn-info" ID="Button3" runat="server" Text="Back" OnClick="back_Click"/>
                           </center>
                       </div>
             </div>
</div>
         </div>
</asp:Content>
