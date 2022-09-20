<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewCost.aspx.cs" Inherits="E_Farming.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="customerViewDelivery.aspx">Deliver Status</a>
                    </li>
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="viewCost.aspx">View Deliver Charges</a>
                    </li>
                    
  
                       
                        
                        <li class="nav-item active">
                            <asp:LinkButton class="nav-link" ID="LinkButton7" runat="server" Onclick="LinkButton7_Click" >Hello user</asp:LinkButton>

                        </li>
                       

                          
                       <li class="nav-item active">
                        <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Visible="FALSE">Logout</asp:LinkButton>
                     </li>

                    </ul>		

               
            </div>
        </nav>
    
    <div>
    <hr /><center>
        <img src="photos/db1.jpg" width="20%" height="20%"/>
    </center>

   
    
    <br />
    <div class="col-md-4 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
    <center><p1><i>Choose your city and check your delivery cost</i></p1></center></div></div><br /><br />
    <center>
         <div class="row">
                            <div class="col">
        
   <asp:DropDownList ID="DropDownListF" runat="server" Width="180px" BorderColor="#00ff99">
                                    <asp:ListItem Value="Matara">Matara</asp:ListItem>
                                    <asp:ListItem Value="Colombo">Colombo</asp:ListItem>
                                    <asp:ListItem Value="Galle">Galle</asp:ListItem>
                                    <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
                                    <asp:ListItem Value="Hambanthota">Hambanthota</asp:ListItem>
                                    <asp:ListItem Value="Jafna">Jafna</asp:ListItem>
                                    </asp:DropDownList><asp:Button ID="Button1" runat="server" Text="Check" class="btn btn-outline-success" OnClick="Button1_Click" />
    </div></div></center><br /><br />
                         <div class="row">
                            <div class="col"><center>
    <h4>Your delivery charge is :<asp:TextBox ID="TextBoxC" BorderColor="#00ff99" runat="server" ReadOnly="true"></asp:TextBox></h4></center><br /><br /><div></div></div></div>

                         <div class="row">
                            <div class="col">
                                <img src="photos/pngtree-delivery-boy-on-scooter-clipart-png-image_3374609.jpg" width="180px" height="180px" />

                                </div></div>
                    </div></div></div>
    <center><br /><br />
        <asp:Label runat="server" Font-Italic="true" Font-Size="Large" Font-Bold="true" text=" Below are the cities where we deliver your orders"></asp:Label><br />
    <table style="width: 50%; height: 50%; border-block:double; border-color:darkgreen;" border="1" >
    <tr>
        <th>City Name</th>
       
        
    </tr>
    <tr>
        <td style="-moz-box-align:center;">Matara</td>
        
       
    </tr>
    <tr>
         <td style="-moz-box-align:center;">Galle</td>
        
        
    </tr>
         
    <tr>
        <td style="-moz-box-align:center;">Colombo</td>
     
        
    </tr>
         <tr>
         <td style="-moz-box-align:center;">Hambanthota</td>
      
        
    </tr>
    <tr>
        <td style="-moz-box-align:center;">Kandy</td>
        
        
    </tr>
    <tr>
        <td style="-moz-box-align:center;">Jafna</td>
        
        
    </tr>
</table></center>
        <br /><br /><br />
         <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center> <img src="photos/delivery-boy-job-500x500.png" width="200px" height="200px"/></center><div /><div />
                                <div class="row">
                            <div class="col">

        <asp:Label Text="Customerid" runat="server" ID="ad" Font-Bold="true"></asp:Label><br />
        <asp:TextBox ID="ad1" runat="server"  BorderColor="#00ff99" ReadOnly="true"></asp:TextBox></div></div><br />
                        <div class="row">
                            <div class="col">
        <asp:Label Text="Total" runat="server" ID="tt" Font-Bold="true"></asp:Label><br />
        <asp:TextBox ID="tt1" runat="server"  BorderColor="#00ff99" ReadOnly="true"></asp:TextBox></div></div>
                             <br />

                        <div class="row">
                            <div class="col">
                                
        <asp:Label Text="Total Delivery Amount with Order" runat="server" ID="Label13" Font-Bold="true"></asp:Label><br />
          <asp:TextBox ID="TextBoxT" runat="server" BorderColor="#00ff99" ReadOnly="true" Width="300px"></asp:TextBox><br /><br /><asp:Button Width="640px" ID="Button2" runat="server" Text="Confirm Delivery" class="btn buttonA" OnClick="Button2_Click" /></div></div></div></div></div>
        <br /></div></div>
        </div>
        <br /><br />
     <a href="homepage aspx.aspx"><< Back to Home</a><br>
       <br /><br />
</asp:Content>
