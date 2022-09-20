<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage aspx.aspx.cs" Inherits="E_Farming.WebForm26" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
     <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-right">
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
   <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
      <h1 align="center"><b>Welcome You All...!</b></h1>
            <img src="photos/item.png" style="height: 200px; width: 300px" />
                        <div class="row">
                        <div class="col">
            <asp:Button class="btn btn-success shadow" ID="btnViewProfile" runat="server" Text="View Profile" Height="35px" Width="200px" OnClick="btnViewProfile_Click"/>
                       </div>
                        
                       <div class="col">
            <asp:Button class="btn btn-success" ID="btnViewCart" runat="server" Text="View Cart" Height="35px" Width="200px" OnClick="btnViewCart_Click" /><br /><br />
                        </div>
                        </div>
                     
                <div class="row">
                 <div class="col">
            <asp:Button class="btn btn-success" ID="btnViewItem" runat="server" Text="View Item" Height="35px" Width="200px" OnClick="btnViewItem_Click" />
                       </div>
                     <div class="col">  
            <asp:Button class="btn btn-success" ID="btnViewDelivery" runat="server" Text="View Delivery" Height="35px" Width="200px" OnClick="btnViewDelivery_Click" /><br /><br />
                </div>
                     </div>

                <div class="row">
           
                     <div class="col">   
                   
            <asp:Button class="btn btn-success shadow" ID="btnFeedBack" runat="server" Text="Feedback" Height="35px" Width="200px" OnClick="btnFeedBack_Click" /><br /><br />
                        </div>
                    
                     </div>
                            </div>
                    
                        
                  </div>
               </div>
            </div>
            
         </div>
      </div>
   </div> <br /><br />
      </center> 
</asp:Content>
