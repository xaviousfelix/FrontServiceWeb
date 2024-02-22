<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMISizeWeb.aspx.cs" Inherits="WebBMISize.BMISizeWeb" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>SIZE FOR YOU</title>
</head>
<style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image:url(https://images8.alphacoders.com/450/450867.jpg);
        }
        .card {
            width: 400px;
            height: 300px; 
            padding: 20px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color:#fff;
        }
        .form-group {
            margin-bottom: 15px;
            margin-right: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        #Button2 {
            text-align: center;
        }
        #Button2 {
            background-color: #FFEEF4;
            color: black;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        #Button2:hover {
            background-color: #FFF3DA;
        }
    .auto-style1 {
        width: 451px;
        height: 100%;
        padding: 20px;
        margin-right: 10px;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        background-color: #fff;
        text-align:center;
    }
    img{
        height: 200px;
        width: 200px;
        
    }
</style>
<body>
<form id="form1" runat="server">
<h1>What Your Size?</h1>
<div class = "auto-style1">
<div class ="form-group">
            WEIGHT : <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
<br />
<br />
            HEIGHT : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<br />
<br />
            AGE :&nbsp;
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<br />
            <br />
            Gender :
<br />



            <asp:DropDownList ID="genderDropdown" runat="server" OnSelectedIndexChanged="genderDropdown_SelectedIndexChanged">
            </asp:DropDownList>



            <br />

</div>
&nbsp;<asp:Label ID="Label1" runat="server" Text="YOUR SIZE IS :"></asp:Label>
    <br />
<br />
    <asp:Image ID="Image1" runat="server" />
<br />

   <center>
<img id="maleImage" src="male.jpg" alt="Male Image" style="display: none; " />
<img id="femaleImage" src="female.jpg" alt="Female Image" style="display: none; " />
   </center>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="SUBMIT" />
</div>


</form>
</body>
</html>
