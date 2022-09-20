<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateBasicSalary.aspx.cs" Inherits="E_Farming.WebForm49" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
           
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">

                    <br />
                    
                    <div class="card">
                        <div class="card-body mr-center">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h2>Update Basic Salary</h2>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-md-6">
                                  <label>Code No</label>
                                    <div class="form-group">
                                         <div class="input-group">
                                        <asp:TextBox CssClass="from-control" Width="250px" ID="TextBox11" runat="server" placeholder="department ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                               </div>
                                 <div class="row">
                                <div class="col-md-6">
                                  <lable>Department</lable>
                                    <div class="form-group">
                                       
                                        <asp:TextBox  CssClass="from-control" Width="250px" ID="TextBox13" runat="server"   Readonly="true" ></asp:TextBox>
                                           
                                      </div>  
                                 </div>

                                
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                  <lable>Designation</lable>
                                    <div class="form-group">
                                       
                                        <asp:TextBox  CssClass="from-control" Width="250px" ID="TextBox14" runat="server"   Readonly="true" ></asp:TextBox>
                                           
                                      </div>  
                                 </div>

                                
                            </div>
                             <div class="row">
                              <div class="col-md-6">
                                  <label>Basic Salary</label>
                                    <div class="form-group">
                                        <asp:TextBox  CssClass="from-control" Width="250px" ID="TextBox12" runat="server" placeholder="basic salary" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                </div></center><br />
                             <div class="row">
                                
                                 <div class="col">
                                    <center><asp:Button Class="btn btn-lg btn-block btn-warning" Width="300px" ID="Button2" runat="server"  Text="Update Basic Salary" OnClick="Button2_Click"   />
                                    </center></div>
                                 </div>
                                 <br /><br />

                                 
                                      <div class="row">
                               
                                <div class="col">
                                    <div class="form-group">
                                        <center>
                                        <asp:Button Class="btn btn-lg btn-block btn-danger" ID="Button3" Width="300px" runat="server"  Text="Delete Permanently" OnClick="Button3_Click" />
                                        </center>
                                    </div>
                                </div>
                              
                                </div>
                                        
                                    <br />
                               
                             
                              
                            </div>
                        </div>
                    
                </div>

                <br />

                <div class="col-md-6">
        <div class="card">
            <div class="card-body">

                <div class="row">
                    <div class="col">
                        <center>
                            <h3>DepartmentSalary Details</h3>

                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <center>
                            <img src="photos/salaryprofile.jpg" />
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <hr />
                    </div>
                </div>
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Member_Department_tbl]"></asp:SqlDataSource>
                    <div class="col">
                        <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="Code_No" HeaderText="Code_No" SortExpression="Code_No" />
                                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                                <asp:BoundField DataField="Basic_Salary" HeaderText="Basic_Salary" SortExpression="Basic_Salary" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
            </div>
    </div>


                
    <br />
<br />
  <footer>
            <div id="footer1" class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <p>
                            <asp:LinkButton ID="A" runat="server" OnClick="A_Click" >Profile Management</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton  ID="B" runat="server" OnClick="B_Click"  >Salary Calculation</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton  ID="C" runat="server" OnClick="C_Click"   >Update DepartmentSalary</asp:LinkButton>
                            &nbsp
                            <asp:LinkButton ID="D" runat="server" OnClick="D_Click"   >DepartmentSalary Management</asp:LinkButton>
                        </p>
                    </div>
                </div>
            </div>
          

        </footer>
</asp:Content>
