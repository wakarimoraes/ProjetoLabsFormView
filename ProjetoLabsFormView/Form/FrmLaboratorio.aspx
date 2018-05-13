<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="FrmLaboratorio.aspx.cs" Inherits="Form_FrmLaboratorio" %>

<asp:Content ID="BodyType" ContentPlaceHolderID="content" runat="server">

         <asp:Panel ID="pnlCadastrarLab" runat="server">
             <table>
                 <tr>
                     <td><asp:Label ID="lblNumeroLaboratorio" runat="server" Text="Numero do Laboratorio: "></asp:Label></td>
                     <td><asp:TextBox ID="txtNumeroLaboratorio" runat="server"></asp:TextBox></td>
                 </tr>
            <tr>
                <td><asp:Label ID="lblCapacidade" runat="server" Text="Capacidade: "></asp:Label></td>
                <td><asp:TextBox ID="txtCapacidade" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblProjetor" runat="server" Text="Projetor: "></asp:Label></td>
                <td><asp:RadioButton ID="rdSimPj" Text="Sim" runat="server" GroupName="Projetor"  /></td>
                <td><asp:RadioButton ID="rdNaoPj" Text="Não" runat="server" GroupName="Projetor"  /></td>
            </tr>
                 <tr>
                     <td> <asp:Label ID="lblArcondicionado" runat="server" Text="Ar Condicionado: "></asp:Label></td>
                     <td><asp:RadioButton ID="rdSimAr" Text="Sim" runat="server" GroupName="Arconde"  /></td>
                     <td><asp:RadioButton ID="rdNaoAr" Text="Não" runat="server" GroupName="Arconde"  /></td>
                 </tr>
            <tr>
                <td><asp:Button ID="btnCadastrarLab" runat="server" Text="Cadastrar" /></td>
                <td><asp:Button ID="btnLimpar" runat="server" Text="Limpar" /></td>
            </tr>         
                 </table>
        </asp:Panel>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Laboratorio" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id_Laboratorio" HeaderText="id_Laboratorio" InsertVisible="False" ReadOnly="True" SortExpression="id_Laboratorio" />
            <asp:BoundField DataField="lb_Numero" HeaderText="lb_Numero" SortExpression="lb_Numero" />
            <asp:BoundField DataField="lb_Capacidade" HeaderText="lb_Capacidade" SortExpression="lb_Capacidade" />
        </Columns>
                </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabsControl1ConnectionString %>" SelectCommand="SELECT [id_Laboratorio], [lb_Numero], [lb_Capacidade] FROM [tb_Laboratorio]"></asp:SqlDataSource>

</asp:Content>