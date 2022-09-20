<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StockView.aspx.cs" Inherits="E_Farming.WebForm31" %>
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
    <div class="container-fluid">
           <div class="row">
               <div class="col-md-5">
                   <div class="card">

                       <div class="row">
                           <div class="col"><br />
                               <center>
                                    <h3>Add Expired or Unusable Items</h3>
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
                               <label>Item Code:</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="EIcode" runat="server" placeholder="Item Code" ReadOnly="true"/>
                                 </div>  
                       
                        <div class="row">
                           <div class="col">
                               <label>Farmer ID:</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="EFID" runat="server" placeholder="Farmer ID" ReadOnly="true"/>
                                 </div>  

                               <div class="row">
                                   <div class="col">
                                <lable>Category:</lable>
                                       <div class="form-group">
                                        <asp:DropDownList CssClass="form-control" ID="Ecategory" runat="server" ReadOnly="true">
                                           <asp:ListItem Text="Select" Value="select"/>
                                            <asp:ListItem Text="Vegitable (KG)" Value="vegitable"/>
                                            <asp:ListItem Text="Fruit (KG)" Value="fruit"/>
                                            <asp:ListItem Text="Farm Product (Quantity)" Value="farm"/>
                                            <asp:ListItem Text="Serial (KG)" Value="serial"/>
                                        </asp:DropDownList>
                                   </div>

                               <label>Item Type:</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Etype" runat="server" placeholder="Item Type" ReadOnly="true"/>
                                 </div> 

                                   <label>Added Amount:</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="amount" runat="server" placeholder="Enter Amount" ReadOnly="true"/>
                                 </div> 

                                <label>Enter Amount Of Expired Item:</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Eamount" runat="server" placeholder="Enter Amount"/>
                                 </div> 
                                       <br />
                                <div class="form-group">
                                     <asp:Button class="btn btn-success btn-block btn-lg" ID="calcUsable" runat="server" Text="Calculate Usable Amount" OnClick="calcUsable_Click" />
                                 </div> 
                                       <br />
                                <label>Usable Amount</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="EUamount" runat="server"/>
                                 </div> 

                                <label>Usable Persentage (%)</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="usable" runat="server"/>
                                 </div> 

                                <label>Date:</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtdate" runat="server" placeholder="Date" TextMode="Date" ReadOnly="true"></asp:TextBox>
                                 </div> 

                               <br />
                                 <div class="form-group">
                                   <center>  <asp:Button class="btn btn-success btn-block btn-lg" ID="Eadd" runat="server" Text="Add" OnClick="Eadd_Click" /></center>
                                 </div> 
                               <br />
                           </div>
                       </div>
                    </div>
                   </div>
                   </div>
               </div>
                         </div><br /><br />
        </div>
   

               <div class="col-md-7">
                   <div class="card">

                        <div class="row">
                           <div class="col"><br />
                               <center>
                                    <h3>Stock Management</h3>
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
                               
                               <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False">
                                   
                                   <Columns>
                                     <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID"></asp:BoundField>
                                     <asp:BoundField DataField="ItemCode" HeaderText="ItemCode" SortExpression="ItemCode" />
                                     <asp:BoundField DataField="FarmerID" HeaderText="FarmerID" SortExpression="FarmerID" />
                                     <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                                     <asp:BoundField DataField="ItemType" HeaderText="ItemType" SortExpression="ItemType" />
                                     <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                                     <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        
                                     
                                     <asp:TemplateField>
                                          <ItemTemplate>
                                              <div class="row">
                                                  <div class="col">
                                              <asp:CheckBox ID="chkDel" runat="server"/>
                                                         </div>
                                                        <div class="col">
                                              <asp:Button class="btn btn-success" ID="Button5" runat="server" OnClick="Button5_Click" Text="Select" />
                                            </div>
                                                  </div>
                                               
                                          </ItemTemplate>
                                     
                                      </asp:TemplateField>    
                                       
                                       
                                       
                         
                                   
                                   </Columns>
                               </asp:GridView>
                                <div class="form-group" align="center">
                            <asp:Button class="btn btn-success" Text="Remove" ID="remove" runat="server" OnClick="remove_Click"/>
                       </div>
                                <br />
                                 </div>
                            </div>

                        
           </div>
               </div>
    
       </div>
     </div>
</asp:Content>
