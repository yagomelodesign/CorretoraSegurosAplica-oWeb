<%-- 
    Document   : CadastroApolice
    Created on : 26/09/2022, 09:44:17
    Author     : 12046386671
--%>
<%@include file="Menu.jsp" %>

<%@page import="modelo.Bonus"%>
<%@page import="modelo.DAOBonus"%>
<%@page import="modelo.Seguradora"%>
<%@page import="modelo.DAOSeguradora"%>
<%@page import="modelo.Segurado"%>
<%@page import="modelo.DAOSegurado"%>
<script>
    function enviar(par) {
        if (par == 'cadastrar') {

            if (document.cadastro.numeroApolice.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Número da Apólice';
            } else if (document.cadastro.dataEmissao.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Data Emissão';
            } else if (document.cadastro.inicioVig.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Início da Vigência';
            } else if (document.cadastro.finalVig.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Final da Vigência';
            } else if (document.cadastro.codCi.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Código CI';
            } else if (document.cadastro.idSegurado.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Segurado';
            } else if (document.cadastro.idSeguradora.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Seguradora';
            } else if (document.cadastro.idBonus.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Bônus';
            } else {
                document.cadastro.opcao.value = 'cadastrar';
                document.cadastro.action = 'CAEApolice.jsp';
                document.cadastro.submit();
            }
        } else if (par == 'cancelar') {
            document.cadastro.opcao.value = 'cadastrar';
            document.cadastro.numeroApolice.value = '';
            document.cadastro.dataEmissao.value = '';
            document.cadastro.inicioVig.value = '';
            document.cadastro.finalVig.value = '';
            document.cadastro.codCi.value = '';
            document.cadastro.idSegurado.value = '';
            document.cadastro.idSeguradora.value = '';
            document.cadastro.idBonus.value = '';
            document.cadastro.action = 'CadastroApolice.jsp';
            document.cadastro.submit();
            /// }
        } else if (par == 'alterar') {

          if (document.cadastro.numeroApolice.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Número da Apólice';
            } else if (document.cadastro.dataEmissao.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Data Emissão';
            } else if (document.cadastro.inicioVig.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Início da Vigência';
            } else if (document.cadastro.finalVig.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Final da Vigência';
            } else if (document.cadastro.codCi.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Código CI';
            } else if (document.cadastro.idSegurado.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Segurado';
            } else if (document.cadastro.idSeguradora.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Seguradora';
            } else if (document.cadastro.idBonus.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Bônus';
            } else {
                document.cadastro.opcao.value = 'alterar';
                document.cadastro.action = 'CAEApolice.jsp';
                document.cadastro.submit();
            }
        } else if (par == 'excluir') {
            document.cadastro.opcao.value = 'excluir';
            document.cadastro.action = 'CAEApolice.jsp';
            document.cadastro.submit();
        }
    }
</script>
<%
    String mensagem = request.getParameter("mensagem");
    String numeroApolice = request.getParameter("numeroApolice");
    String dataEmissao = request.getParameter("dataEmissao");
    String inicioVig = request.getParameter("inicioVig");
    String finalVig = request.getParameter("finalVig");
    String codCi = request.getParameter("codCi");
   
    
    String opcao = request.getParameter("opcao");
    if (opcao == null) {
        opcao = "cadastrar";
    }
    
    String idApolice = request.getParameter("idApolice");
    if (idApolice == null) {
        idApolice = "0";
    }
    
    String idSegurado = request.getParameter("idSegurado");
    if(idSegurado==null) idSegurado = "0"; 

    DAOSegurado daoSegurado = new DAOSegurado(); 
    List<Segurado> listaSegurado = daoSegurado.listarSegurado();
    
    String idSeguradora = request.getParameter("idSeguradora");
    if(idSeguradora==null) idSeguradora = "0"; 

    DAOSeguradora daoSeguradora = new DAOSeguradora(); 
    List<Seguradora> listaSeguradora = daoSeguradora.listarSeguradora();
    
    String idBonus = request.getParameter("idBonus");
    if(idBonus==null) idBonus = "0"; 

    DAOBonus daoBonus = new DAOBonus(); 
    List<Bonus> listaBonus = daoBonus.listarBonus();
%>

<%@page contentType="text/html" pageEncoding="Latin1"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=Latin1">
	<link rel="stylesheet" href="css/all.css" />
	<link rel="stylesheet" href="css/estilo.css" />
                <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

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

    <body class="container-fluid">

       
            <h1 class="titulo1">Cadastro Apolices</h1>

            <fieldset>
            <form class="forms" name="cadastro">
                <br>
                
                <div class="grupo row">
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Nº Apólice:</label>
                    <input class="caixas" type="text" name="numeroApolice" value="<%= (numeroApolice == null) ? "" : numeroApolice%>" size="30" /> 
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Emissão:</label>
                    <input class="caixas" type="text" name="dataEmissao" value="<%= (dataEmissao == null) ? "" : dataEmissao%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Início Vigência: </label>
                    <input class="caixas" type="text" name="inicioVig" value="<%= (inicioVig == null) ? "" : inicioVig%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Final Vigência: </label>
                    <input class="caixas" type="text" name="finalVig" value="<%= (finalVig == null) ? "" : finalVig%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Código CI:</label>
                    <input class="caixas" type="text" name="codCi" value="<%= (codCi == null) ? "" : codCi%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Segurado:</label>
                <select class="caixas-option" name="idSegurado">
                <%for (Segurado segurado:listaSegurado){%> 
                <%if(idSegurado.equals(String.valueOf(segurado.getIdSegurado()))) {%>
                    <option selected value="<%=segurado.getIdSegurado()%>"><%=segurado.getIdPessoa().getNomePessoa()%> </option>
                    <%}else{%>
                    <option value="<%=segurado.getIdSegurado()%>"><%=segurado.getIdPessoa().getNomePessoa()%> </option>
                    <%}%>
                    <%}%>
                </select>
                </div>
                
                <div class="campos col-lg-4 col-sm-6">
                <label class="titulos2">Seguradora:</label>
                <select class="caixas-option" name="idSeguradora">
                <%for (Seguradora seguradora:listaSeguradora){%> 
                <%if(idSeguradora.equals(String.valueOf(seguradora.getIdSeguradora()))) {%>
                    <option selected value="<%=seguradora.getIdSeguradora()%>"><%=seguradora.getNomeSeguradora()%> </option>
                    <%}else{%>
                    <option value="<%=seguradora.getIdSeguradora()%>"><%=seguradora.getNomeSeguradora()%> </option>
                    <%}%>
                    <%}%>
                </select>
                </div>
                
                <div class="campos col-lg-4 col-sm-6">
                 <label class="titulos2">Bônus:</label>
                <select class="caixas-option" name="idBonus">
                <%for (Bonus bonus:listaBonus){%> 
                <%if(idBonus.equals(String.valueOf(bonus.getIdBonus()))) {%>
                    <option selected value="<%=bonus.getIdBonus()%>"><%=bonus.getClasse()%> </option>
                    <%}else{%>
                    <option value="<%=bonus.getIdBonus()%>"><%=bonus.getClasse()%> </option>
                    <%}%>
                    <%}%>
                </select>
                </div>
                
                </div>

                
                
                
                    <p>
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
                <input type="hidden" name="idApolice" value ="<%= (idApolice == null) ? "" : idApolice%>" />
                <input type="hidden" name="opcao" value ="<%= (opcao == null) ? "" : opcao%>" />
                <br><br>
                <textarea class="mensagem" name="mensagem" rows="2" cols="65">
                    <%= (mensagem == null) ? "" : mensagem%>

                </textarea>
            </form>
            </fieldset>
            
                    
           
                <br>
            <%@include file="ListarApolice.jsp" %>
            
            <div class="navbar-brand">
                <span class="fa-solid fa-code"></span>
            </div>
    </body>

</html>

