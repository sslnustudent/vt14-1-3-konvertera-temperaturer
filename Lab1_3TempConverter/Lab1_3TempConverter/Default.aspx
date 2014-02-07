<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab1_3TempConverter.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Label CssClass="left" ID="Label1" runat="server" Text="Start Temperatur"></asp:Label>
        <asp:TextBox CssClass="left" ID="StartTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="leftE" ControlToValidate="StartTextBox" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Du har inte angivit något i startboxen" Display="None"></asp:RequiredFieldValidator>
        <asp:CompareValidator CssClass="leftE" ControlToValidate="StartTextBox" ID="CompareValidator1" runat="server" ErrorMessage="Ange ett nummer i startboxen" Type="Integer" Operator="DataTypeCheck" Display="None" ValueToCompare="StartTextBox"></asp:CompareValidator>
        <asp:Label CssClass="left" ID="Label2" runat="server" Text="Slut Temperatur"></asp:Label>
        <asp:TextBox CssClass="left" ID="EndTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="leftE" ControlToValidate="EndTextBox" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Du har inte angivit något i slutboxen" Display="None"></asp:RequiredFieldValidator>
        <asp:CompareValidator CssClass="leftE" ControlToValidate="EndTextBox" ID="CompareValidator3" runat="server" ErrorMessage="Ange ett nummer i slutboxen" Type="Integer" Operator="DataTypeCheck" Display="None"></asp:CompareValidator>
        <asp:CompareValidator CssClass="leftE" ControlToCompare="StartTextBox" ControlToValidate="EndTextBox" ID="CompareValidator4" runat="server" ErrorMessage="Ange ett högre nummer i slutboxen" Operator="GreaterThan" Type="Integer" Display="None"></asp:CompareValidator>
        <asp:Label CssClass="left" ID="Label3" runat="server" Text="Temperaturs Steg"></asp:Label>
        <asp:TextBox CssClass="left" ID="RateTextBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="leftE" ControlToValidate="RateTextBox" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Du har inte angivit något i stegboxen" Display="None"></asp:RequiredFieldValidator>
        <asp:CompareValidator CssClass="leftE" ControlToValidate="RateTextBox" ID="CompareValidator2" runat="server" ErrorMessage="Ange ett nummer i stegboxen" Type="Integer" Operator="DataTypeCheck" Display="None"></asp:CompareValidator>
        <asp:RangeValidator CssClass="leftE" ControlToValidate="RateTextBox" ID="RangeValidator2" runat="server" ErrorMessage="Ange ett tal mellan 1-100 i stegboxen" Display="None" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>

        
        <asp:Label CssClass="left" ID="Label4" runat="server" Text="Typ av konventering"></asp:Label>
        <asp:RadioButton CssClass="left" ID="CelciuisRadioButton" runat="server" Text="Celcius till fahrenheit" GroupName="check" Checked="True" />
        <asp:RadioButton CssClass="left" ID="FahrenheitRadioButton" runat="server" Text="Fahrenheit till celcius" GroupName="check" />

        <asp:Button CssClass="left" ID="OkButton" runat="server" Text="Konventera" OnClick="OkButton_Click" />
        <asp:ValidationSummary CssClass="leftE" ID="ValidationSummary1" runat="server" DisplayMode="List" HeaderText="Fel inträffade åtgärda följande fel:" />
    </div>
    <div>

        <asp:Table ID="TempTable" runat="server" Visible="false">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell ID="First">&deg;C</asp:TableHeaderCell>
                <asp:TableHeaderCell ID="Second">&deg;F</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>

    </div>
    </form>
</body>
</html>
