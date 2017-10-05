<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="Comp229_Assign02.survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Survey page    </h1>
    <asp:Label runat="server" Text="Username"/>
    <asp:TextBox ID="UsernameTxtBox" runat="server" TextMode="SingleLine" />
    <asp:RequiredFieldValidator ID="UserTxtBox_RequiredFieldValidator1" Display="Dynamic" runat="server" ControlToValidate="UsernameTxtBox" ErrorMessage="User name is Required" />
   <br />
    <asp:Label runat="server" Text="Age"></asp:Label>
    <asp:TextBox ID="txtForAge" runat="server" TextMode="SingleLine"/>
    <asp:RangeValidator ID="AgeRangValidation" runat="server" ControlToValidate="txtForAge" ErrorMessage="You must 19 year of age" MaximumValue="100" MinimumValue="19" Type="Integer"></asp:RangeValidator>
    <asp:RequiredFieldValidator ID="AgeRequired" runat="server" ControlToValidate="txtForAge" ErrorMessage="Age field is required" type="Integer"></asp:RequiredFieldValidator>
     <br /> <asp:Label runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="EmailTxt" runat="server" TextMode="SingleLine"/>
    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ErrorMessage="Email is required" ControlToValidate="EmailTxt"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="EamilRegValidation" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Email format does not matched" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
     <asp:Button ID="Submitt" runat="server" OnClick="Submitt_Click"/>
</asp:Content>
