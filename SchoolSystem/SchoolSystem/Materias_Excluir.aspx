<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Materias_Excluir.aspx.cs" Inherits="SchoolSystem.Materias_Excluir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlExcluir" Visible="true">
        <h1>Excluir Matéria</h1>
        <ul>
            <li>
                <asp:Label Text="Código" ID="label3" runat="server"></asp:Label>
                <asp:TextBox ID="tbCodigo" Enabled="false" Text="" CssClass="disable radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label Text="Nome" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="tbNome" Enabled="false" Text="" CssClass="disable radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label2" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="tbDescricao" Enabled="false" CssClass="disable radiusInput" runat="server"></asp:TextBox>
            </li>           
        </ul>
        <ul>
             <li>
                <asp:Button ID="btnExcluir" CssClass="btnDelete btn" runat="server" Text="Excluir" OnClick="btnExcluir_Click" Height="51px" Width="141px" />
            </li>
        </ul>
    </asp:Panel>

</asp:Content>
