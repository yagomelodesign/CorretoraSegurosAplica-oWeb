<%-- 
    Document   : CadastroSeguradoara
    Created on : 14/09/2022, 09:15:32
    Author     : 12046386671
--%>
<%@include file="Menu.jsp" %>

<script>
    function enviar(par) {
        if (par == 'cadastrar') {

            if (document.cadastro.nomeSeguradora.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Nome';
            } else if (document.cadastro.telefoneSeguradora.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Telefone';
            } else if (document.cadastro.siteSeguradora.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Site';
            } else if (document.cadastro.emailSeguradora.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Email';
            }else {
                document.cadastro.opcao.value = 'cadastrar';
                document.cadastro.action = 'CAESeguradora.jsp';
                document.cadastro.submit();
            }
        } else if (par == 'cancelar') {
            document.cadastro.opcao.value = 'cadastrar';
            document.cadastro.nomeSeguradora.value = '';
            document.cadastro.telefoneSeguradora.value = '';
            document.cadastro.siteSeguradora.value = '';
            document.cadastro.emailSeguradora.value = '';
            document.cadastro.action = 'CadastroSeguradora.jsp';
            document.cadastro.submit();
            /// }
        } else if (par == 'alterar') {

          if (document.cadastro.nomeSeguradora.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Nome';
            } else if (document.cadastro.telefoneSeguradora.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Telefone';
            } else if (document.cadastro.siteSeguradora.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Site';
            } else if (document.cadastro.emailSeguradora.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Email';
            } else {
                document.cadastro.opcao.value = 'alterar';
                document.cadastro.action = 'CAESeguradora.jsp';
                document.cadastro.submit();
            }
        } else if (par == 'excluir') {
            document.cadastro.opcao.value = 'excluir';
            document.cadastro.action = 'CAESeguradora.jsp';
            document.cadastro.submit();
        }
    }
</script>
<%
    String mensagem = request.getParameter("mensagem");
    String nomeSeguradora = request.getParameter("nomeSeguradora");
    String telefoneSeguradora = request.getParameter("telefoneSeguradora");
    String siteSeguradora = request.getParameter("siteSeguradora");
    String emailSeguradora = request.getParameter("emailSeguradora");
   
    
    String opcao = request.getParameter("opcao");
    if (opcao == null) {
        opcao = "cadastrar";
    }
    String idSeguradora = request.getParameter("idSeguradora");
    if (idSeguradora == null) {
        idSeguradora = "0";
    }
%>

<%@page contentType="text/html" pageEncoding="Latin1"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=Latin1">
	<link rel="stylesheet" href="css/all.css" />
	<link rel="stylesheet" href="css/estilo.css" />
        <link href="https://fonts.googleapis.com/css2?family=Hind+Madurai:wght@400;600&family=Raleway&display=swap" rel="stylesheet">

        <style>
        
        .container-fluid {
                background-color: #fff;
                padding: 20px 40px 20px;
                font-size: 1.25rem;
                text-align: center;
                font-family: 'Poppins';

            }
            .titulo1{
                font-weight: 500;
                border-top: solid 0.2rem #0f0f0f;
                color: #222222;
                padding-top: 2%;
                margin-top: 5rem;
            }
            .titulos2{
                color: #101010;
                font-size: 0.9rem;
            }
            fieldset{
                margin-bottom: 25px;
                border: 0px;
            }
            .botao{
                background-image: linear-gradient( to right, #111111, #404040 ); 
                color: #ffffff;
                padding: 10px 16px 10px;
                font-size: 1.1rem;
                border-radius: 5px;
                border: none;
                margin-top: 0.8%;
                box-shadow: 2px 2px 2px rgba(0,0,0,0.2);
                text-shadow: 1px 1px 1px rgba(0,0,0,0.5);
            }
           
            .mensagem{
                font-size: 0.8rem;
                border-radius: 2px;
                box-shadow: inset 0px 0px 2px rgba(0,0,0,0.1);
                border: solid 1px #b4b4b4;
                color: #000;
                width: 30rem;
                height: 4rem;
                padding: 3px 0px;
                margin-top: 2%;
                resize: none;
            }
             .caixas{
                font-size: 0.8rem;
                border-radius: 2px;
                box-shadow: inset 0px 0px 2px rgba(0,0,0,0.1);
                border: solid 1px #b4b4b4;
                color: #000;
                padding: 3px 0px;
            }
            .caixas-option{
                font-size: 0.8rem;
                border-radius: 2px;
                box-shadow: inset 0px 0px 2px rgba(0,0,0,0.1);
                border: solid 1px #b4b4b4;
                color: #000;
                align-items: flex-start;
                width: 15rem;
                padding: 3px 0px;
            }
            
            .grupo{
                padding-left: 25%;
                padding-right: 25%;
                display:flex;
            }
            .campos{
                padding-bottom: 3rem;
            }
            

        </style>

        <title>Corretora de Seguros</title>

    </head>

    <body class="container-fluid abc">

       
            <h1 class="titulo1">Cadastro Seguradoras</h1>

            <fieldset>
            <form class="forms" name="cadastro">
                <br>
                
                <div class="grupo row">
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Nome: </label>
                    <input class="caixas" type="text" name="nomeSeguradora" value="<%= (nomeSeguradora == null) ? "" : nomeSeguradora%>" size="30" /> 
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Telefone:</label>
                    <input class="caixas" type="text" name="telefoneSeguradora" value="<%= (telefoneSeguradora == null) ? "" : telefoneSeguradora%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Site: </label>
                    <input class="caixas" type="text" name="siteSeguradora" value="<%= (siteSeguradora == null) ? "" : siteSeguradora%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Email: </label>
                    <input class="caixas" type="text" name="emailSeguradora" value="<%= (emailSeguradora == null) ? "" : emailSeguradora%>" size="30" />
                    </div>
                    </div>
                    
                <%if (opcao.equals("cadastrar")) {%>
                <input class="botao" type="button" value="Cadastrar" name="Cadastrar" onclick="enviar('cadastrar')" />
                <% } %>
                <%if (opcao.equals("alterar")) {%>
                <input class="botao" type="button" value="Alterar" name="Alterar" onclick="enviar('alterar')" />
                <input class="botao" type="button" value="Cancelar" name="Cancelar" onclick="enviar('cancelar')" />
                <% } %>
                <%if (opcao.equals("excluir")) {%>
                <input class="botao" type="button" value="Excluir" name="Excluir" onclick="enviar('excluir')"/>
                <input class="botao" type="button" value="Cancelar" name="Cancelar" onclick="enviar('cancelar')" />

                <% }%>
                <input type="hidden" name="idSeguradora" value ="<%= (idSeguradora == null) ? "" : idSeguradora%>" />
                <input type="hidden" name="opcao" value ="<%= (opcao == null) ? "" : opcao%>" />
                <br><br>
                <textarea class="mensagem" name="mensagem" rows="2" cols="65">
                    <%= (mensagem == null) ? "" : mensagem%>

                </textarea>
            </form>
            </fieldset>
            
                    
           
                <br>
            <%@include file="ListarSeguradora.jsp" %>

            
            <div class="navbar-brand">
                <span class="fa-solid fa-code"></span>
            </div>
    </body>

</html>