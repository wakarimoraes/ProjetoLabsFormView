<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="FrmComputador.aspx.cs" Inherits="Form_FrmComputador" %>


<asp:Content ID="BodyType" ContentPlaceHolderId="content" runat="server">
   
                        <asp:Button ID="BtnNovoComputador" runat="server" Text="Novo Computador" OnClick="BtnNovoComputador_Click"/>
                        
                <asp:Panel ID="pnlCadastrarLab" runat="server">        
                <table>      
                    <tr>
                        <td><asp:Label ID="Label4" runat="server" Text="Número de Série:  "></asp:Label></td>
                        <td><asp:TextBox ID="txtNumSerie" runat="server"></asp:TextBox></td>
                    </tr>                    
                    <tr>
                        <td><asp:Label ID="Label0" runat="server" Text="Memória Ram:  "></asp:Label></td>
                        <td><asp:TextBox ID="txtMemRam" runat="server"></asp:TextBox></td>
                    </tr>                    
                    <tr>
                        <td><asp:Label ID="Label1" runat="server" Text="Processador:  "></asp:Label></td>
                        <td><asp:TextBox ID="txtProcessador" runat="server"></asp:TextBox></td>
                    </tr>                    
                    <tr>
                        <td><asp:Label ID="Label2" runat="server" Text="Placa Mãe:  "></asp:Label></td>
                        <td><asp:TextBox ID="txtPlacaMae" runat="server"></asp:TextBox></td>
                    </tr>                    
                    <tr>
                        <td><asp:Label ID="Label3" runat="server" Text="Status:  "></asp:Label></td>
                        <td><asp:DropDownList ID="dplStatusPc"  runat="server">
                    <asp:ListItem Text="Bom"  Value="Bom"></asp:ListItem>
                    <asp:ListItem Text="Precisa de Manutenção"  Value="Precisa de Manutenção"></asp:ListItem>
                </asp:DropDownList></td>
                    </tr>                    
                    <tr>
                        <td><asp:Label ID="Label5" runat="server" Text="Laboratório:  "></asp:Label></td>
                        <td><asp:DropDownList ID="dplLaboratorios" runat="server"></asp:DropDownList></td>
                    </tr>                    
                    <tr>
                        <td><asp:Button ID="btnCadastrarPc" runat="server" Text="Cadastrar" OnClick="btnCadastrarPc_Click"/><asp:Button ID="BtnEditar" runat="server" Text="Editar" OnClick="BtnEditar_Click" /></td>
                        <td><asp:Button ID="btnLimpar" runat="server" Text="Limpar" /></td>
                    </tr>            
            </table>
        </asp:Panel>
    <br />
    <asp:Panel ID="Panel2" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Computador" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            <asp:BoundField DataField="id_Computador" HeaderText="id_Computador" InsertVisible="False" ReadOnly="True" SortExpression="id_Computador" />
            <asp:BoundField DataField="nm_Computador" HeaderText="nm_Computador" SortExpression="nm_Computador" />
            <asp:BoundField DataField="mRam_Computador" HeaderText="mRam_Computador" SortExpression="mRam_Computador" />
            <asp:BoundField DataField="plMae_Computador" HeaderText="plMae_Computador" SortExpression="plMae_Computador" />
            <asp:BoundField DataField="processador_Computador" HeaderText="processador_Computador" SortExpression="processador_Computador" />
            <asp:BoundField DataField="st_Computador" HeaderText="st_Computador" SortExpression="st_Computador" />
            <asp:BoundField DataField="lb_Numero" HeaderText="Laboratório" SortExpression="lb_Numero" />
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
        </Columns>

        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabsControl1ConnectionString %>" 
    SelectCommand="SELECT        dbo.tb_Computador.id_Computador, dbo.tb_Computador.nm_Computador, dbo.tb_Computador.mRam_Computador, dbo.tb_Computador.plMae_Computador, dbo.tb_Computador.processador_Computador, 
                         dbo.tb_Computador.st_Computador, dbo.tb_Laboratorio.lb_Numero
FROM            dbo.tb_Computador INNER JOIN
                         dbo.tb_Laboratorio ON dbo.tb_Computador.id_Laboratorio = dbo.tb_Laboratorio.id_Laboratorio" 
    DeleteCommand="DELETE FROM tb_Computador WHERE (id_Computador = @id_Computador)">
    <DeleteParameters>
        <asp:Parameter Name="id_Computador" />
    </DeleteParameters>
        </asp:SqlDataSource>
    <br />
    </asp:Panel>
 </asp:Content>