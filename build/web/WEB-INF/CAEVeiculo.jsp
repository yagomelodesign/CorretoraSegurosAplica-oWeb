<%-- 
    Document   : CAEVeiculo
    Created on : 14/09/2022, 10:43:16
    Author     : 12046386671
--%>

<%@page import="modelo.DAOVeiculo"%>
<%@page import="modelo.Veiculo"%>
<%
    Veiculo objVeiculo = new Veiculo();
    
    objVeiculo.setIdVeiculo(Integer.parseInt(request.getParameter("idVeiculo")));
    objVeiculo.setString(request.getParameter("tipoServico"));
    objServicos.setValorServico(Integer.parseInt(request.getParameter("valorServico")));
 
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