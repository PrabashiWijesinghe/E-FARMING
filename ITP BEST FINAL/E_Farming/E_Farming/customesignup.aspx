<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="customesignup.aspx.cs" Inherits="E_Farming.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
      <div class="row">
         <div class="col-md-10 mx-auto">
           
                        <center>
							<img  width="200px"src="photos/customer.png" />
							
                         
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Customer Sign Up</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" height="50px" ID="TextBox1" runat="server" placeholder="Full Name" required></asp:TextBox>
                        </div>
                     </div>
                     </div>
                  <div class="row">
                     <div class="col-md-12">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" height="50px" ID="TextBox3" runat="server" placeholder="Contact No" required TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" height="50px" ID="TextBox4" runat="server"  placeholder="abc@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required="true" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" height="50px" ID="DropDownList1" runat="server">
                           <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Southern Province" Value="Souther Province" />
                              <asp:ListItem Text="Western Province" Value="Western Province" />
                              <asp:ListItem Text="Northern Province" Value="North Province" />
                              <asp:ListItem Text="Sabaragamuwa Province" Value="Sabaragamuwa Province" />
                              <asp:ListItem Text="Central Province" Value="Central Province" />
                              <asp:ListItem Text="Uva Province" Value="Uva Province" />
                              <asp:ListItem Text="North-central Province" Value="North-central Province" />
                              <asp:ListItem Text="Nort-western Province" Value="" />
                              <asp:ListItem Text="Eastern Province" Value="Eastern Province" />
                             
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>City</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" height="50px" ID="DropDownList2" runat="server">
                                   <asp:ListItem Text="Select" Value="select" />
                                    <asp:ListItem Value="Matara">Matara</asp:ListItem>
                                    <asp:ListItem Value="Colombo">Colombo</asp:ListItem>
                                    <asp:ListItem Value="Galle">Galle</asp:ListItem>
                                    <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
                                    <asp:ListItem Value="Hambanthota">Hambanthota</asp:ListItem>
                                    <asp:ListItem Value="Jafna">Jafna</asp:ListItem>
                                    </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>CustomerNo</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" height="50px" ID="TextBox7" runat="server" placeholder="CustomerNo" TextMode="Number" required></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" height="80px" ID="TextBox5" runat="server" placeholder="Full Address"  TextMode="MultiLine" Rows="2" required></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Details</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Customer ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" height="50px" ID="TextBox8" runat="server" placeholder="Customer ID"  title="Must  Start with the Capital C letter and at least 5 digit or more" required ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Password</label>
                        <div class="form-group">


                           <asp:TextBox Cssclass="form-control" height="50px" ID="TextBox9" runat="server"  placeholder="Password" TextMode="Password" title="Must  Start with the customer Id and the lowercase letters  and at least 5 or more characters" required ></asp:TextBox>
                        </div>
                     </div>
                  </div><br>
          <div class="row">
                     <div class="col-md-12">
                        <label>Confirm Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" height="50px" ID="TextBox10" runat="server"  placeholder="Confirm password" TextMode="Password" required></asp:TextBox>
                        </div>
                     </div>
                     </div>
                  <div class="row">
                     <div class="col">
                        <div class="form-group">

                        <asp:Button class="btn btn-success btn-block btn-lg"  ID="Button3" runat="server" Text="Sign Up" OnClick="Button3_Click"  />

                        </div>
                         <br />
                           <div>
                       
                            <a href="adminusermanagement.aspx" class="btn btn-success btn-block btn-lg"   role="button" aria-pressed="true">User in</a>

                        </div>
                         
                     </div>
                  </div>
           
            
            <a href="FarmHome.aspx"><< Back to Home</a><br>
         </div>
</asp:Content>
