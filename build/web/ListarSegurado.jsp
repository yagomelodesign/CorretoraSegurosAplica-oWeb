<%-- 
    Document   : ListarSegurado
    Created on : 14/09/2022, 09:20:25
    Author     : 12046386671
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Segurado"%>
<%@page import="modelo.DAOSegurado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
DAOSegurado objDAOSegurado = new DAOSegurado();

List<Segurado> listaSegurado = objDAOSegurado.listarSegurado();

%>
<html>
    
    <head>
    <body class="container-fluid">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/all.css" />
	<link rel="stylesheet" href="css/estilo.css" />
  
        <style>

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
    font-size: 1rem;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-image: linear-gradient( to bottom, #111111, #404040 );;
    color: white;
}
</style>

<table border="1">
    <thead
   
        <tr>
            <th>CÓDIGO</th>
            <th>CEP</th>
            <th>ESTADO CIVIL</th>
            <th>PROFISSAO</th>
            <th>CONDUTOR</th>
            <th>PESSOA</th>
            <th>PERFIL</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr> 
    </thead>
    <tbody>
        <% for(Segurado segurado:listaSegurado){ %>
        <tr>
            <td><%=segurado.getIdSegurado()%></td>  
            <td><%=segurado.getCepSegurado()%></td>  
            <td><%=segurado.getEstadoCivilSegurado()%></td>  
            <td><%=segurado.getProfissaoSegurado()%></td>  
            <td><%=segurado.getCondutorSegurado()%></td>  
            <td><%=segurado.getIdPessoa().getNomePessoa()  %> </td>
            <td><%=segurado.getIdPerfil().getDescricao()  %> </td>

             
            <td>
                <a href="CadastroSegurado.jsp?opcao=alterar&idSegurado=<%=segurado.getIdSegurado()%>&cepSegurado=<%=segurado.getCepSegurado()%>&estadoCivilSegurado=<%=segurado.getEstadoCivilSegurado()%>&profissaoSegurado=<%=segurado.getProfissaoSegurado()%>&condutorSegurado=<%=segurado.getCondutorSegurado()%>&idPessoa=<%=segurado.getIdPessoa().getIdPessoa()%>&idPerfil=<%=segurado.getIdPerfil().getIdPerfil()%>">Alterar</a>
            </td>
            <td>
                <a href="CadastroSegurado.jsp?opcao=excluir&idSegurado=<%=segurado.getIdSegurado()%>&cepSegurado=<%=segurado.getCepSegurado()%>&estadoCivilSegurado=<%=segurado.getEstadoCivilSegurado()%>&profissaoSegurado=<%=segurado.getProfissaoSegurado()%>&condutorSegurado=<%=segurado.getCondutorSegurado()%>&idPessoa=<%=segurado.getIdPessoa().getIdPessoa()%>&idPerfil=<%=segurado.getIdPerfil().getIdPerfil()%>">Excluir</a>
            </td>
        </tr>
        <% } %>
    </tbody>
</body>
</table>
</head>
</html>
