<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Lecture1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mayur Rogheliya</title>
    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }
        #Button1 {
            width: 184px;
        }
    </style>
</head>
<body>
    <p style="display:flex; justify-content:center; font-size:22px; background-color:crimson; padding:8px; color:white;">
        Calculator</p>

        <br />

        Enter Number:
        <input id="num1" type="number" /><br />
        <br />
        Enter Number: 
        <input id="num2" type="number" /><br />
        <br />
        <input id="Button1" onclick="add()" type="button" value="Add" />
    <label id="answer"></label>
    <script>
        const add = function () {
            const n1 = parseFloat(document.getElementById('num1').value);
            const n2 = parseFloat(document.getElementById('num2').value);
            const ans = document.getElementById('answer');

            ans.innerHTML = n1 + n2;

        }
    </script>
</body>
</html>
