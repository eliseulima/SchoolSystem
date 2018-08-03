<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Matriculas.aspx.cs" Inherits="SchoolSystem.Matriculas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlShowData" Visible="true">
        <h1>Todas as Matrículas Cadastradas</h1>
        <asp:GridView ID="gwMatriculas" runat="server" AutoGenerateColumns="False" EmptyDataText="Não Existem Cursos Cadastrados...">
            <Columns>
                <asp:BoundField DataField="idMatricula" HeaderText="Código" />
                <asp:BoundField DataField="Nomec" HeaderText="Curso" />
                <asp:BoundField DataField="Nomem" HeaderText="Matéria" />
                <asp:BoundField DataField="Nome" HeaderText="Aluno" />
                <asp:BoundField DataField="dataCadastro" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Data de Cadastro" />
                <asp:HyperLinkField DataNavigateUrlFormatString="Matriculas_Edit.aspx?id={0}" Text="Editar" DataNavigateUrlFields="idMatricula" />
                <asp:HyperLinkField DataNavigateUrlFormatString="Matriculas_Excluir.aspx?id={0}" Text="Excluir" DataNavigateUrlFields="idMatricula" />

            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
        </asp:LinqDataSource>
    </asp:Panel>

    <asp:Panel runat="server" ID="pnlSearch" Visible="true">
        <h1>Pesquisa de Matrícula(s)</h1>
        <fieldset>
            <legend>Opções de Pesquisa</legend>
            <asp:RadioButtonList ID="rlbTypeSearch" CssClass="rlbTypeSearch" runat="server" RepeatLayout="UnorderedList">
                <asp:ListItem Value="ID" Selected="True">Código</asp:ListItem>
                <asp:ListItem>Curso</asp:ListItem>
                <asp:ListItem>Matéria</asp:ListItem>
                <asp:ListItem>Aluno</asp:ListItem>
            </asp:RadioButtonList>
        </fieldset>
        <ul>
            <li>
                <asp:Label Text="Código" ID="label7" runat="server"></asp:Label>
                <asp:TextBox ID="tbPesqID" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label Text="Curso" ID="label9" runat="server"></asp:Label>
                <asp:TextBox ID="tbPesqCurso" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label10" runat="server" Text="Matéria"></asp:Label>
                <asp:TextBox ID="tbPesqMateria" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label1" runat="server" Text="Aluno"></asp:Label>
                <asp:TextBox ID="tbPesqAluno" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
        </ul>
        <ul>
            <li>
               <asp:Button ID="btnSearch" CssClass="btn btnSearch" runat="server" Text="Pesquisar" Height="49px" Width="142px" OnClick="btnSearch_Click" />
            </li>
            <li>
               <asp:Button ID="btnLimpaPesq" CssClass="btn btnLimpaPesq" runat="server" Text="Limpar Pesquisa" Height="49px" Width="155px" OnClick="btnLimpaPesq_Click" />
            </li>
        </ul>
    </asp:Panel>

</asp:Content>
