<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Total.aspx.cs" Inherits="E_Farming.WebForm32" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type ="text/javascript">
$(document).ready(function () {
$(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
} );
    </script>
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
    </div>
     <br /><br />
    <div class="container">
<div class="row">
<div class="col-md-10 mx-auto">
<div class="card">
<div class="card-body">
     <center>

                        <div class="row">
                           <div class="col">
                               <center>
                                    <h3>Total Usable Stock</h3>
                               </center>
                           </div>
                       </div>

                       <div class="row">
                           <div class="col">
                               <center><img width="250px" src="photos/stock.jpg" />
                                   
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
    
    <div class="row">
                           <div class="col">
                               
                               
                               
                               <asp:GridView class="table table-striped table-bordered" ID="TotalGridView" runat="server" AutoGenerateColumns="False">
                                   
                                   <Columns>
                                     
                                     <asp:BoundField DataField="ItemCode" HeaderText="ItemCode" SortExpression="ItemCode" />
                                     <asp:BoundField DataField="Total" HeaderText="Total Stock" SortExpression="Total" />

                                       <asp:TemplateField>
                                          <ItemTemplate>
                                              
                                                        <div class="col">
                                              <asp:Button class="btn btn-success" ID="Button5" runat="server" OnClick="Button5_Click" Text="Select" />
                                            </div>
            
                                          </ItemTemplate>
                                     
                                      </asp:TemplateField>    

                                   </Columns>
                               </asp:GridView>

                               <br />
                               <div class="row">
                           <div class="col">
                               <label>Item Code:</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TIcode" runat="server" ReadOnly="true"/>
                                 </div>  
                              
                               </div>
                                   <div class="col">
                               <label>Present Stock:</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TStock" runat="server" ReadOnly="true"/>
                                 </div>  
                              
                               </div>
                                   <div class="col">
                               <label>Sold Stock:</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="sold" runat="server" placeholder="Sold Stock"/>
                                 </div> <br />
                                       <asp:Button class="btn btn-success" ID="calc" runat="server"  Text="Calculate" OnClick="calc_Click" />
                              
                               </div>
                              </div>

                               <div class="row">
                                   <div class="col">
                               <label>Present Stock:</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control col-md-2" ID="present" runat="server" ReadOnly="true"/>
                                 </div>  <br />
                              <asp:Button class="btn btn-success" ID="update" runat="server" width="100px" Text="Update" OnClick="update_Click" />
                               </div>
                                   </div>
                               
                               <br />
                                 
                       </div>
                   </div>
               </div>
       </div>
    </div>
    </div>
        </div>
    <br />
        </div>
        </div><br /><center>
    <div class="form-group">
                                     <asp:Button class="btn btn-success btn-block btn-lg" ID="addNew" runat="server" Text=" Click to Go Add New Stock" OnClick="addNew_Click" />
                                 </div></center> 
                               
    <br /><br />
</asp:Content>
