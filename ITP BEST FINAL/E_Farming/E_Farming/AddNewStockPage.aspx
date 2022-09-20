<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddNewStockPage.aspx.cs" Inherits="E_Farming.WebForm33" %>
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
    </div>
     <br /><br />
    <div class="container">
<div class="row">
<div class="col-md-6 mx-auto">
<div class="card">
<div class="card-body">
<div class="row">
<div class="col">

                        
      <div class="row">
                           <div class="col">
                               <center>
                                    <h3>Add New Stock</h3>
                               </center>
                           </div>
                       </div>

                       <div class="row">
                           <div class="col">
                               <center><img width="250px" src="photos/vegi.jpg" />
                                
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
                               <label>Enter Item Code:</label>
                                <asp:Label Text="*" runat="server" ForeColor="Red" />
                                 <div class="form-group">
                                    
                                    <asp:TextBox CssClass="form-control" ID="Icode" runat="server" placeholder="Item Code" required="true"/>
                                 </div>  
                       
                        <div class="row">
                           <div class="col">
                               <label>Enter Farmer ID:</label>
                               <asp:Label Text="*" runat="server" ForeColor="Red" />
                                 <div class="form-group">
                                     
                                    <asp:TextBox CssClass="form-control" ID="FID" runat="server" placeholder="Farmer ID" required="true"/>
                                 </div>  

                               <div class="row">
                                   <div class="col">
                                <lable>Select Category:</lable>
                                        <asp:Label Text="*" runat="server" ForeColor="Red" />
                                       <div class="form-group">
                                        <asp:DropDownList CssClass="form-control" ID="category" runat="server" required="true">
                                           <asp:ListItem Text="Select" Value="select"/>
                                            <asp:ListItem Text="Vegitable (KG)" Value="vegitable"/>
                                            <asp:ListItem Text="Fruit (KG)" Value="fruit"/>
                                            <asp:ListItem Text="Farm Product (Quantity)" Value="farm"/>
                                            <asp:ListItem Text="Serial (KG)" Value="serial"/>
                                        </asp:DropDownList>
                                   </div>

                               <label>Enter Item Type:</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="type" runat="server" placeholder="Item Type"/>
                                 </div> 

                                <label>Enter Amount Of Item:</label>
                                        <asp:Label Text="*" runat="server" ForeColor="Red" />
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="amount" runat="server" placeholder="Enter Amount" required="true"/>
                                 </div> 

                                <label>Date:</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="txtSdate" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                 </div> 

                               <br /><center>
                                 <div class="form-group">
                                     <asp:Button class="btn btn-success btn-block btn-lg" ID="add" Width="200px" runat="server" Text="Add" OnClick="add_Click" />
                                 </div> 
                                       <br />
                                 <br /> 
                               
                           </div>
                       </div>
                    </div>
                   </div>
                   </div>
               </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
                               </div>
    <br /><br />
</asp:Content>
