<%-- 
    Document   : CAELogin
    Created on : 31/08/2022, 10:51:33
    Author     : 12046386671
--%>

<%@page import="modelo.DAOLogin"%>
<%@page import="modelo.Login"%>
<%
    Login objLogin = new Login();
    
    objLogin.setIdLogin(Integer.parseInt(request.getParameter("idLogin")));
    objLogin.setUsuarioLogin(request.getParameter("usuarioLogin"));
    objLogin.setSenhaLogin(request.getParameter("senhaLogin"));
 
    String opcao = request.getParameter("opcao");
    String mensagem = "";
    DAOLogin objDAOLogin = new DAOLogin();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOLogin.inserir(objLogin);
    response.sendRedirect("CadastroLogin.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOLogin.alterar(objLogin);
    response.sendRedirect("CadastroLogin.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOLogin.excluir(objLogin);
    response.sendRedirect("CadastroLogin.jsp?mensagem=" + mensagem);
    }
    
    
%>