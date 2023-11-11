<%-- 
    Document   : ListarServicos
    Created on : 02/09/2022, 16:47:45
    Author     : trist
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Servicos"%>
<%@page import="modelo.DAOServicos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
DAOServicos objDAOServicos = new DAOServicos();

List<Servicos> listaServicos = objDAOServicos.listarServicos();

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
            <th>TIPO</th>
            <th>VALOR</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr> 
    </thead>
    <tbody>
        <% for(Servicos servicos:listaServicos){ %>
        <tr>
            <td><%=servicos.getIdServicos()%></td>  
            <td><%=servicos.getTipoServico()%></td>  
            <td><%=servicos.getValorServico()%></td>  
             
            <td>
                <a href="CadastroServicos.jsp?opcao=alterar&idServicos=<%=servicos.getIdServicos()%>&tipoServico=<%=servicos.getTipoServico()%>&valorServico=<%=servicos.getValorServico()%>">Alterar</a>
            </td>
            <td>
                <a href="CadastroServicos.jsp?opcao=excluir&idServicos=<%=servicos.getIdServicos()%>&tipoServico=<%=servicos.getTipoServico()%>&valorServico=<%=servicos.getValorServico()%>">Excluir</a>
            </td>
        </tr>
        <% } %>
    </tbody>
</body>
</table>
</head>
</html>