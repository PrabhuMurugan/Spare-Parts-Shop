<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Spare_Parts_Shop.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <h1 style="text-align: center">SPARE PARTS SHOP</h1>
             <h2>LOGIN TO YOUR ACCOUNT</h2>
    <table style="border:0px solid">
        

        <tr> <td>Email ID  </td>
             <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
        </tr>

        <tr> <td>Password </td>
             <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>   </td>
        </tr>
        
        <tr>
           <td>
                <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" style="width: 47px" />  </td>            
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
        </tr>

    </table>
    </div>
    </form>
</body>
</html>
