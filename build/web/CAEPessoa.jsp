<%-- 
    Document   : CAEPessoa
    Created on : 14/09/2022, 21:02:56
    Author     : trist
--%>

<%@page import="modelo.DAOPessoa"%>
<%@page import="modelo.Pessoa"%>
<%@page import="modelo.ConverteData"%>

<%
    Pessoa objPessoa = new Pessoa();
    ConverteData converte = new ConverteData();

    objPessoa.setIdPessoa(Integer.parseInt(request.getParameter("idPessoa")));
    objPessoa.setNomePessoa(request.getParameter("nomePessoa"));
    objPessoa.setCpfPessoa(request.getParameter("cpfPessoa"));
    objPessoa.setRgPessoa(request.getParameter("rgPessoa"));
    objPessoa.setNascPessoa(converte.converteCalendario(request.getParameter("nascPessoa")));
    objPessoa.setTelefonePessoa(request.getParameter("telefonePessoa"));
    objPessoa.setEmailPessoa(request.getParameter("emailPessoa"));
    objPessoa.setSexoPessoa(request.getParameter("sexoPessoa"));
    objPessoa.setEnderecoPessoa(request.getParameter("enderecoPessoa"));
    objPessoa.setBairroPessoa(request.getParameter("bairroPessoa"));
    objPessoa.setCidadePessoa(request.getParameter("cidadePessoa"));
    objPessoa.setUf(request.getParameter("uf"));
    
    
 
    String opcao = request.getParameter("opcao");
    String mensagem = "";
    DAOPessoa objDAOPessoa = new DAOPessoa();
    if(opcao.equals("cadastrar")){
    mensagem = objDAOPessoa.inserir(objPessoa);
    response.sendRedirect("CadastroPessoa.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("alterar")){
    mensagem = objDAOPessoa.alterar(objPessoa);
    response.sendRedirect("CadastroPessoa.jsp?mensagem=" + mensagem);
    }
    if(opcao.equals("excluir")){
    mensagem = objDAOPessoa.excluir(objPessoa);
    response.sendRedirect("CadastroPessoa.jsp?mensagem=" + mensagem);
    }
    
    
%>