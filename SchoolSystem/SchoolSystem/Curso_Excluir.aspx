<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Curso_Excluir.aspx.cs" Inherits="SchoolSystem.Curso_Excluir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlDelete" Visible="true">
        <h1>Exclusão de Cursos</h1>
        <ul>
            <li>
                <asp:Label Text="Código" ID="label8" runat="server"></asp:Label>
                <asp:TextBox ID="tbCodigo" Enabled="false" Text="" CssClass="disable radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label Text="Nome" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="tbNome" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label2" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="tbDescricao" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            
            <li>
                <asp:Label ID="Label3" runat="server" Text="Data de Cadastro"></asp:Label>
                <asp:TextBox ID="tbDataCadastro" Text="07/07/2013" Enabled="false" CssClass="radiusInput disable" runat="server"></asp:TextBox>
            </li>

            <li>
                <asp:Button ID="btnExcluir" CssClass="btnDelete btn" runat="server" OnClick="btnExcluir_Click" Text="Excluir" />
            </li>
        </ul>
    </asp:Panel>
</asp:Content>
