<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FarmerProfile.aspx.cs" Inherits="E_Farming.WebForm37" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
     <nav class="navbar navbar-expand-lg navbar-light bg-light">
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

    <br>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">

                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="photos/farmer.png" width="80" height="80"/>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h5><b>Your Profile</b></h5>
                                        <span>Account Status - </span>
                                        <asp:Label class="badge rounded-pill bg-success text-white" ID="Label1" runat="server" Text="Active"></asp:Label>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                   <label><b>Full Name :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox24" runat="server"
                                            placeholder="Farmer ID">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label><b>Date of Birth :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox25" runat="server"
                                            placeholder="Password" TextMode="Date" ReadOnly="True">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                   <label><b>Contact Number :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox26" runat="server"
                                            placeholder="Mobile Number" TextMode="Number">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label><b>E-mail Address :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox27" runat="server"
                                            placeholder="e-mail" TextMode="Email">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                   <label><b>NIC No :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox28" runat="server"
                                            placeholder="NIC Card Number" TextMode="Number" ReadOnly="True">
                                        </asp:TextBox>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                   <label><b>Province :</b></label>
                                    <div class="form-group">
                                        <asp:DropDownList CssClass="form-control shadow" ID="DropDownList2" runat="server">
                                            <asp:ListItem Text="-Select-" Value="-Select-"></asp:ListItem>
                                            <asp:ListItem Text="Southern Province" Value="Southern Province"></asp:ListItem>
                                            <asp:ListItem Text="Western Province" Value="Western Province"></asp:ListItem>
                                            <asp:ListItem Text="Central Province" Value="Central Province"></asp:ListItem>
                                            <asp:ListItem Text="Eastern Province" Value="Eastern Province"></asp:ListItem>
                                            <asp:ListItem Text="Northern Province" Value="Northern Province"></asp:ListItem>
                                            <asp:ListItem Text="Uva Province" Value="Uva Province"></asp:ListItem>
                                            <asp:ListItem Text="North Western Province" Value="North Western Province"></asp:ListItem>
                                            <asp:ListItem Text="North Central Province" Value="North Central Province"></asp:ListItem>
                                            <asp:ListItem Text="Sabaragamuwa Province" Value="Sabaragamuwa Province"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <label><b>City :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox29" runat="server"
                                            placeholder="City">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <label><b>Account Number :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox30" runat="server"
                                            placeholder="Postal Code" TextMode="Number" ReadOnly="True">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                   <label><b>Address :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox31" runat="server"
                                            placeholder="Permanent Address" TextMode="MultiLine">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <hr>

                            <div class="row">
                                <div class="col-md-4">
                                   <label><b>Farmer ID :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox32" runat="server"
                                            placeholder="Farmer ID" ReadOnly="True">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                   <label><b>Old Password :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox Class="form-control shadow" ID="TextBox33" TextMode="Password" runat="server"
                                            placeholder="Current Password" ReadOnly="True" >
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                   <label><b>New Password :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox Class="form-control shadow" TextMode="Password" ID="TextBox34" runat="server"
                                            placeholder="New Password" >
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <br>
                            <div class="row">
                                <div class="col-5 mx-auto">
                                    <center>
                                    <asp:Button class="btn btn-success btn-block btn-lg buttonA" ID="Button20" runat="server" Text="Update" OnClick="Button20_Click" />
                                    <asp:Button class="btn btn-success btn-block btn-lg buttonA" ID="Button21" runat="server" Text="Delete Your Profile" OnClick="Button21_Click" />
                                    </center>
                                </div>
                            </div><br>
                        </div>
                    </div>

                    <br>
                    <a href="RequestItemSelect.aspx"><i> << Back to Home</i></a>

                </div>
            </div>
        </div>
    </section><br>

    <section><center>
        <a href="ViewSuppliedItemTable.aspx">
            <input class="btn btn-success btn-lg buttonA shadow col-5" ID="Button3" type="button" value="Check Suppiled Items"/>
        </a></center>
    </section>
    <br><br><br>
</asp:Content>
