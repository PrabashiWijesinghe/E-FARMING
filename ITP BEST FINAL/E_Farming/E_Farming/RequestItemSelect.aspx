<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RequestItemSelect.aspx.cs" Inherits="E_Farming.WebForm41" %>
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
        </nav>	 <br>
      
    <br>
    <section><center>
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
                                        <h5><b>View Profile & Request for Supplies</b></h5>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <p1><center><b>Request for supplies</b></center></p1><br>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <a href="FarmerRequestItems.aspx">
                                            <input class="btn btn-success btn-lg buttonA shadow col-5" id="Button20" type="button" value="Request for Items" />
                                        </a><br>
                                    </div>
                                </div>
                            </div><br>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <p1><center><b>View Profile</b></center></p1><br>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <a href="FarmerProfile.aspx">
                                            <input class="btn btn-success btn-lg buttonA shadow col-5" id="Button24" type="button" value="View Your Profile" />
                                        </a><br>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                      </div>
                   </div>

                   <br>

                   <a href="FarmHome.aspx"><i> << Back to Home</i></a>

               </div>
            </div>
         </div>
        </center>
    </section><br>

    
    <br><br><br>

</asp:Content>
