<%-- 
    Document   : CAEPerfil
    Created on : 02/09/2022, 16:33:38
    Author     : trist
--%>

<%@page import="modelo.DAOPerfil"%>
<%@page import="modelo.Perfil"%>
<%
    Perfil objPerfil = new Perfil();
    
    objPerfil.setIdPerfil(Integer.parseInt(request.getParameter("idPerfil")));
    objPerfil.setDescricao(request.getParameter("descricao"));
    objPerfil.setValor(Double.parseDouble(request.getParameter("valor")));
 
    String opcao = request.getParameter("opcao");
    String mensagem = "";
    DAOPerfil objDAOPerfil = new DAOPerfil();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOPerfil.inserir(objPerfil);
    response.sendRedirect("CadastroPerfil.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOPerfil.alterar(objPerfil);
    response.sendRedirect("CadastroPerfil.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOPerfil.excluir(objPerfil);
    response.sendRedirect("CadastroPerfil.jsp?mensagem=" + mensagem);
    }
    
    
%>