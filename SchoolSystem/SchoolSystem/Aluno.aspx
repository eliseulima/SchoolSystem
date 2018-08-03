<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Aluno.aspx.cs" Inherits="SchoolSystem.Aluno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlShowData" Visible="true">
        <h1>Todos os Alunos Cadastrados</h1>
        <asp:GridView ID="gwAluno" AutoGenerateColumns="False" runat="server" EmptyDataText="Não Existem Alunos Cadastrados...">
            <Columns>
                <asp:BoundField DataField="idAluno" HeaderText="Código" />
                <asp:BoundField DataField="nome" HeaderText="Nome" />
                <asp:BoundField DataField="endereco" HeaderText="Endereço" />
                <asp:BoundField DataField="cep" HeaderText="CEP" />
                <asp:BoundField DataField="telefone" HeaderText="Telefone" />
                <asp:BoundField DataField="celular" HeaderText="Celular" />
                <asp:BoundField DataField="dataNascimento" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt Nasc" />
                <asp:BoundField DataField="dataCadastro" DataFormatString="{0:dd/MM/yyyy}" HeaderText="dt Cadastro" />
                <asp:HyperLinkField DataNavigateUrlFields="idAluno" DataNavigateUrlFormatString="Aluno_Edit.aspx?id={0}" Text="Editar" />
                <asp:HyperLinkField DataNavigateUrlFields="idAluno" DataNavigateUrlFormatString="Aluno_Delete.aspx?id={0}" Text="Excluir" />
            </Columns>
        </asp:GridView>
    </asp:Panel>

    <asp:Panel runat="server" ID="pnlSearch" Visible="true">
        <h1>Pesquisa de Aluno(s)</h1>
        <fieldset>
            <legend>Opções de Pesquisa</legend>
            <asp:RadioButtonList ID="rlbTypeSearch" CssClass="rlbTypeSearch" runat="server" RepeatLayout="UnorderedList">
                <asp:ListItem Value="ID" Selected="True">Código</asp:ListItem>
                <asp:ListItem>Nome</asp:ListItem>
                <asp:ListItem Value="Descricao">Descrição</asp:ListItem>
            </asp:RadioButtonList>
        </fieldset>
        <ul>
            <li>
                <asp:Label Text="Código" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="tbPesqID" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label Text="Nome" ID="label9" runat="server"></asp:Label>
                <asp:TextBox ID="tbPesqNome" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label10" runat="server" Text="Endereço"></asp:Label>
                <asp:TextBox ID="tbPesqEndereco" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            
        </ul>
        <ul>
            <li>
                <asp:Button ID="btnSearch" CssClass="btn btnSearch" runat="server" Text="Pesquisar" Height="46px" Width="137px" OnClick="btnSearch_Click" />
            </li>
            <li>
               <asp:Button ID="btnLimpaPesq" CssClass="btn btnLimpaPesq" runat="server" Text="Limpar Pesquisa" Height="49px" Width="155px" OnClick="btnLimpaPesq_Click" />
            </li>
        </ul>
    </asp:Panel>

</asp:Content>
