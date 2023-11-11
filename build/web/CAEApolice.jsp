<%-- 
    Document   : CAEApolice
    Created on : 31/08/2022, 09:22:09
    Author     : 12046386671
--%>

<%@page import="modelo.DAOApolice"%>
<%@page import="modelo.Apolice"%>
<%@page import="modelo.ConverteData"%>
<%
    Apolice objApolice = new Apolice();
    ConverteData converte = new ConverteData();
    objApolice.setIdApolice(Integer.parseInt(request.getParameter("idApolice")));
    objApolice.setNumeroApolice(request.getParameter("numeroApolice"));
    objApolice.setDataEmissao(converte.converteCalendario(request.getParameter("dataEmissao")));
    objApolice.setInicioVig(converte.converteCalendario(request.getParameter("inicioVig")));
    objApolice.setFinalVig(converte.converteCalendario(request.getParameter("finalVig")));
    objApolice.setCodCi(request.getParameter("codCi"));
    objApolice.getIdSegurado().setIdSegurado(Integer.parseInt(request.getParameter("idSegurado")));
    objApolice.getIdSeguradora().setIdSeguradora(Integer.parseInt(request.getParameter("idSeguradora")));
    objApolice.getIdBonus().setIdBonus(Integer.parseInt(request.getParameter("idBonus")));
    
    String opcao = request.getParameter("opcao");
    String mensagem = "";
    DAOApolice objDAOApolice = new DAOApolice();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOApolice.inserir(objApolice);
    response.sendRedirect("CadastroApolice.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOApolice.alterar(objApolice);
    response.sendRedirect("CadastroApolice.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOApolice.excluir(objApolice);
    response.sendRedirect("CadastroApolice.jsp?mensagem=" + mensagem);
    }
    
    
%>
