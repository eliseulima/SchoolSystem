<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Matriculas_Edit.aspx.cs" Inherits="SchoolSystem.Matriculas_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlEdit" Visible="true">
        <h1>Alteração de Matrículas</h1>
            <ul>
            <li>
                <asp:Label ID="Label6" runat="server" Text="Cód. Matrícula"></asp:Label>
                <asp:TextBox ID="tbCodigo" Text="2013" Enabled="false" CssClass="radiusInput disable" runat="server"></asp:TextBox>
            </li>
            </ul>    
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
                <asp:LinqDataSource ID="LinqDataSource3" runat="server" ContextTypeName="Model.ModelDataContext" EntityTypeName="" OrderBy="Nome" Select="new (Nome, idAluno)" TableName="Aluno" OnSelecting="LinqDataSource3_Selecting">
                </asp:LinqDataSource>
            </li>
            </ul>
            <ul>
            <li>
                <asp:Button ID="btnAtualizar" CssClass="btnEdit btn" runat="server" Text="Editar" OnClick="btnAtualizar_Click" Height="51px" Width="143px" />
                
            </li>
            </ul>
        
    </asp:Panel>
</asp:Content>
