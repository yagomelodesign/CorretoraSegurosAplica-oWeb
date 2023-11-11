<%-- 
    Document   : ListarApoliceXServico
    Created on : 24/09/2022, 15:25:22
    Author     : trist
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.ApoliceXServico"%>
<%@page import="modelo.DAOApoliceXServico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
DAOApoliceXServico objDAOApoliceXServico = new DAOApoliceXServico();

List<ApoliceXServico> listaApoliceXServico = objDAOApoliceXServico.listarApoliceXServico();

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
            <th>APÓLICE</th>
            <th>SERVIÇOS</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr> 
    </thead>
    <tbody>
        <% for(ApoliceXServico apoliceXServico:listaApoliceXServico){ %>
        <tr>
            <td><%=apoliceXServico.getIdApoliceXServico()%></td>  
            <td><%=apoliceXServico.getIdApolice().getNumeroApolice()  %> </td>
            <td><%=apoliceXServico.getIdServicos().getTipoServico()  %> </td>

             
            <td>
                <a href="CadastroApoliceXServico.jsp?opcao=alterar&idApoliceXServico=<%=apoliceXServico.getIdApoliceXServico()%>&idApolice=<%=apoliceXServico.getIdApolice().getIdApolice()%>&idServicos=<%=apoliceXServico.getIdServicos().getIdServicos()%>">Alterar</a>
            </td>
            <td>
                <a href="CadastroApoliceXServico.jsp?opcao=excluir&idApoliceXServico=<%=apoliceXServico.getIdApoliceXServico()%>&idApolice=<%=apoliceXServico.getIdApolice().getIdApolice()%>&idServicos=<%=apoliceXServico.getIdServicos().getIdServicos()%>">Excluir</a>
            </td>
        </tr>
        <% } %>
    </tbody>
</body>
</table>
</head>
</html>
