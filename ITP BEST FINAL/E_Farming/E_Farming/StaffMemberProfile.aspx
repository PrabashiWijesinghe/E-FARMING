<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StaffMemberProfile.aspx.cs" Inherits="E_Farming.WebForm48" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

       });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <nav class="navbar navbar-expand-lg navbar-dark bg-success">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                          
                       <li class="nav-item active">
                        <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Visible="FALSE">Logout</asp:LinkButton>
                            <a class="nav-link" href="FarmHome.aspx">Log Out</a>
                     </li>
                   
                    </ul>		      
            </div>
        </nav>
    <br />
  <div class="container-fluid">
            <div class="row">
                <div class="col-md-5">

                    <div class="card">
                        <div class="card-body">
                            <div class ="row">
                                <div class="col">
                                    <center>
                                        <img  width=150px height=145px src="photos/profile.jpg" />
                                        
                                    </center>
                                 
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3 >Your Profile</h3>
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
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Employee ID" ReadOnly="true">

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                                <div class="col-md-6">
                                  <lable>Employee Name</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Employee Name" required="true">

                                        </asp:TextBox>

                                      </div>  
                                 </div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                  <lable>Department</lable>
                                    <div class="form-group">
                                        <asp:TextBox cssclass="from-control" ID="TextBox12" runat="server" ReadOnly="true" ></asp:TextBox>

                                      </div>  
                                 </div>
                                <div class="col-md-3">
                                  <lable>Designation</lable>
                                    <div class="form-group">
                                        <asp:TextBox Cssclass="from-control" ID="TextBox3" runat="server" ReadOnly="true"  ></asp:TextBox>
                                      </div>  
                                 </div>
                                <div class="col-md-3">
                                  <lable>Basic Salary</lable>
                                    <div class="form-group">
                                        <asp:TextBox Cssclass="from-control" ID="TextBox16" runat="server" ReadOnly="true"  ></asp:TextBox>
                                      </div>  
                                 </div>
                                
                            </div>

                             <div class="row">
                                 <div class="col-md-6">
                                     <lable>Contact No</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"  placeholder="07XXXXXXXX"  TextMode="Phone" pattern="[0]{1}[0-7]{1}[0-9]{8}" required="true">

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                           
                                <div class="col-md-6">
                                  <lable>Email</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"  TextMode="Email" placeholder="abc@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required="true"> </asp:TextBox>

                                        

                                      </div>  
                                 </div>
                                </div>
                             <div class="row">
                                 <div class="col-md-6">
                                     <lable>Date of Birth</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"  placeholder="dob" TextMode="Date" required="true">

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                                <div class="col-md-6">
                                     <lable>Account No</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"  placeholder="account no" TextMode="Phone"  pattern="[0-9]{10}" title="Must have at 10 numbers"  required="true">

                                        </asp:TextBox>

                                    </div>  
                                 </div>
                              
                               </div>
                             <div class="row">
                                 <div class="col">
                                  <lable>Address</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"  TextMode="MultiLine">

                                        </asp:TextBox>

                                      </div>  
                                 </div>
                                 </div>
                           
                            
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <span class="badge badge-pill badge-info">Login Credentials</span>
                                    </center>
                                </div>
                            </div>

                            
                            <div class="row">
                                <div class="col">
                                    <hr />
                                </div>
                            </div>



                            <div class="row">
                                 <div class="col-md-5">
                                     <lable>Old Password</lable>
                                    <div class="form-group">
                                       <%--  <asp:Label ID="Label1" runat="server" Text="You must enter old password or should update "></asp:Label>--%>
                                        <asp:TextBox Class="form-control" ID="TextBox11" runat="server" placeholder=" old Password" TextMode="Password" ReadOnly="true">

                                        </asp:TextBox>

                                    </div>  
                                 </div></div><br />
                            
                            <div class="row">
                               <div class="col-md-7">
                                     <lable>New Password</lable>
                                    <div class="form-group">
                                           <asp:Label ID="Label1" runat="server" Text="**You must enter old password or should update** "></asp:Label>
                                        <asp:TextBox Class="form-control" ID="TextBox5" runat="server" placeholder="Password" TextMode="Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"  required="true">

                                        </asp:TextBox>

                                    </div>  </div>
                                 </div>

                                <br />
                            <br />
                           
                               <div class="row">
                             <div class="col">
                                 <center>
                                    <asp:Button Class="btn btn-primary btn-block btn-lg" ID="Button2" runat="server"  Text="UPDATE" Width="150px" OnClick="Button2_Click" />
                                     </center>
                                    </div>
                                  
                                    <br />
                                     
                                </div><br />
                                        
                                
                            </div>

                        </div>
                      <a href="memberlogin.aspx"> << Back to Home</a><br /><br />
</div>
<br />
                
    <div class="col-md-7">
        <div class="card">
            <div class="card-body">

                <div class="row">
                     <div class="col">
                     <center>
                            <h3>Salary Details</h3>

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
                    <div class="col">
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Salary_Management_tbl]"></asp:SqlDataSource> 
                        <asp:GridView Class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Employee_ID" >
                            <Columns>
                                <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" ReadOnly="True" SortExpression="Employee_ID" />
                                <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" SortExpression="Employee_Name" />
                                <asp:BoundField DataField="account_no" HeaderText="account_no" SortExpression="account_no" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Complain" HeaderText="Complain" SortExpression="Complain" />
                                <asp:BoundField DataField="Net_Salary" HeaderText="Net_Salary" SortExpression="Net_Salary" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
   </div>
   </div>







</asp:Content>
