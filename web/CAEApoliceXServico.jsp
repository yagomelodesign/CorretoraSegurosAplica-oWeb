<%-- 
    Document   : CAEApoliceXServico
    Created on : 24/09/2022, 15:23:08
    Author     : trist
--%>

<%@page import="modelo.DAOApoliceXServico"%>
<%@page import="modelo.ApoliceXServico"%>
<%
    ApoliceXServico objApoliceXServico = new ApoliceXServico();
    
    objApoliceXServico.setIdApoliceXServico(Integer.parseInt(request.getParameter("idApoliceXServico")));
    objApoliceXServico.getIdApolice().setIdApolice(Integer.parseInt(request.getParameter("idApolice")));
    objApoliceXServico.getIdServicos().setIdServicos(Integer.parseInt(request.getParameter("idServicos")));
 
    String opcao = request.getParameter("opcao");
    String mensagem = "";
    DAOApoliceXServico objDAOApoliceXServico = new DAOApoliceXServico();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOApoliceXServico.inserir(objApoliceXServico);
    response.sendRedirect("CadastroApoliceXServico.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOApoliceXServico.alterar(objApoliceXServico);
    response.sendRedirect("CadastroApoliceXServico.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOApoliceXServico.excluir(objApoliceXServico);
    response.sendRedirect("CadastroApoliceXServico.jsp?mensagem=" + mensagem);
    }
    
    
%>