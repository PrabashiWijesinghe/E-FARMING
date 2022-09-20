<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart aspx.aspx.cs" Inherits="E_Farming.WebForm22" %>
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
      <br /><br />
    <div class="container">
<div class="row">
<div class="col-md-6 mx-auto">
<div class="card">
<div class="card-body">
<div class="row">
<div class="col">
<center>
<h3>View Cart</h3>

<br />
</center>
</div>
</div>
<div class="row">
<div class="col">
<hr />
</div>
</div>



<div class="row">
<div class="col">

<asp:GridView class="table table-striped table-bordered" ID="EGridView1" runat="server" ShowFooter="True" FooterStyle-BackColor="seaGreen" AutoGenerateColumns="False" DataKeyNames="ID" OnRowDataBound="EGridView1_RowDataBound" >
<Columns>
<asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
<asp:BoundField DataField="itemName" HeaderText="ItemName and Quantity" SortExpression="itemName" />

<asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
<asp:TemplateField>
<ItemTemplate>
<asp:CheckBox ID="chkDel" runat="server"/>
</ItemTemplate>
</asp:TemplateField>
</Columns>



<FooterStyle BackColor="SeaGreen"></FooterStyle>

</asp:GridView>
<br />
<div class="form-group" align="center">
<asp:Button class="btn btn-success" Text="Remove added Item" ID="remove" runat="server" OnClick="remove_Click" />
</div>
<br />
<center>
<asp:Label ID="Label1" runat="server" Text="Total Price : RS."></asp:Label>
<asp:TextBox ID="txtTprice" runat="server" ReadOnly="true"></asp:TextBox><br /><br /><br /><br />




<div class="row">
<div class="col">
<asp:Button class="btn btn-primary" Text=" Order Now " Width="120px" ID="btnAddNew" runat="server" OnClick="btnAddNew_Click" /><br />
</div>



<div class="col">
<asp:Button class="btn btn-success " Text=" Add More " ID="Button1"  Width="120px" runat="server" OnClick="Button1_Click" /><br />
</div>
<div class="col">
<asp:Button class="btn btn-danger " Text=" Cancel Order " ID="Button2"  Width="120px" runat="server" OnClick="Button2_Click" /><br />
</div>
</div>









</center>

</div>
</div>
<hr />



<h1 align="center"><b>Place Order</b></h1><br /><br /><br />
<asp:Label Text="your order ID : " runat="server" />
<asp:TextBox ID="TxtOrderId" runat="server"></asp:TextBox><br />

<asp:Label Text="Location" runat="server" />

<br />

<asp:TextBox class="form-control" ID="txtLocation" runat="server" TextMode="MultiLine" />



<asp:Label Text="Item names and quantity: " runat="server" /><br />
<asp:ListBox ID="ListBox1" runat="server"  DataTextField="itemName" DataValueField="itemName" Width="157px" DataSourceID="SqlDataSource1">

</asp:ListBox>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [itemName] FROM [cart_management]"></asp:SqlDataSource>
    <br />


<asp:Label Text="Total Price : RS." runat="server" />
<asp:TextBox class="form-control" ID="txtTotalPrice" runat="server" />

<br/><br/>
<center>
<div class="form-group">
<asp:Button class="btn btn-success" ID="btnOrder" runat="server"  Width="120px" Text="Submit" OnClick="btnOrder_Click" /><br/><br/>
</div>
</center>


</div>

</div>

</div>
</div>

</div><br /><a href="homepage aspx.aspx"><< Back to Home</a>
    <br /><br />
</asp:Content>
