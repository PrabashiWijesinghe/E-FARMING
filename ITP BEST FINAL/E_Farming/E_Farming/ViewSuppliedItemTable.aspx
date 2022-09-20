<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewSuppliedItemTable.aspx.cs" Inherits="E_Farming.WebForm42" %>
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

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12 mx-auto">

                    <div class="card">
                        <div class="card-body">
                            <style>
                            @media print {
                                body * {
                                    visibility: hidden;
                                }
                                .print-container, .print-container * {
                                    visibility: visible;
                                }
                            }
                            </style>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img src="photos/farmer.png" width="80" height="80"/>
                                    </center>
                                </div>
                            </div>

                            <div class="row print-container">
                                <div class="col">
                                    <center>
                                        <h5><b>Supplied Item Table</b></h5>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div><br>

                                    <asp:GridView class="table table-striped table-bordered print-container" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id">

                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="Item No" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                            <asp:BoundField DataField="category" HeaderText="Product Type" SortExpression="category" />
                                            <asp:BoundField DataField="item_name" HeaderText="Product Name" SortExpression="item_name" />
                                            <asp:BoundField DataField="weight_quantity" HeaderText="Product Weight/Quantity" SortExpression="weight_quantity" />
                                            <asp:BoundField DataField="unit_price" HeaderText="Product Price" SortExpression="unit_price" />
                                            
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="chkDel" runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        </Columns>

                                    </asp:GridView>
                         
                            <section>
                                <center>
                                    <br>
                                        <asp:Button ID="btndelete" runat="server" Text="Delete" class="btn btn-success btn-block btn-lg col-4 buttonA" OnClick="btndelete_Click"/><br>
                                    <br>
                            </section>
                            <section>
                                <center>
                                    <button class="btn btn-success btn-block btn-lg col-4 buttonA" onclick="window.print();">Click here to print expired item list</button>
                                </center>
                            </section>
                            <br>

                        </div>
                    </div>

                    <br>
                   <a href="RequestItemSelect.aspx"><i> << Back to Home</i></a>

                </div>
            </div>
        </div>
    </section><br>
</asp:Content>
