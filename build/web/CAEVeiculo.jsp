<%-- 
    Document   : CAEVeiculos
    Created on : 14/09/2022, 12:18:09
    Author     : 12046386671
--%>


<%@page import="modelo.DAOVeiculo"%>
<%@page import="modelo.Veiculo"%>

<%
    Veiculo objVeiculo = new Veiculo();

    objVeiculo.setIdVeiculo(Integer.parseInt(request.getParameter("idVeiculo")));
    objVeiculo.setMarcaVeiculo(request.getParameter("marcaVeiculo"));
    objVeiculo.setNomeVeiculo(request.getParameter("nomeVeiculo"));
    objVeiculo.setAnoVeiculo(request.getParameter("anoVeiculo"));
    objVeiculo.setChassiVeiculo(request.getParameter("chassiVeiculo"));
    objVeiculo.setCategoriaVeiculo(request.getParameter("categoriaVeiculo"));
    objVeiculo.setPortasVeiculo(request.getParameter("portasVeiculo"));
    objVeiculo.setPlacaVeiculo(request.getParameter("placaVeiculo"));
    objVeiculo.setUsoVeiculo(request.getParameter("usoVeiculo"));
    objVeiculo.setCombustivelVeiculo(request.getParameter("combustivelVeiculo"));
    objVeiculo.setCambioVeiculo(request.getParameter("cambioVeiculo"));
    objVeiculo.setRenavamVeiculo(request.getParameter("renavamVeiculo"));
    objVeiculo.setCapacidadeVeiculo(Integer.parseInt(request.getParameter("capacidadeVeiculo")));
    objVeiculo.setTabelaFipe(Double.parseDouble(request.getParameter("tabelaFipe")));
    objVeiculo.setPorcentagem(Integer.parseInt(request.getParameter("porcentagem")));
    objVeiculo.getIdSegurado().setIdSegurado(Integer.parseInt(request.getParameter("idSegurado")));

    
 
    String opcao = request.getParameter("opcao");
    String mensagem = "";
    DAOVeiculo objDAOVeiculo = new DAOVeiculo();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOVeiculo.inserir(objVeiculo);
    response.sendRedirect("CadastroVeiculo.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOVeiculo.alterar(objVeiculo);
    response.sendRedirect("CadastroVeiculo.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOVeiculo.excluir(objVeiculo);
    response.sendRedirect("CadastroVeiculo.jsp?mensagem=" + mensagem);
    }
    
    
%>