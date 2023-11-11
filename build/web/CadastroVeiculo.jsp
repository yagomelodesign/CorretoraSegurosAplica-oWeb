<%-- 
    Document   : CadastroVeiculo
    Created on : 14/09/2022, 20:13:00
    Author     : trist
--%>
<%@include file="Menu.jsp" %>

<%@page import="modelo.Segurado"%>
<%@page import="modelo.DAOSegurado"%>
<script>
    function enviar(par) {
        if (par == 'cadastrar') {

            if (document.cadastro.marcaVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Marca';
            } else if (document.cadastro.nomeVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Nome';
            } else if (document.cadastro.anoVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Ano';
            } else if (document.cadastro.chassiVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Chassi';
            } else if (document.cadastro.categoriaVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Categoria';
            }else if (document.cadastro.portasVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Portas';
            }else if (document.cadastro.placaVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Placa';
            }else if (document.cadastro.usoVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Uso';
            }else if (document.cadastro.combustivelVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Combustível';
            }else if (document.cadastro.cambioVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Câmbio';
            }else if (document.cadastro.renavamVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Renavam';
            }else if (document.cadastro.capacidadeVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Capacidade';
            }else if (document.cadastro.tabelaFipe.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Tabela Fipe';
            }else if (document.cadastro.porcentagem.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Porcentagem';
            }else if (document.cadastro.idSegurado.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Segurado';
            }else {
                document.cadastro.opcao.value = 'cadastrar';
                document.cadastro.action = 'CAEVeiculo.jsp';
                document.cadastro.submit();
            }
        } else if (par == 'cancelar') {
            document.cadastro.opcao.value = 'cadastrar';
            document.cadastro.marcaVeiculo.value = '';
            document.cadastro.nomeVeiculo.value = '';
            document.cadastro.anoVeiculo.value = '';
            document.cadastro.chassiVeiculo.value = '';
            document.cadastro.categoriaVeiculo.value = '';
            document.cadastro.portasVeiculo.value = '';
            document.cadastro.placaVeiculo.value = '';
            document.cadastro.usoVeiculo.value = '';
            document.cadastro.combustivelVeiculo.value = '';
            document.cadastro.cambioVeiculo.value = '';
            document.cadastro.renavamVeiculo.value = '';
            document.cadastro.capacidadeVeiculo.value = '';
            document.cadastro.tabelaFipe.value = '';
            document.cadastro.porcentagem.value = '';
            document.cadastro.idSegurado.value = '';
            document.cadastro.action = 'CadastroVeiculo.jsp';
            document.cadastro.submit();
            /// }
        } else if (par == 'alterar') {

          if (document.cadastro.marcaVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Marca';
            } else if (document.cadastro.nomeVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Nome';
            } else if (document.cadastro.anoVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Ano';
            } else if (document.cadastro.chassiVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Chassi';
            } else if (document.cadastro.categoriaVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Categoria';
            }else if (document.cadastro.portasVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Portas';
            }else if (document.cadastro.placaVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Placa';
            }else if (document.cadastro.usoVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Uso';
            }else if (document.cadastro.combustivelVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Combustível';
            }else if (document.cadastro.cambioVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Câmbio';
            }else if (document.cadastro.renavamVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Renavam';
            }else if (document.cadastro.capacidadeVeiculo.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Capacidade';
            }else if (document.cadastro.tabelaFipe.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Tabela Fipe';
            }else if (document.cadastro.porcentagem.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Porcentagem';
            }else if (document.cadastro.idSegurado.value == '') {
                document.cadastro.mensagem.value = 'Preencha o campo Segurado';
            } else {
                document.cadastro.opcao.value = 'alterar';
                document.cadastro.action = 'CAEVeiculo.jsp';
                document.cadastro.submit();
            }
        } else if (par == 'excluir') {
            document.cadastro.opcao.value = 'excluir';
            document.cadastro.action = 'CAEVeiculo.jsp';
            document.cadastro.submit();
        }
    }
</script>
<%
    String mensagem = request.getParameter("mensagem");
    String marcaVeiculo = request.getParameter("marcaVeiculo");
    String nomeVeiculo = request.getParameter("nomeVeiculo");
    String anoVeiculo = request.getParameter("anoVeiculo");
    String chassiVeiculo = request.getParameter("chassiVeiculo");
    String categoriaVeiculo = request.getParameter("categoriaVeiculo");
    String portasVeiculo = request.getParameter("portasVeiculo");
    String placaVeiculo = request.getParameter("placaVeiculo");
    String usoVeiculo = request.getParameter("usoVeiculo");
    String combustivelVeiculo = request.getParameter("combustivelVeiculo");
    String cambioVeiculo = request.getParameter("cambioVeiculo");
    String renavamVeiculo = request.getParameter("renavamVeiculo");
    String capacidadeVeiculo = request.getParameter("capacidadeVeiculo");
    String tabelaFipe = request.getParameter("tabelaFipe");
    String porcentagem = request.getParameter("porcentagem ");
   
    
    String opcao = request.getParameter("opcao");
    if (opcao == null) {
        opcao = "cadastrar";
    }
    String idVeiculo = request.getParameter("idVeiculo");
    if (idVeiculo == null) {
        idVeiculo = "0";
    }
    
    String idSegurado = request.getParameter("idSegurado");
    if(idSegurado==null) idSegurado = "0"; 

    DAOSegurado daoSegurado = new DAOSegurado(); 
    List<Segurado> listaSegurado = daoSegurado.listarSegurado();
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

    <body class="container-fluid">

            <h1 class="titulo1">Cadastro Veiculos</h1>

            <fieldset >
            <form class="forms" name="cadastro">
                <br>
                                
                <div class="grupo row">
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Marca: </label>
                    <input class="caixas" type="text" name="marcaVeiculo" value="<%= (marcaVeiculo == null) ? "" : marcaVeiculo%>" size="30" /> 
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Nome:</label>
                    <input class="caixas" type="text" name="nomeVeiculo" value="<%= (nomeVeiculo == null) ? "" : nomeVeiculo%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Ano: </label>
                    <input class="caixas" type="text" name="anoVeiculo" value="<%= (anoVeiculo == null) ? "" : anoVeiculo%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Chassi: </label>
                    <input class="caixas" type="text" name="chassiVeiculo" value="<%= (chassiVeiculo == null) ? "" : chassiVeiculo%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Categoria: </label>
                    <input class="caixas" type="text" name="categoriaVeiculo" value="<%= (categoriaVeiculo == null) ? "" : categoriaVeiculo%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Portas: </label>
                    <input class="caixas" type="text" name="portasVeiculo" value="<%= (portasVeiculo == null) ? "" : portasVeiculo%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Placa: </label>
                    <input class="caixas" type="text" name="placaVeiculo" value="<%= (placaVeiculo == null) ? "" : placaVeiculo%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Uso: </label>
                    <input class="caixas" type="text" name="usoVeiculo" value="<%= (usoVeiculo == null) ? "" : usoVeiculo%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Combustível: </label>
                    <input class="caixas" type="text" name="combustivelVeiculo" value="<%= (combustivelVeiculo == null) ? "" : combustivelVeiculo%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Câmbio: </label>
                    <input class="caixas" type="text" name="cambioVeiculo" value="<%= (cambioVeiculo == null) ? "" : cambioVeiculo%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Renavam: </label>
                    <input class="caixas" type="text" name="renavamVeiculo" value="<%= (renavamVeiculo == null) ? "" : renavamVeiculo%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Capacidade: </label>
                    <input class="caixas" type="text" name="capacidadeVeiculo" value="<%= (capacidadeVeiculo == null) ? "" : capacidadeVeiculo%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Tabela Fipe: </label>
                    <input class="caixas" type="text" name="tabelaFipe" value="<%= (tabelaFipe == null) ? "" : tabelaFipe%>" size="30" />
                    </div>
                    <div class="campos col-lg-4 col-sm-6">
                    <label class="titulos2">Porcentagem: </label>
                    <input class="caixas" type="text" name="porcentagem" value="<%= (porcentagem == null) ? "" : porcentagem%>" size="30" />
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
                <input type="hidden" name="idVeiculo" value ="<%= (idVeiculo == null) ? "" : idVeiculo%>" />
                <input type="hidden" name="opcao" value ="<%= (opcao == null) ? "" : opcao%>" />
                <br><br>
                <textarea class="mensagem" name="mensagem" rows="2" cols="65">
                    <%= (mensagem == null) ? "" : mensagem%>

                </textarea>
            </form>
            </fieldset>
            
                    
           
                <br>
            <%@include file="ListarVeiculo.jsp" %>
           
            
            <div class="navbar-brand">
                <span class="fa-solid fa-code"></span>
            </div>
    </body>

</html>