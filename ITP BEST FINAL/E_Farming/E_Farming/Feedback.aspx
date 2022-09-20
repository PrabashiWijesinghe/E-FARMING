<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="E_Farming.WebForm52" %>
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
        </nav>

     <center>
     <img src="photos/comments.png"  width="400" height="200"/>
    
    <h2>Give Your Feedback Here...</h2><br>

         <p1><label>User ID:</label></p1><br />
<div class="form-group">
<asp:TextBox CssClass="form-control" ID="UID" BorderColor="#00ff99" runat="server" placeholder="User ID" Width="400px" Height="50px"/>
</div><br /><br />
         <p1><label>Feedback:</label></p1><br />
<div class="form-group">
<asp:TextBox CssClass="form-control" ID="Feed" BorderColor="#00ff99" runat="server" placeholder="If You have coplaints, please mention employee id" TextMode="MultiLine" Width="400px" Height="200px"/>
<br /></div>
         <br /><br />


          <asp:Button ID="Button2" class="btn buttonA col-2 shadow" runat="server" Text="Save" OnClick="Button2_Click"/>
         
</center>
     <a href="homepage aspx.aspx"><< Back to Home</a><br /><br />

</asp:Content>
