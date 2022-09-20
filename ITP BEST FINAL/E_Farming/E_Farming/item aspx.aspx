<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="item aspx.aspx.cs" Inherits="E_Farming.WebForm27" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script type="text/javascript">

        
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            } );
   

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Item Management</h4>
                                    <img id="imgview" style="width: 355px; height: 193px" src="photos/item.png" /><br/><br/>
                                    
                                    </center>

                            </div>
                        </div>

                        

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        

                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label Text="Item Code" runat="server" /><br />
                                
                                <div class="form-group">
                                    <div class="input-group">
                                       <asp:TextBox class="form-control" ID="txtItemCode" runat="server" readonly="true"/><br/><br/>
                                        
                                    </div>
                                </div>
                            </div>
                           

                            <div class="col-md-4">
                                <asp:label Text="Item Name" runat="server" /><br/>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtItemName" runat="server" readonly="true"/><br/><br/>
                                </div>
                            </div>
                            </div>

                        <div class="row">
                            <div class="col-md-4">
                               <asp:label Text="Catagories" runat="server" /><br/>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:DropDownList class="form-control" ID="Catagories" runat="server" readonly="true">
                              <asp:ListItem Text="Vegitables" Value="Vegitables" />
                              <asp:ListItem Text="Fruits" Value="Fruits" />
                              <asp:ListItem Text="Serials" Value="Serials" />
                              <asp:ListItem Text="Farm Products" Value="Farm Products" />
                              
                           </asp:DropDownList>	<br/><br/>
                                    </div>
                                </div>
                                 
                                  
                            </div>

                            <div class="col-md-4">
                                <asp:label Text="Price" runat="server" /><br/>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="txtPrice" runat="server" /><br/><br/>
                                </div>
                            </div>

                            
                        </div>

                         <div class="row">
                
                <div class="col-md-4">
            <asp:Button class="btn btn-warning" ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_Click"/>
                    </div>
                 <div class="col-md-4">
            <asp:Button class="btn btn-danger" ID="BtnDelete" runat="server" Text="Delete" OnClick="BtnDelete_Click1"/>
                     </div>
            
                </div><br /><br />
                                <center>
                                    <asp:Button class="btn btn-lg btn-block btn-success" Width="200px" Text=" Add New Item " ID="btnAddNew" runat="server" OnClick="btnAddNew_Click" /><br/><br/>
                                   <asp:Button class="btn btn-lg btn-block btn-success" Width="200px" ID="BtnviewItem" runat="server" Text="View Item" OnClick="BtnviewItem_Click"   /><br/><br/>
                                     <asp:Button class="btn btn-lg btn-block btn-success" Width="200px" ID="Orders" runat="server" Text="View Orders" OnClick="Orders_Click"  /><br /><br /><br/><br/>
                               
                                    </center>
                               
                <br>
                            </div>
                            
                        
                </div>

                
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">

                         

                        <div class="row print-container">
                            <div class="col">
                                <center>
                                        <h4>Item management</h4>
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
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT * FROM [item_management]" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>"></asp:SqlDataSource>
                                   
                               <hr />
                                 </div>
                            </div>

                       <div class="row">
                           <div class="col">
                              <asp:GridView class="table table-striped table-bordered" ID="EGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                                    <Columns>
                                      <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                      <asp:BoundField DataField="itemName" HeaderText="ItemName" InsertVisible="False" ReadOnly="True" SortExpression="itemName" />
                                       <asp:BoundField DataField="code" HeaderText="code" InsertVisible="False" ReadOnly="True" SortExpression="code" />
                                       <asp:BoundField DataField="Catagories" HeaderText="Catagories" InsertVisible="False" ReadOnly="True" SortExpression="Catagories" />
                                       <asp:TemplateField>
                                           <ItemTemplate>
                                               <div class="container-fluid">
                                                   <div class="row">
                                                       <div class="col-lg-10">
                                                           <div class="row">
                                                               <div class="col-12">

                                                                   Price(100g)-<asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>

                                                               </div>
                                                               </div>

                                                           <div class="row">
                                                               <div class="col-12">

                                                                   Present Stock-<asp:Label ID="Label4" runat="server" Text='<%# Eval("presentStock") %>'></asp:Label>

                                                               </div>
                                                               </div>
                                                           


                                                   </div>
                                                       <div class="col-lg-5">
                                                           <asp:Image Class="img-fluid" style="width: 500px; height: 80px" ID="Image1" runat="server" ImageUrl='<%# Eval("img_link") %>' />
                                                   </div><br />
                                                   </div>

                                               </div>
                                               <asp:Button class="btn btn-success" ID="Button5" runat="server"  Text="Update or Delete Item" OnClick="Button5_Click" />
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                      


                                   </Columns>
                               </asp:GridView>

                                
                            <br>
                               
                             
                               
                                 </div>
                            </div>

                     
        </div>
            </div>
                                                   </div>

                                               </div>


    </div><br /><br />
     <a href="WelcomeAdminPB.aspx"><i> << Go To Home</i></a><br />
</asp:Content>
