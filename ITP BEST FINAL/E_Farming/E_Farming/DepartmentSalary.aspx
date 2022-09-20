<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DepartmentSalary.aspx.cs" Inherits="E_Farming.WebForm44" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="container-fluid">
            <div class="row">
                <div class="col-md-5 mx-auto">

                    <br /><br />
                    
                    <div class="card">
                        <div class="card-body">
                              <div class="row">
                            <div class="col">
                                <center>
                                    <img  src="photos/memberlogin.jpg" />

                                </center>
                            </div>
                        </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Department Salary</h3>
                                    </center>
                                </div>
                            </div>

                             <div class="row">
                            <div class="col">
                                <hr><br />
                            </div>
                        </div>
                          
                            <div class="row">
                               <div class="col">
                                   
                                  <label>Code No</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="from-control" Width="250px" ID="TextBox11" runat="server" placeholder="Code No"></asp:TextBox>
                                     
                                    </div>
                                      
                                </div>
                                </div>
                             
                            <div class="row">
                                <div class="col">
                                  <lable>Department</lable>
                                    <div class="form-group">
                                        <asp:DropDownList Class="from-control" ID="DropDownList1" runat="server" placeholder="department" Height="33px" Width="250px">

                                            <asp:ListItem Text="Select" Value="select" />
                                             <asp:ListItem Text="Stock" Value="stock" />
                                             <asp:ListItem Text="Itemt" Value="item" />
                                             <asp:ListItem Text="Delivery" Value="delivery" />
                                             <asp:ListItem Text="Payment" Value="payment" />
                                             </asp:DropDownList>

                                      </div>  
                                 </div>
                                     </div>
                            <div class="row">
                                      <div class="col">
                                  <lable>Designation</lable>
                                    <div class="form-group">
                                        <asp:DropDownList  Class="from-control"  ID ="DropDownList2" runat="server" placeholder="designation" Height="33px" Width="250px">

                                            <asp:ListItem Text="Select" Value="select" />
                                             <asp:ListItem Text="Manager" Value="manager" />
                                             <asp:ListItem Text="Accountant" Value="Accountant" />
                                             <asp:ListItem Text="staff member" Value="staff member" />
                                            

                                        </asp:DropDownList>

                                      </div>  
                                 </div>
                                
                            </div>
                                
                             <div class="row">
                              <div class="col">
                                  <label>Basic Salary</label>
                                    <div class="form-group">
                                        <asp:TextBox  CssClass="from-control" Width="250px" ID="TextBox12" runat="server" placeholder="basic salary" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                </div>
                            <br />
                           <br />
                             <div class="row">
                               
                                <div class="col">
                                   
                                     <asp:Button Class="btn btn-lg btn-block btn-success" ID="Button1" runat="server"  Text="ADD " OnClick="Button1_Click"/>
                                   
                                    </div>
                             
                             </div>
                              
                            </div>
                        <br /><br />
                      

                </div>
                     <br /><br />
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
                            <asp:LinkButton ID="A" runat="server" OnClick="A_Click"  >Profile Management</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton  ID="B" runat="server" OnClick="B_Click"   >Salary Calculation</asp:LinkButton>
                            &nbsp;
                            <asp:LinkButton  ID="C" runat="server" OnClick="C_Click"   >Update DepartmentSalary</asp:LinkButton>
                            &nbsp
                            <asp:LinkButton ID="D" runat="server" OnClick="D_Click"    >DepartmentSalary Management</asp:LinkButton>
                        </p>
                    </div>
                </div>
            </div>
            

        </footer>
</asp:Content>
