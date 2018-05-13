<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="FrmOcorrencia.aspx.cs" Inherits="Form_FrmOcorrencia" %>
<asp:Content ID="BodyType" runat="server" ContentPlaceHolderID="content">
    <asp:Panel ID="pnlCadastrarUsuario" runat="server">
            <table>
                <tr>
            <td><asp:Label ID="lblLabs" runat="server" Text="Laboratório: "></asp:Label></td>
            <td><asp:DropDownList ID="dplLabs" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
             <td><asp:Label ID="lblOcorrência" runat="server" Text="Ocorrência "></asp:Label></td>
              <td><textarea id="txtArea" cols="20" rows="5" draggable="false" runat="server"></textarea></td>
            </tr>
                <tr>
            <td><asp:Button ID="btnCadastrarUsuario" class="btn btn-lg btn-primary" runat="server" Text="Salvar" OnClick="btnCadastrarUsuario_Click"/></td>
            <td><asp:Button ID="btnLimpar" class="btn btn-lg btn-primary" runat="server" Text="Limpar" /></td>
                    </tr>
           </table> 
        </asp:Panel>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_Ocorrencia" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id_Ocorrencia" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="id_Ocorrencia" />
                <asp:BoundField DataField="oc_descricao" HeaderText="Descrição" SortExpression="oc_descricao" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabsControl1ConnectionString %>" DeleteCommand="DELETE FROM [tb_Ocorrencia] WHERE [id_Ocorrencia] = @id_Ocorrencia" InsertCommand="INSERT INTO [tb_Ocorrencia] ([oc_descricao]) VALUES (@oc_descricao)" SelectCommand="SELECT [id_Ocorrencia], [oc_descricao] FROM [tb_Ocorrencia]" UpdateCommand="UPDATE [tb_Ocorrencia] SET [oc_descricao] = @oc_descricao WHERE [id_Ocorrencia] = @id_Ocorrencia">
            <DeleteParameters>
                <asp:Parameter Name="id_Ocorrencia" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="oc_descricao" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="oc_descricao" Type="String" />
                <asp:Parameter Name="id_Ocorrencia" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </asp:Panel>
            </asp:content>