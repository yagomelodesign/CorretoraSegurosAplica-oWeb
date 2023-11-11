<%-- 
    Document   : ListarSeguradora
    Created on : 14/09/2022, 09:20:25
    Author     : 12046386671
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Seguradora"%>
<%@page import="modelo.DAOSeguradora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
DAOSeguradora objDAOSeguradora = new DAOSeguradora();

List<Seguradora> listaSeguradora = objDAOSeguradora.listarSeguradora();

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
            <th>NOME</th>
            <th>TELEFONE</th>
            <th>SITE</th>
            <th>EMAIL</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr> 
    </thead>
    <tbody>
        <% for(Seguradora seguradora:listaSeguradora){ %>
        <tr>
            <td><%=seguradora.getIdSeguradora()%></td>  
            <td><%=seguradora.getNomeSeguradora()%></td>  
            <td><%=seguradora.getTelefoneSeguradora()%></td>  
            <td><%=seguradora.getSiteSeguradora()%></td>  
            <td><%=seguradora.getEmailSeguradora()%></td>  
             
            <td>
                <a href="CadastroSeguradora.jsp?opcao=alterar&idSeguradora=<%=seguradora.getIdSeguradora()%>&nomeSeguradora=<%=seguradora.getNomeSeguradora()%>&telefoneSeguradora=<%=seguradora.getTelefoneSeguradora()%>&siteSeguradora=<%=seguradora.getSiteSeguradora()%>&emailSeguradora=<%=seguradora.getEmailSeguradora()%>">Alterar</a>
            </td>
            <td>
                <a href="CadastroSeguradora.jsp?opcao=excluir&idSeguradora=<%=seguradora.getIdSeguradora()%>&nomeSeguradora=<%=seguradora.getNomeSeguradora()%>&telefoneSeguradora=<%=seguradora.getTelefoneSeguradora()%>&siteSeguradora=<%=seguradora.getSiteSeguradora()%>&emailSeguradora=<%=seguradora.getEmailSeguradora()%>">Excluir</a>
            </td>
        </tr>
        <% } %>
    </tbody>
</body>
</table>
</head>
</html>
