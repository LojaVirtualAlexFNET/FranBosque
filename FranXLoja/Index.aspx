<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FranXLoja.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">

    <div class="panel-body">
        <div class="panel-group">
            <p id="Botoes">
                <a href="frmIdentificacao.aspx" class="btn btn-lg btn-default">Comprar</a>

                <a href="frmIdentificacao.aspx" class="btn btn-lg btn-primary">P</a>

                <a href="frmIdentificacao.aspx" class="btn btn-lg btn-success">S</a>

                <a href="frmIdentificacao.aspx" class="btn btn-lg btn-info">I</a>

                <a href="frmIdentificacao.aspx" type="button" class="btn btn-lg btn-warning">W</a>

                <a href="frmIdentificacao.aspx" class="btn btn-lg btn-danger">D</a>

            </p>
        </div>
    </div>
    <img data-src="holder.js/200x200" class="img-thumbnail" alt="200x200" src="img/cabelos.jpg " style="width: 600px; height: 400px;">
</asp:Content>
