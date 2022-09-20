<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FarmHome.aspx.cs" Inherits="E_Farming.WebForm40" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
        <div class="title">
            <div class="col_a">
                <h1a><b>Purchasing Lanka International<br> Online Store</b></h1a><br><br>
                <hr>
                <p1>A <b>healthy mind</b> resides in a <b>healthy body.</b> Hence, to attain a healthy mind <br>and a healthy body, we should <b>eat healthy food.</b></p1><br>
                <hr>
                <asp:Button ID="Button1" class="btn btn-lg btn-block col-4 buttonA" runat="server" Text="User Login" OnClick="Button1_Click" />
                <asp:Button ID="Button3" class="btn btn-lg btn-block col-4 buttonA" runat="server" Text="Farmer Login" OnClick="Button3_Click" />
                <asp:Button ID="Button2" class="btn btn-lg btn-block col-4 buttonA" runat="server" Text="Admin Login" OnClick="Button2_Click" />
                 <asp:Button ID="Button4" class="btn btn-lg btn-block col-4 buttonA" runat="server" Text="Member Login" OnClick="Button4_Click" />
            </div>
            <div class="col_a">
                <div class="cardHome card1 shadow"><br><br><br>
                    <h5a><b>Organic</b></h5a><br>
                    <p1a><i>Healthy food keeps fit and active.</i></p1a>
                </div>
                <div class="cardHome card2 shadow"><br><br><br>
                    <h5a><b>Harvest</b></h5a><br>
                    <p1a><i>Healthy food is full of various nutrients.</i></p1a>
                </div><br>
                <div class="cardHome card3 shadow"><br><br>
                    <h5a><b>Fresh</b></h5a><br>
                    <p1a><i>These nutrients provide us energy and alertness. Hence, we stay active.</i></p1a>
                </div>
                <div class="cardHome card4 shadow"><br><br>
                    <h5a><b>Healthy</b></h5a><br>
                    <p1a><i>Healthy food strengthens our immune system, and digestion.</i></p1a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
