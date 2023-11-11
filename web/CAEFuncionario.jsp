<%-- 
    Document   : CAEFuncionario
    Created on : 24/09/2022, 00:04:28
    Author     : trist
--%>

<%@page import="modelo.DAOFuncionario"%>
<%@page import="modelo.Funcionario"%>
<%
    Funcionario objFuncionario = new Funcionario();
    
    objFuncionario.setIdFuncionario(Integer.parseInt(request.getParameter("idFuncionario")));
    objFuncionario.setCargoFuncionario(request.getParameter("cargoFuncionario"));
    objFuncionario.setSalarioFuncionario(request.getParameter("salarioFuncionario"));
    objFuncionario.getIdPessoa().setIdPessoa(Integer.parseInt(request.getParameter("idPessoa")));
 
    String opcao = request.getParameter("opcao");
    String mensagem = "";
    DAOFuncionario objDAOFuncionario = new DAOFuncionario();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOFuncionario.inserir(objFuncionario);
    response.sendRedirect("CadastroFuncionario.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOFuncionario.alterar(objFuncionario);
    response.sendRedirect("CadastroFuncionario.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOFuncionario.excluir(objFuncionario);
    response.sendRedirect("CadastroFuncionario.jsp?mensagem=" + mensagem);
    }
    
    
%>