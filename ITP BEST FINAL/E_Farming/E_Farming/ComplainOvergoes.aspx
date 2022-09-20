<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ComplainOvergoes.aspx.cs" Inherits="E_Farming.WebForm51" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <center>
     <img src="photos/comments.png"  width="400" height="200"/>
    
    <h2>Complain Overgoes Management</h2><br><br />

     <br />
         <table border="1" style="width: 800%; " height="50%">
             
     <tr>
        <th style="text-align:center">Employee Name</th>
        <th style="text-align:center">Number of Complain</th>
    </tr>
              
    <tr>
        <td class="auto-style1"><center><asp:TextBox ID="TextBoxF" Width="50%" Height="50%" runat="server"></asp:TextBox></center></td>
        <td class="auto-style1"><center><asp:TextBox ID="TextBoxN" Width="50%" Height="50%" runat="server"></asp:TextBox></center></td>
   
    </tr>
             
</table> <br>


<br><br>
       
        <asp:TextBox ID="w3review" placeholder="Complaint" Width="50%" Height="50%" TextMode="MultiLine" runat="server"></asp:TextBox>
        <br><br><br>

    <br><br>
        <asp:Button class="btn btn-success col-2 shadow" Width="200px" ID="Button1" runat="server" Text="Send Details" OnClick="Button1_Click" /><br /><br />
    <center><asp:Button CssClass="btn btn-success" ID="Button2" Width="200px" runat="server" Text="Go To FeedBacks" OnClick="Button2_Click"/></center>

</center><br /><br />

</asp:Content>
