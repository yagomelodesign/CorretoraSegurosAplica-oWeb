<%-- 
    Document   : ListarPerfil
    Created on : 02/09/2022, 16:38:01
    Author     : trist
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Perfil"%>
<%@page import="modelo.DAOPerfil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
DAOPerfil objDAOPerfil = new DAOPerfil();

List<Perfil> listaPerfil = objDAOPerfil.listarPerfil();

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
            <th>DESCRIÇÃO</th>
            <th>VALOR</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr> 
    </thead>
    <tbody>
        <% for(Perfil perfil:listaPerfil){ %>
        <tr>
            <td><%=perfil.getIdPerfil()%></td>  
            <td><%=perfil.getDescricao()%></td>  
            <td><%=perfil.getValor()%></td>  
             
            <td>
                <a href="CadastroPerfil.jsp?opcao=alterar&idPerfil=<%=perfil.getIdPerfil()%>&descricao=<%=perfil.getDescricao()%>&valor=<%=perfil.getValor()%>">Alterar</a>
            </td>
            <td>
                <a href="CadastroPerfil.jsp?opcao=excluir&idPerfil=<%=perfil.getIdPerfil()%>&descricao=<%=perfil.getDescricao()%>&valor=<%=perfil.getValor()%>">Excluir</a>
            </td>
        </tr>
        <% } %>
    </tbody>
</body>
</table>
</head>
</html>