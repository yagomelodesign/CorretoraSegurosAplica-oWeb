<%-- 
    Document   : ListarBonus
    Created on : 31/08/2022, 10:18:15
    Author     : 12046386671
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Bonus"%>
<%@page import="modelo.DAOBonus"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
DAOBonus objDAOBonus = new DAOBonus();

List<Bonus> listaBonus = objDAOBonus.listarBonus();

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
            <th>CLASSE</th>
            <th>DESCONTO</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr> 
    </thead>
    <tbody>
        <% for(Bonus bonus:listaBonus){ %>
        <tr>
            <td><%=bonus.getIdBonus()%></td>  
            <td><%=bonus.getClasse()%></td>  
            <td><%=bonus.getDesconto()%></td>  
             
            <td>
                <a href="CadastroBonus.jsp?opcao=alterar&idBonus=<%=bonus.getIdBonus()%>&classe=<%=bonus.getClasse()%>&desconto=<%=bonus.getDesconto()%>">Alterar</a>
            </td>
            <td>
                <a href="CadastroBonus.jsp?opcao=excluir&idBonus=<%=bonus.getIdBonus()%>&classe=<%=bonus.getClasse()%>&desconto=<%=bonus.getDesconto()%>">Excluir</a>
            </td>
        </tr>
        <% } %>
    </tbody>
</body>
</table>
</head>
</html>