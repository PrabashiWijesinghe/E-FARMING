<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PaymentManage.aspx.cs" Inherits="E_Farming.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class ="container">
        <div class ="row">
            <div class ="col-12 shadow">
            <center>
                <h2>
                    Payment Management
                    <img src="photos/paymange.png" /> <!--photos-->
                </h2>
            </center>
             </div>
         </div>
        <hr />

        <div class ="card">
            <div class ="card-body shadow">
               <div class ="row">
                     <div class ="col-md-4">
                         <div class ="card">
            <div class ="card-body">
                <center>
                        <h3>Customer Payment Details</h3>
                        <img width="220px"  src="photos/details.png" />
                </center>
                 <center>
                         <asp:Button Class="btn btn-success col-2" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                </center>
                      </div></div></div>

                   <div class ="col-md-4">
                                  <div class ="card">
            <div class ="card-body">
                        
                <center>
                    <h3>Salary Payments</h3>
                <img width="200px" src="photos/salary.png" />
                </center>
                <center>
                         <asp:Button Class="btn btn-success col-2" ID="Button2" runat="server" Text="Go" OnClick="Button2_Click" />
                </center>
                      </div></div></div>

                   <div class ="col-md-4">
                                 <div class ="card">
            <div class ="card-body">
                <center>
                        <h3>Payments for Farmers</h3>
                        <img width="137px" src="photos/Fpay.jpg" />
                 </center>
                <center>
                         <asp:Button  Class="btn btn-success col-2"  ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" />
                     </center>
                      </div></div></div>

                   </div>
               </div>
            </div><br />
        </div>



    <br />
    <br />
</asp:Content>
