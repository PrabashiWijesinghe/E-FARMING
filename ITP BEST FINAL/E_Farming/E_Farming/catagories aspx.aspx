<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="catagories aspx.aspx.cs" Inherits="E_Farming.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   
     <nav class="navbar navbar-expand-lg navbar-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                   <li class="nav-item active">
                            <asp:LinkButton class="nav-link" ID="LinkButton7" runat="server" Onclick="LinkButton7_Click" >Hello user</asp:LinkButton>

                        </li>
                       

                          
                       <li class="nav-item active">
                        <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Visible="FALSE">Logout</asp:LinkButton>
                     </li>
                   
                    </ul>		      
            </div>
        </nav>
    <br /><br />

    <center>
        <div class="container-fluid">
         
        <div class="row">
            <div class="col-md-8 mx-auto">
                <!--<div class="col-md-5">-->
    <div class="card">
        <div class="card-body">
        <div class="row">
            <div class="col">

   <h1 align="center"><b>Purchasing Lanka International</b></h1>
    
    
       <br />
            
            <img src="photos/farmlogo.png" style="width: 255px; height: 255px" /><br /><br /><br />

                        <div class="row">
                        <div class="col">
            <asp:Button class="btn btn-success" ID="btnVegitable" runat="server" Text="Vegitables" Height="35px" Width="200px" OnClick="btnVegitable_Click" />
                       </div>
                       <div class="col">
            <asp:Button class="btn btn-success" ID="btnFruit" runat="server" Text="Fruit" Height="35px" Width="200px" OnClick="btnFruit_Click" /><br /><br />
                        </div>
                        </div>
                     
                <div class="row">
                 <div class="col">
            <asp:Button class="btn btn-success" ID="btnFarmProduct" runat="server" Text="Farm Product" Height="35px" Width="200px" OnClick="btnFarmProduct_Click" />
                       </div>
                     <div class="col">  
            <asp:Button class="btn btn-success" ID="btnSerial" runat="server" Text="Cereal" Height="35px" Width="200px" OnClick="btnSerial_Click" /><br /><br />
                </div>
                     </div>
            </div>
             </div> 
            <div class="row-md-7"></div>
            
        </div>
    </div>
        </div>
            </div>
            </div>
             

    </center>
    <br /><a href="homepage aspx.aspx"><< Back to Home</a>
    <br /><br />
</asp:Content>
