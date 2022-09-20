<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FarmerLogin.aspx.cs" Inherits="E_Farming.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">

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
                                        <h5><b>Farmer Login</b></h5>
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

                                    <label><b>Farmer ID :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox1" runat="server"
                                            placeholder="Farmer ID">
                                        </asp:TextBox>
                                    </div>

                                    <label><b>Password :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox2" runat="server"
                                            placeholder="Password" TextMode="Password">
                                        </asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block btn-lg buttonA" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                    </div>

                                    <div class="form-group">
                                         <asp:Button class="btn btn-success btn-block btn-lg buttonA" ID="Button2" runat="server" Text="Sign up" OnClick="Button2_Click" />
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <br>
                    <a href="FarmHome.aspx"><i> << Back to Home</i></a>

                </div>
            </div>
        </div>
    </section><br><br>

</asp:Content>
