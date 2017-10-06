<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="Comp229_Assign02.survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/SurveyStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div id="SurvyPage">

    <fieldset>
    <legend>Fill the form</legend>
     <div><asp:Label runat="server" Text="First Name"/>
        <asp:TextBox ID="UsernameTxtBox" runat="server" TextMode="SingleLine" />
             <asp:RequiredFieldValidator ID="UserTxtBox_RequiredFieldValidator1" runat="server" ControlToValidate="UsernameTxtBox" ErrorMessage="First name is Required" Display="Dynamic" />
        </div>
        <div>
            <asp:Label runat="server" Text="Last Name: "> </asp:Label>
            <asp:TextBox ID="lnametxt" runat="server" TextMode="SingleLine" />
            <asp:RequiredFieldValidator ID="lnameValidator" Display="Dynamic" runat="server" ControlToValidate="lnametxt" ErrorMessage="Last name is required" />
     </div>
        <div>
            <asp:Label runat="server" Text="Gender" />
            <asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem Text=" " Value="1"></asp:ListItem>
               <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                <asp:ListItem Text="Female" Value="F"></asp:ListItem>
            </asp:DropDownList>               
        </div>
        <div>
               <asp:Label runat="server" Text="Age"></asp:Label>
               <asp:TextBox ID="txtForAge" runat="server" TextMode="SingleLine"/>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtForAge" ErrorMessage="You must 19 year of age" MaximumValue="150" MinimumValue="19" Type="Integer" Display="Dynamic" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtForAge" ErrorMessage="Age field is required" type="Integer" />
        </div>
        <div>
                <asp:Label runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="EmailTxt" runat="server" TextMode="SingleLine"/>
                <asp:RegularExpressionValidator ID="EamilRegValidation" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Email format does not matched" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" />
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ErrorMessage="Email is required" ControlToValidate="EmailTxt"/>
               
            </div>
            <div>
                <asp:Button ID="Submitt" runat="server" Text="Submit Info" OnClick="Submitt_Click"/>
            </div>
         
      </fieldset>
        </div>
</asp:Content>
