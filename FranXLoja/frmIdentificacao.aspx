<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="frmIdentificacao.aspx.cs" Inherits="FranXLoja.frmIdentificacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">
    <fieldset>
        <legend>Identificação</legend>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Vem" runat="server">
    <div class="form-group letter-spacing: 4px">
        <em>Acesse com seu e-mail:   </em>
        <a href="#" title="Esqueci meu e-mail" tabindex="5">Esqueci meu e-mail   </a>
        <a href="#" title="Meu e-mail mudou" tabindex="6">Meu e-mail mudou </a>
        <p>
            <label for="inputEmail" class="col-lg-2 control-label">Email</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" id="inputEmail" placeholder="Email">
            </div>
    </div>

    <div class="form-group">
        <h2>
            <label class="col-lg-2 control-label">Já Possui Cadastro?</label></h2>
        <div class="col-lg-10">
            <div class="radio">
                <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                    Sim
                </label>
            </div>

            <div class="radio">
                <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    Não, é minhã primeira vez.                           
                </label>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-lg-2 control-label">Password</label>
            <div class="col-lg-10">
                <input type="password" class="form-control" id="inputPassword" placeholder="Password">
            </div>
        </div>

    </div>

    <div class="form-group">
        <div class="col-lg-10 col-lg-offset-2">
            <a href="Index.aspx" type="reset" class="btn btn-default">Cancelar</a>
            <button type="submit" class="btn btn-primary">Continuar</button>
        </div>
    </div>
    </fieldset>
</asp:Content>
