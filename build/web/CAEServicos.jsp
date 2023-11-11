<%-- 
    Document   : CAEServico
    Created on : 02/09/2022, 16:46:32
    Author     : trist
--%>

<%@page import="modelo.DAOServicos"%>
<%@page import="modelo.Servicos"%>
<%
    Servicos objServicos = new Servicos();
    
    objServicos.setIdServicos(Integer.parseInt(request.getParameter("idServicos")));
    objServicos.setTipoServico(request.getParameter("tipoServico"));
    objServicos.setValorServico(Integer.parseInt(request.getParameter("valorServico")));
 
    String opcao = request.getParameter("opcao");
    String mensagem = "";
    DAOServicos objDAOServicos = new DAOServicos();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOServicos.inserir(objServicos);
    response.sendRedirect("CadastroServicos.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOServicos.alterar(objServicos);
    response.sendRedirect("CadastroServicos.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOServicos.excluir(objServicos);
    response.sendRedirect("CadastroServicos.jsp?mensagem=" + mensagem);
    }
    
    
%>