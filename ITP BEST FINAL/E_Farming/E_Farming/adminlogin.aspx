<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="E_Farming.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br />
    <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            
                        <center>
							<img width="150x" src="photos/users.png" />

                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Admin Login</h3>
                        </center>
                     </div>
                  </div><br><br><br>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Admin ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control"  height="100px" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                        </div><br><br>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" height="100px" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div><br><br>
                        <div class="form-group">
                                   <asp:Button class="btn btn-success btn-block btn-lg" height="50px" Width="1100px"  ID="Button4" runat="server" Text="Login" OnClick="Button4_Click"    /><br><br><br><br>
                        </div>
                    </div>
               </div>
            
            <a href="FarmHome.aspx"><< Back to Home</a><br><br>
         </div>
</asp:Content>
