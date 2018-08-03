<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Curso.aspx.cs" Inherits="SchoolSystem.Curso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">


    <asp:Panel runat="server" ID="pnlShowData" Visible="true">
        <h1>Todas os Cursos Cadastrados</h1>
        <asp:GridView ID="gwCursos" runat="server" AutoGenerateColumns="False" EmptyDataText="Não Existem Cursos Cadastrados...">
            <Columns>
                <asp:BoundField DataField="idCurso" HeaderText="Código" />
                <asp:BoundField DataField="Nomec" HeaderText="Nome" />
                <asp:BoundField DataField="descricao" HeaderText="Descrição" />
                <asp:BoundField DataField="dataCadastro" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Data de Cadastro" />
                <asp:HyperLinkField DataNavigateUrlFormatString="Curso_Edit.aspx?id={0}" Text="Editar" DataNavigateUrlFields="idCurso" />
                <asp:HyperLinkField DataNavigateUrlFormatString="Curso_Excluir.aspx?id={0}" Text="Excluir" DataNavigateUrlFields="idCurso" />

            </Columns>
        </asp:GridView>
    </asp:Panel>

    <asp:Panel runat="server" ID="pnlSearch" Visible="true">
        <h1>Pesquisa de Curso(s)</h1>
        <fieldset>
            <legend>Opções de Pesquisa</legend>
            <asp:RadioButtonList ID="rlbTypeSearch" CssClass="rlbTypeSearch" runat="server" RepeatLayout="UnorderedList">
                <asp:ListItem Value="ID" Selected="True">Código</asp:ListItem>
                <asp:ListItem Value="Nomec">Nome</asp:ListItem>
                <asp:ListItem Value="Descricao">Descrição</asp:ListItem>
            </asp:RadioButtonList>
        </fieldset>
        <ul>
            <li>
                <asp:Label Text="Código" ID="label7" runat="server"></asp:Label>
                <asp:TextBox ID="tbPesqID" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label Text="Nome" ID="label9" runat="server"></asp:Label>
                <asp:TextBox ID="tbPesqNome" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label10" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="tbPesqDescricao" CssClass="radiusInput" runat="server"></asp:TextBox>
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
