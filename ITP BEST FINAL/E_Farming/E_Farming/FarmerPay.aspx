<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FarmerPay.aspx.cs" Inherits="E_Farming.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type ="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
} );
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     
    
     <div class="container">
        
             <br />
            <div class="card">
               <div class="card-body">
                     <div class="col">
                        <center>
                            <img width="200px" src="photos/Fpay.jpg" />
                           <h3>Payments For Farmers</h3>
                            
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
                                          <asp:LinkButton class="btn btn-primary"  ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class ="fas fa-check-circle"></i></asp:LinkButton>
                                    
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
                                     <label>Pay Date</label>
                                     <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" TextMode="Date" ></asp:TextBox>
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
                                     <label>Unit Price</label>
                                     <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"  ></asp:TextBox>
                                     </div>
                                     </div>

                                     <div class="col-md-6">
                                     <label>Uamount</label>
                                     <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"></asp:TextBox>
                                     </div>
                                     </div>
                                     </div>





                                <br />


                                     <div class="row">
                                    <div class="col-md-6">
                                         <asp:Button CssClass="btn btn-danger" ID="Button3" runat="server" Text="Calculate" OnClick="Button3_Click" />
                                        </div>

                                        <div class="col-md-6">
                                     <label>Payment</label>
                                     <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"  TextMode="Number" ReadOnly="True"></asp:TextBox>
                                     </div>
                                     </div>

                                            </div>






                    <div class="row">

                                     <div class="col-md-6">
                                     <label>Pending Status</label>
                                     <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" ReadOnly="True" Text="Pending"></asp:TextBox>
                                     </div>
                                     </div>
                                    

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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT f.farmer_id, f.farmer_name, f.acc_number, d.unit_price, n.UAmount FROM farmer_reg_form AS f INNER JOIN farmer_request_items AS d ON f.farmer_id = d.farmer_id INNER JOIN Expired_Management AS n ON d.farmer_id = n.FarmerID" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>"></asp:SqlDataSource>
                   <asp:GridView class ="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                       <Columns>
                           <asp:BoundField DataField="farmer_id" HeaderText="farmer_id" SortExpression="farmer_id" />
                           <asp:BoundField DataField="farmer_name" HeaderText="farmer_name" SortExpression="farmer_name" />
                           <asp:BoundField DataField="acc_number" HeaderText="acc_number" SortExpression="acc_number" />
                           <asp:BoundField DataField="unit_price" HeaderText="unit_price" SortExpression="unit_price" />
                           <asp:BoundField DataField="UAmount" HeaderText="UAmount" SortExpression="UAmount" />
                       </Columns>
                   </asp:GridView>
                   </div>
                </div>
             </div>



                       
                </div>

                   <div class="row">
                       <center>
                           <asp:Button class="btn btn-secondary" ID="Button4" runat="server" Text="View Details" OnClick="View_Click" />
                           <asp:Button class="btn btn-info" ID="Button2" runat="server" Text="Back" OnClick="Back_Click"   />
                       
                           </center>
                       </div>
             </div>
</div>
         </div>


</asp:Content>
