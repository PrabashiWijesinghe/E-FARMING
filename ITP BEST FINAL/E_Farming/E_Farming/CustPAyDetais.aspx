<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustPAyDetais.aspx.cs" Inherits="E_Farming.WebForm36" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type ="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
} );
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><div class="container">
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
                           <img width="350px" src="photos/details.png"/>
                            <h3>Customer Payment Deatils</h3>
                        </center>
                     </div>
                  </div>
    

               <hr />

     
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT * FROM [Customer_payment]" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>"></asp:SqlDataSource>

                    
                       
                          
                         <asp:GridView class ="table table-striped table-bordered print-container" ID="GridView1" runat="server" Height="164px" Width="710px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                             <Columns>
                                 <asp:BoundField DataField="PID" HeaderText="PID" SortExpression="PID" />
                                 <asp:BoundField DataField="Customer_name" HeaderText="Customer_name" SortExpression="Customer_name" />
                                 <asp:BoundField DataField="CID" HeaderText="CID" SortExpression="CID" />
                                 <asp:BoundField DataField="Payment" HeaderText="Payment" SortExpression="Payment" />
                                 <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" SortExpression="Contact_no" />
                                 <asp:BoundField DataField="Email_address" HeaderText="Email_address" SortExpression="Email_address" />
                                 <asp:BoundField DataField="Card_type" HeaderText="Card_type" SortExpression="Card_type" />
                                 <asp:BoundField DataField="Card_number" HeaderText="Card_number" SortExpression="Card_number" />
                             </Columns>
                         </asp:GridView>
                         
                   <asp:Button class="btn btn-info" ID="Button1" runat="server" Text="Back" OnClick="Back_Click" Width="70px"  />

                   <br /><br />
                   <section>
                                <center>
                                    <button class="btn btn-success btn-block btn-lg col-4 buttonA" onclick="window.print();">Click here to print customer payments details</button>
                                </center>
                            </section>
                            <br>
                     </div>
                
    
                </div>

             <br />
             <br />
             </div>
    
         </div>
        </div>
    
</asp:Content>
