<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="FrmUsuario.aspx.cs" Inherits="Usuario" %>

<asp:Content ID="BodyType" ContentPlaceHolderID="content" runat="server">
    <asp:Panel ID="pnlCadastrarUsuario" runat="server">
            <table>
                <tr>
            <td><asp:Label ID="lblNome" runat="server" Text="Usuário: "></asp:Label></td>
            <td><asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
             <td><asp:Label ID="txtSenha" runat="server" Text="Senha"></asp:Label></td>
             <td><asp:TextBox ID="txtPass" runat="server" TextMode="Password" ></asp:TextBox></td>
            </tr>
                <tr>
            <td><asp:Button ID="btnCadastrarUsuario" class="btn btn-lg btn-primary" runat="server" Text="Salvar"/></td>
            <td><asp:Button ID="btnLimpar" class="btn btn-lg btn-primary" runat="server" Text="Limpar" /></td>
                    </tr>
           </table> 
        </asp:Panel>

    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Usuario" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id_Usuario" HeaderText="id_Usuario" InsertVisible="False" ReadOnly="True" SortExpression="id_Usuario" />
                <asp:BoundField DataField="u_tipo" HeaderText="u_tipo" SortExpression="u_tipo" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabsControl1ConnectionString %>" SelectCommand="SELECT [id_Usuario], [u_tipo] FROM [tb_Usuario]"></asp:SqlDataSource>
    </asp:Panel>
</asp:Content>