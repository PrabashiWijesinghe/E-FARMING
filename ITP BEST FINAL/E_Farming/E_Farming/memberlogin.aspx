<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="memberlogin.aspx.cs" Inherits="E_Farming.WebForm45" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <br />

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img  src="photos/memberlogin.jpg" />

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member loging</h3>

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
                                <label>Employee ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control shadow" ID="TextBox1" runat="server" placeholder="EMP ID"></asp:TextBox>
                                </div><br />
                                <label>password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control shadow" ID="TextBox2" runat="server" placeholder="password"   TextMode="Password"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group">
                                    <center>
                                        <asp:Button Class="btn btn-success btn-block btn-lg" ID="Button1" Width="200px" runat="server" Text="Login" OnClick="Button1_Click"/>
                                </center>
</div>
                                <br />

                            </div>
                        </div>
                    </div>
                </div>

                <a href="FarmHome.aspx"> << Back to Home</a><br /><br />
            </div>
        </div>
    </div>

</asp:Content>
