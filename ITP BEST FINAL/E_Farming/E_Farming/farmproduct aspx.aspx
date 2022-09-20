<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="farmproduct aspx.aspx.cs" Inherits="E_Farming.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });

         

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  
     <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                   <li class="nav-item active">
                            <asp:LinkButton formnovalidate="True" class="nav-link" ID="LinkButton7" runat="server" Onclick="LinkButton7_Click" >Hello user</asp:LinkButton>

                        </li>
                       

                          
                       <li class="nav-item active">
                        <asp:LinkButton formnovalidate="True" class="nav-link" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Visible="FALSE">Logout</asp:LinkButton>
                     </li>
                   
                    </ul>		      
            </div>
        </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Add Cart</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img style="width: 100px; height: 150px"  src="photos/Addcart.png" />
                                        
                                       
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Item Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtIname" runat="server" ReadOnly="true"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>
                           

                            <div class="col-md-4">
                                <label>Quentity</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtQuentity" runat="server" ></asp:TextBox>

                                </div>
                            </div>
                             <div class="col-md-3">
                                <label>Price</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtPrice" runat="server" ReadOnly="true"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div><br /><br /><br /><br /><hr />
                            <asp:Button ID="Button3" class="btn btn-success" runat="server" formnovalidate="True" Text="Calculate total" OnClick="Button3_Click" />
                            <div class="col-md-4">
                                <label>Total</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtTotal" runat="server" requiered="true"></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <br /><hr /><br />
                        
                                <center>
                                    <asp:Button ID="Button2" class="btn btn-success col-4" runat="server" Text="Add" OnClick="Button2_Click"  /><br /><br />
                                <asp:Button ID="Button1" class="btn btn-success col-4" runat="server" formnovalidate="True" Text="View Cart" OnClick="Button1_Click"  /><br /><br />
                                     <asp:Button ID="btncat" class="btn btn-success col-4" runat="server" formnovalidate="True" Text="View catagory" OnClick="btncat_Click" /><br /><br /><br /><br /><br /><br /><br /><br />
                                </center>
                                 <a href="homepage aspx.aspx"><< Back to Home</a><br>
                <br>
                            </div>
                            
                        
                </div>

                
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Farm Products</h4>
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
                               
                               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT [id], [itemName], [price], [img_link] FROM [item_management] WHERE ([Catagories] = ?)" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>">
                                   <SelectParameters>
                                       <asp:QueryStringParameter DefaultValue="Farm Products" Name="Catagories" QueryStringField="Farm Products" Type="String" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                               
                           </div>
                       </div>

                       <div class="row">
                           <div class="col">
                               <hr />
                                 </div>
                            </div>

                       <div class="row">
                           <div class="col">
                               <asp:GridView class="table table-striped table-bordered" ID="EGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                  <Columns>
<asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
<asp:BoundField DataField="itemName" HeaderText="ItemName" InsertVisible="False" ReadOnly="True" SortExpression="itemName" />
<asp:BoundField DataField="price" HeaderText="Price(100g)" InsertVisible="False" ReadOnly="True" SortExpression="price" />
<asp:TemplateField>
<ItemTemplate>
<div class="container-fluid">
<div class="row">
<div class="col-lg-10">
<div class="row">
<div class="col-lg-5">
<asp:Image Class="img-fluid" style="width: 1000px; height: 100px" ID="Image1" runat="server" ImageUrl='<%# Eval("img_link") %>' />
</div>
<div class="col-lg-5">
<asp:Button formnovalidate="True" class="btn btn-success" ID="Button5" runat="server" OnClick="Button5_Click" Text="Add Quentuty" />
</div>
</div>
</ItemTemplate>
</asp:TemplateField>
</Columns>
                               </asp:GridView>
                                 </div>
                            </div>

                     
        </div>
                    </div>
                            </div></div>
                            </div>


</asp:Content>
