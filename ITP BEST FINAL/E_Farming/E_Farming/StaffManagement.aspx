<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StaffManagement.aspx.cs" Inherits="E_Farming.WebForm47" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">

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
                                        <h3 >ADD MEMBER</h3>
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
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox1" runat="server" placeholder="emp ID" required="true"> </asp:TextBox>

                                      </div>  
                                 </div>
                                <div class="col-md-6">
                                  <lable>Employee Name</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox2" runat="server" placeholder="emp name" required="true"> </asp:TextBox>

                                      </div>  
                                 </div>
                            </div>
                              <div class="row">
                            <div class="col-md-6">
                                <center>
                                  <lable>Code No</lable>
                                    <div class="form-group">
                                       <div class="input-group">
                                        <asp:TextBox CssClass="from-control shadow" ID="TextBox4" runat="server" placeholder="departmentsal ID" Width="179px" required="true"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
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
                                        <asp:TextBox  CssClass="from-control shadow" ID="TextBox13" runat="server"   Readonly="true" ></asp:TextBox>

                                      </div>  
                                 </div>

                                 <div class="col-md-4">
                                  <lable>Designation</lable>
                                    <div class="form-group">
                                           <asp:TextBox  CssClass="from-control shadow" ID="TextBox14" runat="server"   Readonly="true" ></asp:TextBox>

                                      </div>  
                                 </div>
                                <div class="col-md-4">
                                  <lable>Basic Salary</lable>
                                    <div class="form-group">
                                        <asp:TextBox  CssClass="from-control shadow" ID="TextBox5" runat="server"   Readonly="true" ></asp:TextBox>


                                      </div>  
                                 </div>
                                </div>
                             <div class="row">
                                 <div class="col-md-6">
                                     <lable>Contact No</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox6" runat="server" placeholder="07XXXXXXXX"  TextMode="Phone" pattern="[0]{1}[0-7]{1}[0-9]{8}" required="true"> </asp:TextBox>

                                    </div>  
                                 </div>
               
                                <div class="col-md-6">
                                  <lable>Email</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox7" runat="server" TextMode="Email" placeholder="abc@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required="true"> </asp:TextBox>
                                      </div>  
                                 </div>
                                 </div>
                            <div class="row">
                                 <div class="col-md-6">
                                     <lable>Date of Birth</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox8" runat="server" placeholder="dob" TextMode="Date" required="true"> </asp:TextBox>

                                    </div>  
                                 </div>
                           
                                 <div class="col-md-6">
                                     <lable>Account No</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox10" runat="server" placeholder="account no" TextMode="Phone"  pattern="[0-9]{10}" title="Must have at 10 numbers"  required="true"> </asp:TextBox>

                                    </div>  
                                 </div>
                                </div>
                             <div class="row">
                                <div class="col">
                                  <lable>Address</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox9" runat="server" placeholder="full address" TextMode="MultiLine"> </asp:TextBox>

                                      </div>  
                                 </div>

                                
                            </div>
                            
                            <div class="row">
                          
                                <div class="col-md-6">
                                     <lable>Password</lable>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control shadow" ID="TextBox11" runat="server" placeholder="pwd1" TextMode="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"  required="true"> </asp:TextBox>
                                    </div>  
                                 </div>
                               
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                     <asp:Button Class="btn btn-lg btn-block btn-success" ID="Button1" runat="server"  Text="ADD Member" OnClick="Button1_Click"  />
                                    
                                    </div>
                                </div>
                                <br /><br />
                                 
                                        
                                    
                                
                                     
                              
                                
                                
                            </div>

                        </div>
                    
                    </div>

                </div>
       
       </div>
   </center>


<br />
<br />
  <footer>
            <div id="footer1" class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                        <p>
                            <asp:LinkButton ID="A" runat="server" OnClick="A_Click">Profile Management</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton  ID="B" runat="server" OnClick="B_Click" >Salary Calculation</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton  ID="C" runat="server" OnClick="C_Click"  >Update DepartmentSalary </asp:LinkButton>
                            &nbsp
                            <asp:LinkButton ID="D" runat="server" OnClick="D_Click"  >DepartmentSalary Management</asp:LinkButton>
                        </p>
                    </div>
                </div>
            </div>
           

        </footer>
</asp:Content>
