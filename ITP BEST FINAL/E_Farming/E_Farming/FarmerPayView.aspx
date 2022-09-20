<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FarmerPayView.aspx.cs" Inherits="E_Farming.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type ="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
} );
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
     <div class ="row">
         <div class="col-md-12 mx-auto">
            <div class="card">
               <div class="card-body">
                   <style>
                            @media print {
                                body * {
                                    visibility: hidden;
                                }
                                .print-container, .print-container * {
                                    visibility: visible;
                                }
                            }
                            </style>
                  <div class="row print-container">
                     <div class="col">
                        <center>
                           <img width="150px" src="photos/Fpay.jpg"/>
                        </center>

                       
                     <div class="col">
                        <center>
                           <h3>Farmer Payments Details</h3>
                        </center>
                  </div>


                        <div class="row">
                            <div class="col-md-3">
                                <label>PID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" ></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary"  ID="LinkButton2" runat="server" OnClick="Done_Click"><i class ="fas fa-check-circle"></i></asp:LinkButton>
                                        
                                    </div>
                                </div>
                            </div>

                           <div class="col-md-4">
                                <label>Pending Status</label>
                                <div class="form-group">
                                   
                             <asp:DropDownList class="btn btn-secondary dropdown-toggle"  ID="DropDownList1" runat="server">
                         <asp:ListItem Value="Pending">Pending</asp:ListItem>
<asp:ListItem Value="Paid">Paid</asp:ListItem>


</asp:DropDownList>
                                    </div></div>
                        

                            <div class="col-2">
                                <br />
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="update_Click" />
                            </div>
                            <div class="col-2">
                                <br />
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="delete_Click" />
                            
                            </div>
                        </div>
                      


                    
                 </div>
            
                    </div>

    <!--table-->
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT * FROM [FarmerPayments]" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>"></asp:SqlDataSource>
                   <asp:GridView class ="table table-striped table-bordered print-container" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                       <Columns>
                           <asp:BoundField DataField="PID" HeaderText="PID" SortExpression="PID" />
                           <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                           <asp:BoundField DataField="Payment" HeaderText="Payment" SortExpression="Payment" />
                           <asp:BoundField DataField="AcoNo" HeaderText="AcoNo" SortExpression="AcoNo" />
                           <asp:BoundField DataField="Paydate" HeaderText="Paydate" SortExpression="Paydate" />
                           <asp:BoundField DataField="Pending_status" HeaderText="Pending_status" SortExpression="Pending_status" />
                           <asp:BoundField DataField="AdminID" HeaderText="AdminID" SortExpression="AdminID" />
                       </Columns>
                   </asp:GridView>
                   <section>
                                <center>
                                    <button class="btn btn-success btn-block btn-lg col-6 buttonA" onclick="window.print();">Click here to print farmer payments details</button>
                                </center>
                            </section>
                         </div>
                      </div>
                   </div>
    </div>
           
   </div>
     <a href="PaymentManage.aspx"><i> << Go to Payment Manage </i></a><br /><br />

                 
</asp:Content>
