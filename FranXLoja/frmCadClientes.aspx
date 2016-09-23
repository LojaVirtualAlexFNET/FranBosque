<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="frmCadClientes.aspx.cs" Inherits="FranXLoja.frmCadClientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="server">
    <h1>Cadastro de Clientes</h1>

    <label class="radio-inline">
        <input type="radio" name="inlineRadioOptions" id="radioPF" value="option1" />
        Pessoa Física
    </label>
    <label class="radio-inline">
        <input type="radio" name="inlineRadioOptions" id="radioPJ" value="option1" />
        Pessoa Jurídica
    </label>
    <a class="btn btn-default" href="frmIdentificacao.aspx">Já Tenho Cadastro</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Vem" runat="server">
    <div class="row">
        <div class="col-lg-6">
            <div>
                <fieldset>
                    <legend class="text-info">Dados Pessoas</legend>
                    <div class="form-group">

                        <div class="col-xs-12">
                            <label class="control-label" for="nomePF">Nome Completo</label>
                            <input class="form-control" id="nomePF" type="text" value="" placeholder="Nome completo" />
                        </div>
                    </div>
                    <label class="control-label" for="nomePF">Telefone</label>
                    <div class="form-group">
                        <div class="col-xs-4">
                            <select class="form-control" id="selectTelefone">
                                <option>Residencial</option>
                                <option>Celular</option>
                            </select>
                        </div>
                        <div class="col-xs-2">
                            <input type="text" class="form-control" placeholder="DDD" />
                        </div>
                        <div class="col-xs-4">
                            <input type="text" class="form-control" placeholder="Número" />
                        </div>
                    </div>
                    <label class="control-label" for="nomePF">Data de Nascimento</label>
                    <div class="form-group">
                        <div class="col-xs-2">
                            <input type="text" class="form-control" placeholder="XX" />
                        </div>

                        <div class="col-xs-2">
                            <input type="text" class="form-control" placeholder="XX" />
                        </div>

                    </div>
                    <div class="form-group">
                        <div class="col-xs-12">
                            <label class="control-label" for="cpf">CPF</label>
                            <input class="form-control" id="cpf" type="text" value="" placeholder="xxx.xxx.xxx-xx" />
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
        <%---------------------------------------------------------------------------------------------%>
        <div class="col-lg-6">
            <div>
                <fieldset>
                    <legend class="text-info">Dados de acesso ao Sistema</legend>
                    <div class="form-group">

                        <div class="col-xs-12">
                            <label class="control-label" for="email">E-mail*</label>
                            <input class="form-control" id="email" type="text" value="" placeholder="e-mail@xxx.com.br" />
                        </div>
                        <br />

                        <div class="col-xs-12">
                            <label class="control-label" for="email">Confirmar E-mail*</label>
                            <input class="form-control" id="corfirmarEmail" type="text" value="" placeholder="e-mail@xxx.com.br" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-6">
                            <label class="control-label" for="senha">Senha</label>
                            <input class="form-control" id="senha" type="password" value="" placeholder=" * * * * * * * * " />
                        </div>
                        <div class="col-xs-9">
                            <label class="control-label" for="confSenha">Confirmar Senha</label>

                        </div>

                        <br />
                        <div class="form-group">
                            <div class="col-xs-6">
                                <input class="form-control" id="ConfirmarSenha" type="password" value="" placeholder=" * * * * * * * * " />
                            </div>
                            <br />
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <br />

    <div class="form-group">
        <div>
            <button type="reset" class="btn btn-default">Cancelar</button>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </div>
    </div>


</asp:Content>
