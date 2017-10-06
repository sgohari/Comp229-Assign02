<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="Comp229_Assign02.survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/SurveyStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="SurvyPage">
      <h1>this is the survey page</h1>
      <h2>We honour your trust and providing the best services.</h2>
      <p>This survey information will remain confidentials and will not be share with any third party unless otherwise authorized by you.</p>
    <fieldset>
    <legend>Fill the form</legend>
     <div><asp:Label runat="server" Text="First Name"/>
        <asp:TextBox ID="UsernameTxtBox" runat="server" TextMode="SingleLine" />
             <asp:RequiredFieldValidator ID="UserTxtBox_RequiredFieldValidator1" runat="server"
                  ControlToValidate="UsernameTxtBox" ErrorMessage="First name is Required" Display="Dynamic" />
        </div>
        <div>
            <asp:Label runat="server" Text="Last Name: "> </asp:Label>
            <asp:TextBox ID="lnametxt" runat="server" TextMode="SingleLine" />
            <asp:RequiredFieldValidator ID="lnameValidator" Display="Dynamic" runat="server" 
                ControlToValidate="lnametxt" ErrorMessage="Last name is required" />
     </div>
        <div>
            <asp:Label runat="server" Text="Gender" />
            <asp:DropDownList ID="ddlGender" runat="server">
                <asp:ListItem Text="Please chose a gender " Value=" "></asp:ListItem>
               <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                <asp:ListItem Text="Female" Value="F"></asp:ListItem>
            </asp:DropDownList>    
            <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ddlGender" 
                ErrorMessage="Please select a gender" />         
        </div>
        <div>
               <asp:Label runat="server" Text="Age"></asp:Label>
               <asp:TextBox ID="txtForAge" runat="server" TextMode="SingleLine"/>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtForAge"
                     ErrorMessage="You must 19 year of age" MaximumValue="150" MinimumValue="19"
                     Type="Integer" Display="Dynamic" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtForAge" ErrorMessage="Age field is required" type="Integer" />
        </div>
        <div>
                <asp:Label runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="EmailTxt" runat="server" TextMode="SingleLine"/>
                <asp:RegularExpressionValidator ID="EamilRegValidation" runat="server" 
                    ControlToValidate="EmailTxt" ErrorMessage="Email format does not matched" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" />
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server"
                     ErrorMessage="Email is required" ControlToValidate="EmailTxt"/>
            </div></fieldset>
        <div>
            
            <FIELDSET>
        <LEGEND><b>Q1.What is the model and year of your Hyundai?</b></LEGEND>
                <asp:Label runat="server" Text="Year"></asp:Label>
                <asp:TextBox ID="Yeartxt" runat="server" TextMode="SingleLine" />
                <asp:RequiredFieldValidator ID="rfvYear" runat="server"
                ControlToValidate="Yeartxt" ErrorMessage="Type the year of your Hyundai" Display="Dynamic" />
                <br />
                <asp:Label runat="server" Text="Model"></asp:Label>
                <asp:TextBox ID="Modeltxt" runat="server" TextMode="SingleLine" />
                   <asp:RequiredFieldValidator ID="rfvModel" runat="server"
                  ControlToValidate="Modeltxt" ErrorMessage="Insert the model" Display="Dynamic" />
        </FIELDSET>
        </div>
              <div>
            
            <FIELDSET>
        <LEGEND><b>Q1.What is the model and year of your Hyundai?</b></LEGEND>
                <asp:Label runat="server" Text="Year"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="SingleLine" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="Yeartxt" ErrorMessage="Type the year of your Hyundai" Display="Dynamic" />
                <br />
                <asp:Label runat="server" Text="Model"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="SingleLine" />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                  ControlToValidate="Modeltxt" ErrorMessage="Insert the model" Display="Dynamic" />
        </FIELDSET>
        </div>
            <div>
                <asp:Button ID="Submitt" runat="server" Text="Submit Info" OnClick="Submitt_Click"/>
            </div>
         
      
        </div>
</asp:Content>
