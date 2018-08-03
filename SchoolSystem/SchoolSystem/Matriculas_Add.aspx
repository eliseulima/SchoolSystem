<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Matriculas_Add.aspx.cs" Inherits="SchoolSystem.Matriculas_Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlCadastro" Visible="true">
        <h1>Cadastro de Matrículas</h1>
        
            <ul>
            <li>
                <asp:Label Text="Curso" ID="label1" runat="server"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LinqDataSource1" DataTextField="Nomec" DataValueField="idCurso" AutoPostBack="True">
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Model.ModelDataContext" EntityTypeName="" OrderBy="Nomec" Select="new (Nomec, idCurso)" TableName="Cursos">
                </asp:LinqDataSource>
            </li>
            </ul>
            <ul>
            <li>
                <asp:Label Text="Matéria" ID="label2" runat="server"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="LinqDataSource2" DataTextField="Nomem" DataValueField="idMateria" AutoPostBack="True">
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Model.ModelDataContext" EntityTypeName="" OrderBy="Nomem" Select="new (Nomem, idMateria)" TableName="Materia">
                </asp:LinqDataSource>
            </li>
            </ul>
            <ul>
            <li>
                <asp:Label Text="Aluno" ID="label4" runat="server"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="LinqDataSource3" DataTextField="Nome" DataValueField="idAluno" AutoPostBack="True">
                </asp:DropDownList>
                <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="Model.ModelDataContext" EntityTypeName="" OrderBy="Nome" Select="new (Nome, idAluno)" TableName="Aluno">
                </asp:LinqDataSource>
            </li>
            </ul>
            <ul>
            <li>
                <asp:Label ID="Label3" runat="server" Text="Data de Cadastro"></asp:Label>
                <asp:TextBox ID="tbDataCadastro" Text="07/07/2013" Enabled="false" CssClass="radiusInput disable" runat="server"></asp:TextBox>
            </li>
            </ul>
            <ul>
            <li>
                <asp:Button ID="btnCadastrar" CssClass="btnAdd btn" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" Height="51px" Width="143px" />
                
            </li>
            </ul>
        
    </asp:Panel>
</asp:Content>
