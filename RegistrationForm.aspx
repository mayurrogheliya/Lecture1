<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Lecture1.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            name: <asp:TextBox ID="name" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="fill the name" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Semester: <asp:TextBox ID="semester" runat="server"></asp:TextBox> <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="out of range (1-6)" ControlToValidate="semester" ForeColor="Red" MaximumValue="6" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <br />
            Branch: <asp:TextBox ID="branch" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="fill the branch" ControlToValidate="branch" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Email: <asp:TextBox ID="email" runat="server"></asp:TextBox> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid email" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            Password: <asp:TextBox ID="password" runat="server"></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="fill the password" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            Confirm Password: <asp:TextBox ID="cfmpsw" runat="server"></asp:TextBox> <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password doesn't match" ControlToCompare="password" ControlToValidate="cfmpsw" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="register_btn" runat="server" Text="Register" />
        </div>
    </form>
</body>
</html>
