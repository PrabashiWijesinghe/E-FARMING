<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminusermanagement.aspx.cs" Inherits="E_Farming.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-10 mx-auto">
           
                        <center>
							<img width="150px"src="photos/signincategory.png" />
							
						

                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>User Details</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" height="80px" ID="TextBox11" runat="server" placeholder="User ID" required ></asp:TextBox>
                        </div><br>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" Height="80px" ID="TextBox12" runat="server" placeholder="Password"  title="Must  Start with the User Id and the lowercase letters  and at least 5 or more characters" required TextMode="Password"></asp:TextBox>
                        </div><br>
                          <label>Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" height="80px" ID="TextBox13" runat="server" placeholder="Name" required></asp:TextBox>
                        </div><br>
                           <div class="row">
                     <div class="col">
                        <label>Type</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" height="80px" ID="DropDownList2" runat="server">
                           <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Customer" Value="Customer" />
                              <asp:ListItem Text="Farmer" Value="Farmer" />
                              <asp:ListItem Text="Staff" Value="Staff" />
                             
                           </asp:DropDownList>
                        </div>
                     </div>
                </div>

            
                         <br /><br />
                         
                       <div class="row">
                     <div class="col">  <center>   
                       <asp:Button class="btn btn-success btn-block btn-lg" ID="Button4" runat="server" Text="Sign Up" OnClick="Button4_Click" width="800px"   />
                 </center></div></div> <br />

                          <div>
                        <div class="row">
                     <div class="col"><center>
                            <a href="userlogin.aspx" class="btn btn-success btn-block btn-lg"   role="button" aria-pressed="true" width="800px">Login As Customer</a>
                         </center></div></div>
                        </div><br />
                           <div>
                        <div class="row">
                     <div class="col">
                            <center><a href="FarmerLogin.aspx" class="btn btn-success btn-block btn-lg"   role="button" aria-pressed="true" width="800px">Login As Farmer</a>
                         </center></div></div>
                        </div><br />
                           <div>
                        <div class="row">
                     <div class="col">
                            <center><a href="memberlogin.aspx" class="btn btn-success btn-block btn-lg"   role="button" aria-pressed="true" width="800px">Login As Staff</a>
                         </center></div></div>
                        </div>
                         
                     </div>
                  </div>
                
                   

   </div>
    <br /><br />
</asp:Content>
