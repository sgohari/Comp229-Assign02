<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="thanks.aspx.cs" Inherits="Comp229_Assign02.thanks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/thanksPageStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="images/1.png" />
      <div id="thanksPage">
          <h2>Your time is valued and we will improve our service to our customer with your feedbacks</h2>
    <asp:PlaceHolder ID="forThanksPage" runat="server">
        We want to appreciate  <%=Session["copyFirstName" ] %> <%=Session[" copyLastName"] %> your part taking in our survey.
    </asp:PlaceHolder>
        </div>
</asp:Content>
