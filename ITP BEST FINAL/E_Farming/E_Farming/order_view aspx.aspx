<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="order_view aspx.aspx.cs" Inherits="E_Farming.WebForm28" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type ="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable({
               "order": [[1, "desc"]]
           });
       });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     


    
    <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
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
                                    <h3>
                                        Order Management</h3>
                               </center>
                           </div>
                       </div>

                       

                       <div class="row">
                           <div class="col">
                               <hr />
                                 </div>
                            </div>

                       <div class="row">
                           <div class="col">
                               <asp:GridView class="table table-striped table-bordered print-container" ID="EGridView1" runat="server" AutoGenerateColumns="False" >
                                   <Columns>
                                      <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                      <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" SortExpression="Order_ID" />
                                       <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                                       <asp:TemplateField>
                                           <ItemTemplate>
                                               <div class="container-fluid">
                                                   <div class="row">
                                                       <div class="col-lg-10">

                                                           
                                                           <div class="row">
                                                               <div class="col-12">
                                                                   Location-<asp:Label ID="Label2" runat="server" Text='<%# Eval("Location") %>' ></asp:Label>
                                                               </div>
                                                               </div>

                                                           <div class="row">
                                                               <div class="col-12">

                                                                   ItemNames-<asp:Label ID="Label3" runat="server" Text='<%# Eval("ItemNames") %>'></asp:Label>

                                                               </div>
                                                               </div>

                                                           <div class="row">
                                                               <div class="col-12">

                                                                   OrderDate-<asp:Label ID="Label4" runat="server" Text='<%# Eval("OrderDate") %>'></asp:Label>

                                                               </div>
                                                               </div>

                                                           <div class="row">
                                                               <div class="col-12">

                                                                   TotalPrice-<asp:Label ID="Label1" runat="server" Text='<%# Eval("TotalPrice") %>'></asp:Label>

                                                               </div>
                                                               </div>
                                                           


                                                   </div>
                                                       
                                                   </div>

                                               </div>
                                               
                                        <asp:CheckBox ID="chkDel" runat="server"/>
                                    
                                        
                                           </ItemTemplate>
                                       </asp:TemplateField>

                                       
                                       


                                   </Columns>
                               </asp:GridView>
                               <div class="form-group" align="center">
                                <asp:Button class="btn btn-success" Text="Remove added Item" ID="remove" runat="server" OnClick="remove_Click" />
                                </div>

                               <br />
                                 
                                
                                 </div>
                            </div>

                     
        </div>
     </div>
             </div>
          <section>
                                <center>
                                    <button class="btn btn-success btn-block btn-lg col-6 buttonA" onclick="window.print();">Click here to print complaints list</button>
                                </center>
                            </section>
                            </div></div> <a href="WelcomeAdminPB.aspx"><i> << Go to Home </i></a><br /><br />
</asp:Content>
