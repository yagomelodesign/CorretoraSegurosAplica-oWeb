<%-- 
    Document   : CAESegurado
    Created on : 14/09/2022, 09:09:07
    Author     : 12046386671
--%>

<%@page import="modelo.DAOSegurado"%>
<%@page import="modelo.Segurado"%>
<%
    Segurado objSegurado = new Segurado();
    
    objSegurado.setIdSegurado(Integer.parseInt(request.getParameter("idSegurado")));
    objSegurado.setCepSegurado(request.getParameter("cepSegurado"));
    objSegurado.setEstadoCivilSegurado(request.getParameter("estadoCivilSegurado"));
    objSegurado.setProfissaoSegurado(request.getParameter("profissaoSegurado"));
    objSegurado.setCondutorSegurado(request.getParameter("condutorSegurado"));
    objSegurado.getIdPessoa().setIdPessoa(Integer.parseInt(request.getParameter("idPessoa")));
    objSegurado.getIdPerfil().setIdPerfil(Integer.parseInt(request.getParameter("idPerfil")));
 
    String opcao = request.getParameter("opcao");
    String mensagem = "";
    DAOSegurado objDAOSegurado = new DAOSegurado();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOSegurado.inserir(objSegurado);
    response.sendRedirect("CadastroSegurado.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOSegurado.alterar(objSegurado);
    response.sendRedirect("CadastroSegurado.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOSegurado.excluir(objSegurado);
    response.sendRedirect("CadastroSegurado.jsp?mensagem=" + mensagem);
    }
    
    
%>