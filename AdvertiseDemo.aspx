<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdvertiseDemo.aspx.cs" Inherits="Lecture1.AdvertiseDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/adverDemo.xml" Height="300px" OnAdCreated="AdRotator1_AdCreated" Width="600px" />
        </div>
    </form>
</body>
</html>
