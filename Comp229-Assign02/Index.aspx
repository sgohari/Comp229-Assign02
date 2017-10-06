<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Comp229_Assign02.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/IndexStyleSheet.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="images/HyundaiBanner.png" class="banner" />
    <div id="index">
        
        <h1>Welcome to Hyundai DealerShip</h1>
        <p class="Paragraph"> As a certified Hyundai delear, we offer the best deal in our models.<br />
            currently, we are survey for any issues with vehicle which is purchased, leased and finnaced from our delearship.<br />
            please <a href="survey.aspx">Click Here </a>&nbsp;to participate in the survey.
        </p>

    </div>
</asp:Content>
