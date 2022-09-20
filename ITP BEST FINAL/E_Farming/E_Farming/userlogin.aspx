<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="E_Farming.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br><br><br>
		<div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            
                        <center>
							
							<img   width="200px" src="photos/customer.png" />
						
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <center>
                           <h3>Customer Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div><br>
                  <div class="row">
                     <div class="col">
                        <label>Customer ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" height="100px" ID="TextBox1" runat="server" placeholder="Customer ID" required></asp:TextBox>
                        </div><br><br>
                        <label>Password</label>
                        <div class="form-group">
                           
                           <asp:TextBox CssClass="form-control" height="100px" ID="TextBox2" runat="server"  placeholder="Password"  title="Must  Start with the customer Id and the lowercase letters  and at least 5 or more characters" required TextMode="Password"></asp:TextBox>
                        </div><br><br />
                       
                              <center> <asp:Button class="btn btn-success btn-block btn-lg" height="50px" Width="800px" ID="Button3" runat="server" Text="login" OnClick="Button3_Click"   /></center>
                       <div><br>

                           
                             
                            
                       <div><br><center>
                            <a href="customesignup.aspx" class="btn btn-info btn-block btn-lg"   role="button" aria-pressed="true">Sign up</a><br><br><br><br><br><br><br>
                           </center>
                        </div>
                     </div>
                  </div>
                      <a href="FarmHome.aspx"><< Back to Home</a><br><br><br><br><br><br><br>
 </div>
</asp:Content>
