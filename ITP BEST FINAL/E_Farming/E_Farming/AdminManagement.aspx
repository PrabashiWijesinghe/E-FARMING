<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminManagement.aspx.cs" Inherits="E_Farming.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><div class="container">
      <div class="row-md-20 mx-auto">
         <div class="col-md-12 mx-auto">
            
                        <center>
							<img  width="150px" src="photos/signincategory.png" /><br>
							
							

                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3> User and the Customer Management Page</h3><br>
                        </center>
                     </div>
                  </div><br><br>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div><br><br>
                  <div class="row">
                     <div class="col">
                       
                        <div class="form-group"><center>
                           <a href="customermanagement.aspx" class="btn buttonA col-4"   role="button" aria-pressed="true">Customer Management</a><br>
                            </center>
                        </div>
                        <div class="form-group"><center>
                             <a href="usermanagement.aspx" class="btn buttonA col-4" width="250px"  role="button" aria-pressed="true">User Management</a><br><br><br><hr />
                            </center>
                        </div><br><br>
                          
                       
                     </div>
                  </div>
            
            <a href="FarmHome.aspx"><< Back to Home</a>
       <br />
   </div>

</asp:Content>
