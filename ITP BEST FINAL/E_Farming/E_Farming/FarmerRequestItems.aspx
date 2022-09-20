<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FarmerRequestItems.aspx.cs" Inherits="E_Farming.WebForm39" %>
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
<h5><b>Request for Items</b></h5>
</center>
</div>
</div>

 <div class="row">
<div class="col">
<hr>
</div>
</div>

 <p1><center><b>Fill the item details below</b></center></p1><br><br>

<asp:DropDownList class="form-control" ID="Catagories" runat="server" Required="True">
<asp:ListItem Text="- Select -" Value="- Select -"></asp:ListItem>
<asp:ListItem Text="Vegitables" Value="Vegitables" />
<asp:ListItem Text="Fruits" Value="Fruits" />
<asp:ListItem Text="Serials" Value="Serials" />
<asp:ListItem Text="Farm Products" Value="Farm Products" />
</asp:DropDownList> <br/><br/>

 <div class="row">
<div class="col-md-6">
<label><b>Item Name :</b></label>
<div class="form-group">
<asp:TextBox CssClass="form-control shadow" ID="TextBox12" runat="server"
placeholder="Enter the Item Name" Required="True"></asp:TextBox>
</div>
</div>

 <div class="col-md-6">
<label><b>Weight or Quantity :</b></label>
<div class="form-group">
<asp:TextBox CssClass="form-control shadow" ID="TextBox13" runat="server"
placeholder="Weight or Quentity" TextMode="Number" Required="True">
</asp:TextBox>
</div>
</div>
</div>

 <div class="row">
<div class="col-md-6">
<label><b>Unit Price :</b></label>
<div class="form-group">
<asp:TextBox CssClass="form-control shadow" ID="TextBox14" runat="server"
placeholder="Unit Price in Rupee" TextMode="Number" Required="True"></asp:TextBox>
</div>
</div>
</div>
</div>

 <center>
<div class="form-group">
<asp:Button class="btn btn-success btn-block btn-lg buttonA col-4" ID="Button10" runat="server" Text="Send Request" OnClick="Button10_Click"/>
</div>
</center>
<br>
</div>

 <br>

<a href="RequestItemSelect.aspx"><i> << Back to Home</i></a>
 </div>
</div>
</div>

 </section><br>

 <section><center>
<a href="FarmerProfile.aspx">
<input class="btn btn-success btn-lg buttonA shadow col-5" ID="Button11" type="button" value="View Your Profile"/>
</a></center>
</section>
<br><br><br>

</asp:Content>
