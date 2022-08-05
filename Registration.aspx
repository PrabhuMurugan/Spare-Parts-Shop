<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Spare_Parts_Shop.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align: center">SPARE PARTS SHOP</h1>
            <h2>REGISTER YOUR ACCOUNT</h2>
   <table style="border:0px solid">
       <tr> <td>Full Name </td>
            <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Your Full Name"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
       </tr> 

       <tr> <td>Address </td>
            <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Your Address"></asp:RequiredFieldValidator>
                <br />
                <br />
           </td>
       </tr> 

       <tr> <td>Email ID  </td>
            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Your Email ID"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter a Valid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
       </tr>

       <tr> <td>Password </td>
            <td><asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Your Password"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
       </tr>
       
       <tr>
           <td>
               <asp:Button ID="btnregsitration" runat="server" Text="Submit" OnClick="btnregsitration_Click" Height="40px" />  &nbsp;&nbsp;&nbsp;  </td>
           <td>
               <asp:Button ID="Button2" runat="server"  CausesValidation="False" Text="Login" OnClick="Button2_Click" /></td>

           <br />
           <br />
           <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>

            
       </tr>

       <tr>
           <td>
               &nbsp;</td>
           <td>
               &nbsp;</td>
       </tr>

       <tr>
           <td>
               &nbsp;</td>
           <td>
               &nbsp;</td>
       </tr>

   </table>
   </div>
    </form>
</body>
</html>
