<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Form_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Projeto Labs</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="align-content:center">
             <table>
                <tr>
            <td><asp:Label ID="lblNome" runat="server" Text="Nome: "></asp:Label></td>
            <td><asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
             <td><asp:Label ID="lblInterface" runat="server" Text="Interface"></asp:Label></td>
             <td><asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
                 <tr>
                     <td><asp:Button id="btnLogin" Text="Entrar" runat="server" OnClick="btnLogin_Click" /></td>
                 </tr>
                 </table>
        </div>
    </form>
</body>
</html>
