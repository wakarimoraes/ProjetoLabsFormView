<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="FrmSoftware.aspx.cs" Inherits="GridView_GrdSoftware" %>

    <asp:content ID="BodyType" ContentPlaceHolderID="content" runat="server">

        <br />
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar Novo Software" class="btn btn-lg btn-primary" OnClick="btnCadastrar_Click" />

        <asp:Panel ID="pnlCadastrarUsuario" runat="server">
            <div style="align-content:center">
            <table>
                <tr>
            <td><asp:Label ID="lblNome" runat="server" Text="Nome: "></asp:Label></td>
            <td><asp:TextBox ID="txtNome" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
             <td><asp:Label ID="lblInterface" runat="server" Text="Interface"></asp:Label></td>
             <td><asp:TextBox ID="txtInterface" runat="server" ></asp:TextBox></td>
            </tr>
                <tr>
             <td><asp:Label ID="lblDescricao" runat="server" Text="Descrição "></asp:Label></td>
             <td><asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox></td>
            </tr>
                <tr>
             <td><asp:Label ID="lblVersao" runat="server" Text="Versão: "></asp:Label></td>
             <td><asp:TextBox ID="txtVersao" runat="server" ></asp:TextBox></td>
            </tr>
                <tr>
            <td><asp:Button ID="btnCadastrarUsuario" class="btn btn-lg btn-primary" runat="server" Text="Salvar" OnClick="btnSalvarOnClick"/> <asp:Button ID="BtnEditar" runat="server" Text="Editar" class="btn btn-lg btn-primary" OnClick="btnEditarOnClick"/></td>
            <td><asp:Button ID="btnLimpar" class="btn btn-lg btn-primary" runat="server" Text="Limpar" /></td>
            <td></td>
                    </tr>
           </table> 
                </div>
        </asp:Panel>
        <br />
         <div >
             <asp:Panel ID="pnlListarSoftware" runat="server">
        <asp:GridView ID="GridSoftware" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Software" DataSourceID="SqlDataSource1" AllowPaging="True" GridLines="None" Height="254px" Width="728px" CellPadding="4" ForeColor="#333333" OnSelectedIndexChanged="GridSoftware_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                
                <asp:BoundField DataField="id_Software" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="id_Software" />
                <asp:BoundField DataField="sf_nome" HeaderText="Nome" SortExpression="sf_nome" />
                <asp:BoundField DataField="sf_interface" HeaderText="Interface" SortExpression="sf_interface" />
                <asp:BoundField DataField="sf_descricao" HeaderText="Descrição" SortExpression="sf_descricao" />
                <asp:BoundField DataField="sf_versao" HeaderText="Versão" SortExpression="sf_versao" />


                <asp:CommandField ShowDeleteButton="True" />


                <asp:CommandField ShowSelectButton="True" />


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
                 </asp:Panel>
          </div> 
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:LabsControl1ConnectionString %>" OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [tb_Software]" DeleteCommand="DELETE FROM [tb_Software] WHERE [id_Software] = @original_id_Software" InsertCommand="INSERT INTO [tb_Software] ([sf_nome], [sf_interface], [sf_descricao], [sf_versao]) VALUES (@sf_nome, @sf_interface, @sf_descricao, @sf_versao)" UpdateCommand="UPDATE [tb_Software] SET [sf_nome] = @sf_nome, [sf_interface] = @sf_interface, [sf_descricao] = @sf_descricao, [sf_versao] = @sf_versao WHERE [id_Software] = @original_id_Software">
            <DeleteParameters>
                <asp:Parameter Name="original_id_Software" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="sf_nome" Type="String" />
                <asp:Parameter Name="sf_interface" Type="String" />
                <asp:Parameter Name="sf_descricao" Type="String" />
                <asp:Parameter Name="sf_versao" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="sf_nome" Type="String" />
                <asp:Parameter Name="sf_interface" Type="String" />
                <asp:Parameter Name="sf_descricao" Type="String" />
                <asp:Parameter Name="sf_versao" Type="String" />
                <asp:Parameter Name="original_id_Software" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
         
    </asp:content>
