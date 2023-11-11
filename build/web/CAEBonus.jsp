<%-- 
    Document   : CAEBonus
    Created on : 31/08/2022, 10:09:50
    Author     : 12046386671
--%>

<%@page import="modelo.DAOBonus"%>
<%@page import="modelo.Bonus"%>
<%
    Bonus objBonus = new Bonus();
    
    objBonus.setIdBonus(Integer.parseInt(request.getParameter("idBonus")));
    objBonus.setClasse(Integer.parseInt(request.getParameter("classe")));
    objBonus.setDesconto(Double.parseDouble(request.getParameter("desconto")));
 
    String opcao = request.getParameter("opcao");
    String mensagem = "";
    DAOBonus objDAOBonus = new DAOBonus();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOBonus.inserir(objBonus);
    response.sendRedirect("CadastroBonus.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOBonus.alterar(objBonus);
    response.sendRedirect("CadastroBonus.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOBonus.excluir(objBonus);
    response.sendRedirect("CadastroBonus.jsp?mensagem=" + mensagem);
    }
    
    
%>