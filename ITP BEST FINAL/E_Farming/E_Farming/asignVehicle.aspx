<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="asignVehicle.aspx.cs" Inherits="E_Farming.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="asignVehicle.aspx">Asign Vehice</a>
                    </li>
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="addDelivery.aspx">Add Delivery</a>
                    </li>
                    <li class="nav-item active align-self-lg-center">
                        <a class="nav-link" href="viewDelivery.aspx">View All Deliveries</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <hr />
    <center>
        <h4>Assign Vehicle</h4>
        <img src="photos/deliver.png" />
    <table style="width: 50%;" border="0">
    <tr>
        <td>City Name</td>
        <td>Vehicle Number</td>
        <td>Driver Name</td>
    </tr>
        
    <tr>
        <td><asp:DropDownList ID="DropDownList1" Height="30px" Width="180px" BorderColor="#00ff99" runat="server">
            <asp:ListItem Value="Matara">Matara</asp:ListItem>
            <asp:ListItem Value="Colombo">Colombo</asp:ListItem>
            <asp:ListItem Value="Galle">Galle</asp:ListItem>
            <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
            <asp:ListItem Value="Hambanthota">Hambanthota</asp:ListItem>
            <asp:ListItem Value="Jafna">Jafna</asp:ListItem>
            </asp:DropDownList></td>
        <td><asp:TextBox ID="TextBox6" runat="server" placeholder="Vehicle Number" BorderColor="#00ff99"></asp:TextBox>
           
        </td>
        <td> <asp:TextBox ID="TextBox7" runat="server" placeholder="Name Of The Driver" BorderColor="#00ff99"></asp:TextBox></td>
    </tr>
       
         
        
</table><br />
</center><center>
    <asp:Button class="btn btn-success" ID="Button2" runat="server"  Text="Asign Vehicle" OnClick="Button2_Click" />
    </center>
    <br /><br /><br /><hr /><br />
   
    <div>
        <center>
             <h4>Assigned Vehicles And Driver Names</h4><br /><br />


            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="60%">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />

                <Columns>

                    <asp:TemplateField HeaderText="City Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("city_name") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                       

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Vehicle Number">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("vehicle_number") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Driver Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("driver_name") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        

                    </asp:TemplateField>
                    

                </Columns>

            </asp:GridView>

        </center><br /><br /><div class="col-md-4 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
        <p1><i>Use this fields to delete assigned vehicles from system.if one vehicle belongs to one city it is ok.
                But if one city cannot have two or more vehicles </i></p1>
        </div></div>
         <div class="row">
             <div class="col">

            <asp:Label FontColor="seagreen" Text="Delete Assigned Vehicle" Font-Bold="true" runat="server"></asp:Label> 
            <hr />
            
             <asp:DropDownList ID="DropDownListD" Width="180px" Height="30px" BorderColor="#00ff99" runat="server">
            <asp:ListItem Value="Matara">Matara</asp:ListItem>
            <asp:ListItem Value="Colombo">Colombo</asp:ListItem>
            <asp:ListItem Value="Galle">Galle</asp:ListItem>
            <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
            <asp:ListItem Value="Hambanthota">Hambanthota</asp:ListItem>
            <asp:ListItem Value="Jafna">Jafna</asp:ListItem>
            </asp:DropDownList><br /><br /></div>
             <div class="col">
             <img src="photos/dlt.jpg" width="160px" height="160px" /></div></div>

                        <div class="row">
             <div class="col">
        <asp:Button ID="delete" CssClass="btn btn-outline-danger" runat="server" Width="420px" Text="Delete" OnClick="delete_Click" />
           
            <br /><br />
            <asp:Label ID="SuccessMessage" Text="" runat="server" ForeColor="Gray"></asp:Label></div></div></div></div><br />
             
            <br /><br /><br />
            
             <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                
                 <h6>Update Assigned Vehicle Details Here</h6><hr /><br />
                
            <asp:DropDownList ID="DropDownList3" Width="180px" BorderColor="#00ff99" Height="30px" runat="server">
            <asp:ListItem Value="Matara">Matara</asp:ListItem>
            <asp:ListItem Value="Colombo">Colombo</asp:ListItem>
            <asp:ListItem Value="Galle">Galle</asp:ListItem>
            <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
            <asp:ListItem Value="Hambanthota">Hambanthota</asp:ListItem>
            <asp:ListItem Value="Jafna">Jafna</asp:ListItem>
            </asp:DropDownList><br /><br /><asp:Button class="btn btn-success col-4" ID="btn5" Text="GO" runat="server" OnClick="btn5_Click" Width="90px"/></div></div><br />
            <br />
              <div class="row">
                            <div class="col">
              <asp:TextBox ID="u2"  placeholder="vehicle number" runat="server" BorderColor="#00ff99"></asp:TextBox></div></div><br />
                        <div class="row">
                            <div class="col">
             <asp:TextBox ID="u3"  runat="server" placeholder="driver name" BorderColor="#00ff99"></asp:TextBox></div>
                             <div class="col">
                                 <img src="photos/green.jpg" width="160px" height="160px"/></div>


                        </div><br />
                        <div class="row">
                            <div class="col">
              <asp:Button ID="update1" class="btn btn-outline-success" runat="server" Text="Update" OnClick="update1_Click" Width="420px" OnClientClick="clear"/><br />
            <br />
            <asp:Label ID="SuccessMessage2" Text="" runat="server" ForeColor="Gray"></asp:Label></div></div></div>
                <br />
                    </div>
             
        </div>
       
        <br /><br /><br /><br />
    </div>
</asp:Content>
