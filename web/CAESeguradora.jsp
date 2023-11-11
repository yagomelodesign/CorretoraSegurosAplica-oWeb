<%-- 
    Document   : CAESeguradora
    Created on : 14/09/2022, 09:09:07
    Author     : 12046386671
--%>

<%@page import="modelo.DAOSeguradora"%>
<%@page import="modelo.Seguradora"%>
<%
    Seguradora objSeguradora = new Seguradora();
    
    objSeguradora.setIdSeguradora(Integer.parseInt(request.getParameter("idSeguradora")));
    objSeguradora.setNomeSeguradora(request.getParameter("nomeSeguradora"));
    objSeguradora.setTelefoneSeguradora(request.getParameter("telefoneSeguradora"));
    objSeguradora.setSiteSeguradora(request.getParameter("siteSeguradora"));
    objSeguradora.setEmailSeguradora(request.getParameter("emailSeguradora"));
 
    String opcao = request.getParameter("opcao");
    String mensagem = "";
    DAOSeguradora objDAOSeguradora = new DAOSeguradora();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOSeguradora.inserir(objSeguradora);
    response.sendRedirect("CadastroSeguradora.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOSeguradora.alterar(objSeguradora);
    response.sendRedirect("CadastroSeguradora.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOSeguradora.excluir(objSeguradora);
    response.sendRedirect("CadastroSeguradora.jsp?mensagem=" + mensagem);
    }
    
    
%>