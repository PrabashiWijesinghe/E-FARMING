<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WelcomeAdminPB.aspx.cs" Inherits="E_Farming.WebForm50" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center>
   <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
      <h1 align="center"><b>Item Management Page...!</b></h1>
                         <img src="photos/deliver.png"  style="height: 200px; width: 300px" />
                        <div class="row">
                        <div class="col">
            <asp:Button class="btn btn-success" ID="AddItem" runat="server" Text="Add Item" Height="35px" Width="200px" OnClick="AddItem_Click"   />
                       </div>
                           
                         <div class="col">
          <asp:Button class="btn btn-success " ID="ViewItem" runat="server" Text="View Item" Height="35px" Width="200px" OnClick="ViewItem_Click"  /> <br /><br />
                        </div>
                        </div>
                    
                <div class="row">
                 <div class="col">
            <asp:Button class="btn btn-success" ID="ViewOrderDetails" runat="server" Text="View Order Details" Height="35px" Width="200px" OnClick="ViewOrderDetails_Click"  />
                       </div>
                     <div class="col">  
            <asp:Button class="btn btn-success" ID="Home" runat="server" Text="Home" Height="35px" Width="200px" OnClick="Home_Click"  /><br /><br />
                </div>
                     </div>

                
                            </div>
                    
                        
                  </div>
               </div>
            </div>
            
         </div>
      </div>
   </div>
      </center> 


      <br />
    <br />
    
</asp:Content>
