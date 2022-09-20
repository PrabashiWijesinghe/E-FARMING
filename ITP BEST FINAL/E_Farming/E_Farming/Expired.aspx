<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Expired.aspx.cs" Inherits="E_Farming.WebForm34" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="AddNewStockPage.aspx">Add Stock</a>
                    </li>
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="StockView.aspx">View Stock</a>
                    </li>
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="Expired.aspx">View Expired Items</a>
                    </li>
                     <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="Total.aspx">Update Stock</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div><br /><br />
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
    <center>



                        <div class="row print-container">
                           <div class="col">
                               <center>
                                    <h3>Expired and Unusable Item Management</h3>
                               </center>
                           </div>
                       </div>

                       <div class="row">
                           <div class="col">
                               <center><img width="250px" src="photos/ex.jpg" />
                                   
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
                               <asp:GridView class="table table-striped table-bordered print-container" ID="EGridView1" runat="server" AutoGenerateColumns="False">
                                   <Columns>
                                     
                                     <asp:BoundField DataField="EID" HeaderText="EID" InsertVisible="False" ReadOnly="True" SortExpression="EID" />
                                     <asp:BoundField DataField="ItemCode" HeaderText="Item Code" SortExpression="ItemCode" />
                                     <asp:BoundField DataField="FarmerID" HeaderText="Farmer ID" SortExpression="FarmerID" />
                                     <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                     <asp:BoundField DataField="ExpiredItemType" HeaderText="Expired Item Type" SortExpression="ExpiredItemType" />
                                     <asp:BoundField DataField="AddedAmount" HeaderText="Added Amount" SortExpression="AddedAmount" />
                                     <asp:BoundField DataField="Amount" HeaderText="Expired Amount" SortExpression="Amount" />
                                       <asp:BoundField DataField="UAmount" HeaderText="Usable Amount" SortExpression="UAmount" />
                                      <asp:BoundField DataField="UsableAmount" HeaderText="Usable Persentage (%)" SortExpression="UsableAmount" />
                                       <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                       <asp:TemplateField>
                                          <ItemTemplate>
                                              <asp:CheckBox ID="EchkDel" runat="server"/>
                                          </ItemTemplate>
                                      </asp:TemplateField> 
                                   </Columns>

                               </asp:GridView>
                                 </div>
                            </div><br />

                       <div class="form-group" align="center">
                           <asp:Button class="btn btn-success" Width="100px" Text="Remove" ID="remove" runat="server" OnClick="Eremove_Click"/>
                            <asp:Button class="btn btn-success" Width="100px" Text="Total Stock" ID="tot" runat="server" OnClick="tot_Click"/>
                       </div>
        <br />
        <section>
                                <center>
                                    <button class="btn btn-success btn-block btn-lg col-4 buttonA" onclick="window.print();">Click here to print deliveries</button>
                                </center>
                            </section>
                            <br>
   </center> 
     </div>
    </div>
   <br /><br /><br />
  
</asp:Content>
