<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FarmerRegForm.aspx.cs" Inherits="E_Farming.WebForm38" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
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
                                        <h5><b>Farmer Registration</b></h5>
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
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox1" runat="server"
                                            placeholder="Farmer Name" Required="True">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label><b>Date of Birth :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox2" runat="server"
                                            TextMode="Date">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                   <label><b>Contact Number :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox3" runat="server"
                                            placeholder="Mobile Number" TextMode="Number">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label><b>E-mail Address :<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="Red" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Address is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                    </b></label>
                                    &nbsp;<div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox4" runat="server"
                                            placeholder="e-mail" TextMode="Email" ValidationGroup="TextBox4"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                   <label><b>NIC No :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox5" runat="server"
                                            placeholder="NIC Card Number" TextMode="Number" Required="True">
                                        </asp:TextBox>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                   <label><b>Province :</b></label>
                                    <div class="form-group">
                                        <asp:DropDownList CssClass="form-control shadow" ID="DropDownList1" runat="server">
                                            <asp:ListItem Text="- Select -" Value="- Select -"></asp:ListItem>
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
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox7" runat="server"
                                            placeholder="City">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <label><b>Account Number :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox8" runat="server"
                                            placeholder="Account Number" TextMode="Number">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                   <label><b>Address :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox9" runat="server"
                                            placeholder="Permanent Address">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <hr>

                            <div class="row">
                                <div class="col-md-6">
                                   <label><b>Farmer ID :</b></label>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-block btn-lg buttonA col-6" ID="btnGen" runat="server" Text="Generate ID" OnClick="btnGen_Click"></asp:Button><br>
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox6" runat="server"
                                            placeholder="Farmer ID">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div><br><br>

                            <div class="row">
                                <div class="col-md-6">
                                   <label><b>Password :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox10" Required="True" runat="server"
                                            placeholder="Password" TextMode="Password">
                                        </asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                   <label><b>Confirm Password :</b></label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox11" Required="True" runat="server"
                                            placeholder="Confirm Password" TextMode="Password">
                                        </asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <br>
                            <center>
                            <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-lg buttonA col-6" ID="Button1" runat="server" Text="Save and Create an Account" OnClick="Button1_Click"/>
                            </div>
                            </center>

                        </div>
                    </div>

                    <br>
                    <a href="FarmHome.aspx"><i> << Back to Home</i></a>

                </div>
            </div>
        </div>
    </section><br><br>

</asp:Content>
