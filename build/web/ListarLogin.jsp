<%-- 
    Document   : ListarLogin
    Created on : 31/08/2022, 10:58:07
    Author     : 12046386671
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Login"%>
<%@page import="modelo.DAOLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
DAOLogin objDAOLogin = new DAOLogin();

List<Login> listaLogin = objDAOLogin.listarLogin();

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
            <th>USUÁRIO</th>
            <th>SENHA</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr> 
    </thead>
    <tbody>
        <% for(Login login:listaLogin){ %>
        <tr>
            <td><%=login.getIdLogin()%></td>  
            <td><%=login.getUsuarioLogin()%></td>  
            <td><%=login.getSenhaLogin()%></td>  
             
            <td>
                <a href="CadastroLogin.jsp?opcao=alterar&idLogin=<%=login.getIdLogin()%>&usuarioLogin=<%=login.getUsuarioLogin()%>&senhaLogin=<%=login.getSenhaLogin()%>">Alterar</a>
            </td>
            <td>
                <a href="CadastroLogin.jsp?opcao=excluir&idLogin=<%=login.getIdLogin()%>&usuarioLogin=<%=login.getUsuarioLogin()%>&senhaLogin=<%=login.getSenhaLogin()%>">Excluir</a>
            </td>
        </tr>
        <% } %>
    </tbody>
</body>
</table>
</head>
</html>
