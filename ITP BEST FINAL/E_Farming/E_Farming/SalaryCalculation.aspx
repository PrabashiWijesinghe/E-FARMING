<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SalaryCalculation.aspx.cs" Inherits="E_Farming.WebForm46" %>
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
                <div class="col-md-5"><br />
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                        <center>
                                            <img src="photos/salary.jpg" />
                                    </center>
                                    
                                </div>
                            </div>
                           
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Salary Calculation</h3>
                                    </center>
                                </div>
                            </div>
                             <div class="row">
                                <div class="col-md-6">
                                    <label>Employee ID</label>
                                    <div class="form-group">
                                        <div class="input-group">
                                        <asp:TextBox CssClass="from-control" ID="TextBox1" runat="server" placeholder="emp ID"></asp:TextBox>
                                            <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>  
                                </div>
                            <div class="row">
                            <div class="col-md-6">
                                  <label>Emplyee Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="from-control" ID="TextBox2" runat="server" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                               
                                 <div class="col-md-6">
                                  <label>Department</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="from-control" ID="TextBox3" runat="server" ReadOnly="true" ></asp:TextBox>
                                    </div>
                                </div>
                                </div>
                             <div class="row">
                            <div class="col-md-6">
                                  <label>Designation</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="from-control" ID="TextBox4" runat="server" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            <div class="col-md-6">
                                  <label>Account No</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="from-control" ID="TextBox9" runat="server" ReadOnly="true" ></asp:TextBox>
                                    </div>
                                </div>
                                 </div>
                            <div class="row">
                            <div class="col-md-6">
                                  <label>Basic salary</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="from-control" ID="sal" runat="server" ReadOnly="true" ></asp:TextBox>
                                    </div>
                                </div>
                                
                           <div class="col-md-4">
                              <label>Date</label>
                                <div class="form-group">
                                      <asp:TextBox CssClass="from-control" ID="TextBox11" runat="server" placeholder="Date" TextMode="Date" required="true"></asp:TextBox>
                                    </div>
                                </div>
                                </div>
                            
                                <br />

                            <div class="row">
                            <div class="col-md-3">
                                  <label>Dearness Allowence</label>
                                    <div class="form-group">
                                        
                                        <asp:TextBox CssClass="from-control" ID="Dsal" runat="server" placeholder="DA" TextMode="Number" required="true"></asp:TextBox>
                                    </div>
                                </div>
                           <div class="col-md-4">
                                  <label>Entertainment Allowance</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="from-control" ID="Esal" runat="server" placeholder="EA" TextMode="Number" required="true"></asp:TextBox>
                                    </div>
                                </div>
                            <div class="col-md-3">
                                  <label>Medical Allowance</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="from-control" ID="Msal" runat="server" placeholder="MA" TextMode="Number" required="true"></asp:TextBox>
                                    </div>
                                </div>
                                </div><br />
                            <div class="row=">
                            <div class="col-md-4">
                                <lable>Complain</lable><br />
                                <asp:DropDownList  Class="from-control" ID="DropDownList1" runat="server">
                               <asp:ListItem Text="Yes" Value="Yes" />
                              <asp:ListItem Text="No" Value="No" />
                                  </asp:DropDownList><br /><br />
                                 
                                </div> 
                            </div>
                             <div class="row=">
                            <div class="col-md-5">
                                  <label>Tax</label>
                                    <div class="form-group">
                                        
                                        <asp:TextBox CssClass="from-control" ID="tax" runat="server" placeholder="Tax" TextMode="Number" Height="28px" Width="161px" ReadOnly="true"></asp:TextBox> <br /><br />
                                        <asp:Button  Class="btn btn-primary" ID="Button5" runat="server" Text="OK" OnClick="Button5_Click" Width="90px" />
                                        
                                    </div></div></div><br /><hr />
                             <div class="row">
                                <div class="col-md-5">
                                   <div class="form-group">
                                         <asp:TextBox CssClass="from-control" ID="nsal" runat="server" placeholder="Net Sal" Width="200px" ReadOnly="true"></asp:TextBox>
                                           
                                          
                                        </div>
                                       </div>
                                 <div class="col-md-3">
                                   <div class="form-group">
                                         <asp:Button Class="btn btn-primary"  Width="90px"  ID="Button2" runat="server"  Text="NETSAL" OnClick="Button2_Click"  />
                                </div>
                                </div>
                                 </div><br />
                            <div class="row">
                                 <div class="col">
                                    <div class="form-group">
                                        <asp:Button Class="btn btn-success"  Width="500px"  ID="Button1" runat="server"  Text="ADD Salary" OnClick="Button1_Click"  />
                                    </div>
                                </div>
                            </div><br />
                              <div class="row">
                                <div class="col">
                                    
                                    <div class="form-group">
                                        <asp:Button Class="btn btn-warning" Width="500px" ID="Button3" runat="server"  Text="Update" OnClick="Button3_Click" />
                                    </div> <div> </div>
                                        
                                </div>
                            </div><br />
                              <div class="row">
                                <div class="col">
                                  
                     

                                        <asp:Button Class="btn btn-danger" Width="500px" ID="Button4" runat="server"  Text="Delete" OnClick="Button4_Click"  />
                                    </div>
                                     
                                
                            </div>
                    </div><br />
                </div>
                     
          </div>
              
                           
           
        <br />
     <div class="col-md-7">
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

                <div class="row print-container">
                    <div class="col">
                        <center>
                            <h3>Salary List</h3>

                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
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
                   <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Salary_Management_tbl]"></asp:SqlDataSource>--%>
                    <div class="col">
                                       <div class="form-group">
                        <asp:GridView Class="table table-striped table-bordered print-container" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Employee_ID"  Height="445px" Width="668px">
                            <Columns>
                                <asp:BoundField DataField="Employee_ID" HeaderText="EID" ReadOnly="True" SortExpression="Employee_ID" />
                                <asp:BoundField DataField="Employee_Name" HeaderText="EName" SortExpression="Employee_Name" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Complain" HeaderText="Complain" SortExpression="Complain" />
                                <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
                                <asp:BoundField DataField="Dearness_Allowance" HeaderText="DA" SortExpression="Dearness_Allowance" />
                                <asp:BoundField DataField="Entertainment_Allowance" HeaderText="EA" SortExpression="Entertainment_Allowance" />
                                <asp:BoundField DataField="Medical_Allowance" HeaderText="MA" SortExpression="Medical_Allowance" />
                                <asp:BoundField DataField="Net_Salary" HeaderText="NetSal" SortExpression="Net_Salary" />
                            </Columns>
                        </asp:GridView>
                                           <br /><br />
                                           <section>
                                <center>
                                    <button class="btn btn-success btn-block btn-lg col-10 buttonA" onclick="window.print();">Click here to print salary details</button>
                                </center>
                            </section>
</div>
                    </div>
                </div><br />
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
                            <asp:LinkButton  ID="C" runat="server" OnClick="C_Click"  >Update DepartmentSalary</asp:LinkButton>
                            &nbsp
                            <asp:LinkButton ID="D" runat="server" OnClick="D_Click"   >DepartmentSalary Management</asp:LinkButton>
                        </p>
                    </div>
                </div>
            </div>
           

        </footer>

</asp:Content>
