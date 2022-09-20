<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteMember.aspx.cs" Inherits="E_Farming.WebForm43" %>
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

                <div class="col-md-5">

                    <div class="card">
                        <div class="card-body">
                            <div class ="row">
                                <div class="col">
                                    <center>
                                        <img src="photos/generaluser.jpg" style="height: 117px; width: 117px; margin-top: 4px" />
                                    </center>
                                 
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3 >Delete Member</h3>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                  <lable>Employee ID</lable>
                                    <div class="form-group">
                                        <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="emp ID">   </asp:TextBox>
                                            <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                            </div>
                                      </div>  
                                 </div>
                                     <div class="col-md-6">
                                  <lable>Employee Name</lable>
                                    <div class="form-group">
                                        
                                              <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="emp name"  ReadOnly="true"></asp:TextBox>

                                     

                                      </div>  
                                 </div>
                            </div>
                             <div class="row">
                            <div class="col-md-6">
                                <center>
                                  <lable>Code No</lable>
                                    <div class="form-group">
                                       <div class="input-group">
                                        <asp:TextBox CssClass="from-control" ID="TextBox4" runat="server" placeholder="Code_No" Width="179px"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        </div>

                                      </div> 
                                    </center>
                                 </div>
                                  </div>
                              <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                  <lable>Department</lable>
                                    <div class="form-group">
                                        <asp:TextBox  CssClass="from-control" ID="TextBox13" runat="server"   Readonly="true" Width="130px" ></asp:TextBox>

                                      </div>  
                                 </div>

                                 <div class="col-md-4">
                                  <lable>Designation</lable>
                                    <div class="form-group">
                                           <asp:TextBox  CssClass="from-control" ID="TextBox14" runat="server"   Readonly="true" Width="130px" ></asp:TextBox>

                                      </div>  
                                 </div>
                                <div class="col-md-4">
                                  <lable>Basic Salary</lable>
                                    <div class="form-group">
                                        <asp:TextBox  CssClass="from-control" ID="TextBox5" runat="server"   Readonly="true" Width="130px" ></asp:TextBox>


                                      </div>  
                                 </div>
                                </div>
                           
                            <div class="row">
                                 <div class="col-md-6">
                                     <lable>Contact No</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Contact no" TextMode="Number" ReadOnly="true">

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                            

                            
                                <div class="col-md-6">
                                  <lable>Email</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="email" TextMode="Email" ReadOnly="true">

                                        </asp:TextBox>

                                      </div>  
                                 </div>
                                </div>
                            <div class="row">
                                 <div class="col-md-6">
                                     <lable>Date of Birth</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="dob" TextMode="Date" ReadOnly="true">

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                          
                                 <div class="col-md-6">
                                     <lable>Account No</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="account no" TextMode="Number" ReadOnly="true">

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                            
                              
                                </div>
                            <div class="row">
                                  <div class="col">
                                  <lable>Address</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="full address" TextMode="MultiLine" ReadOnly="true">

                                        </asp:TextBox>

                                      </div>  
                                 </div>
                            
                           </div>
                           <div class="row">
                                <div class="col-md-5">
                                     <lable>Password</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="pwd1" TextMode="Password" ReadOnly="true">
                                            

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                                
                            </div>
                            <br />
                            <div class="row">
                               <div class="col">
                                    <center><asp:Button Class="btn btn-lg btn-block btn-warning" Width="350px" ID="Button2" runat="server"  Text="Update Member" OnClick="Button2_Click"  />
                                    </center></div>
                              </div>
                            <br />
                            
                                 <div class="row">
                                     <div class="col">
                                    <div class="form-group">
                                        <center>
                                        <asp:Button Class="btn btn-lg btn-block btn-danger" ID="Button3" Width="350px" runat="server"  Text="Delete Member Permanently" OnClick="Button3_Click" />
                                        </center><br />
                                    </div>
                                </div>
                              
                                </div>
                                        
                         </div>
                      
                        </div>
                       <br /><br />      
  
</div>

    <div class="col-md-7">
        <div class="card">
            <div class="card-body">

                <div class="row">
                    <div class="col">
                        <center>
                            <h3>Members List</h3>

                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <center>
                            <img src="photos/welcome%20member.jpg" />
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <hr />
                    </div>
                </div>
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [Employee_ID], [Employee_Name], [Code_No], [email], [account_no], [contact_no] FROM [Staff_management_tbl]"></asp:SqlDataSource>

                    <div class="col">
                        <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                            <Columns>
                                <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" SortExpression="Employee_ID" />
                                <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" SortExpression="Employee_Name" />
                                <asp:BoundField DataField="Code_No" HeaderText="Code_No" SortExpression="Code_No" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="account_no" HeaderText="account_no" SortExpression="account_no" />
                                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
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
                            <asp:LinkButton  ID="C" runat="server" OnClick="C_Click"   >UpdateSalary Department</asp:LinkButton>
                            &nbsp
                            <asp:LinkButton ID="D" runat="server" OnClick="D_Click"  >DepartmentSalary Management</asp:LinkButton>
                        </p>
                    </div>
                </div>
            </div>
            

        </footer>
</asp:Content>
