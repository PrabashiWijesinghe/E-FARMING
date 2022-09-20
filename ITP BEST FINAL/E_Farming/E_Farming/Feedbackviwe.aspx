<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Feedbackviwe.aspx.cs" Inherits="E_Farming.WebForm54" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <center>
    <asp:GridView class="table table-striped table-bordered print-container" ID="GridView1" runat="server" AutoGenerateColumns="False">
<Columns>
<asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID"></asp:BoundField>
<asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />





</Columns>
</asp:GridView></center><br /><br />
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [comment]"></asp:SqlDataSource>--%>
    <center><asp:TextBox CssClass="col-4 shadow" ID="Dell" runat="server" placeholder="Enter UseID"></asp:TextBox></center>
    <br /><center>
    <asp:Button CssClass="btn btn-outline-danger" Width="200px" ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" /></center>
    <br />
    <center><asp:Button CssClass="btn btn-success" Width="200px" ID="Button2" runat="server" Text="Go To Ovegoes" OnClick="Button2_Click"/></center>
    <br />
    <section>
                                <center>
                                    <button class="btn btn-success btn-block btn-lg col-4 buttonA" onclick="window.print();">Click here to print complaints list</button>
                                </center>
                            </section>
                            <br><br /><br /><br />
</asp:Content>
