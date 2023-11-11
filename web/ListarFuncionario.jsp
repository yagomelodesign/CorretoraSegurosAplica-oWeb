<%-- 
    Document   : ListarFuncionario
    Created on : 24/09/2022, 00:05:44
    Author     : trist
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Funcionario"%>
<%@page import="modelo.DAOFuncionario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
DAOFuncionario objDAOFuncionario = new DAOFuncionario();

List<Funcionario> listaFuncionario = objDAOFuncionario.listarFuncionario();

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
            <th>CARGO</th>
            <th>SALÁRIO</th>
            <th>PESSOA</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr> 
    </thead>
    <tbody>
        <% for(Funcionario funcionario:listaFuncionario){ %>
        <tr>
            <td><%=funcionario.getIdFuncionario()%></td>  
            <td><%=funcionario.getCargoFuncionario()%></td>  
            <td><%=funcionario.getSalarioFuncionario()%></td>  
            <td><%=funcionario.getIdPessoa().getNomePessoa()  %> </td>

             
            <td>
                <a href="CadastroFuncionario.jsp?opcao=alterar&idFuncionario=<%=funcionario.getIdFuncionario()%>&cargoFuncionario=<%=funcionario.getCargoFuncionario()%>&salarioFuncionario=<%=funcionario.getSalarioFuncionario()%>&idPessoa=<%=funcionario.getIdPessoa().getIdPessoa()%>">Alterar</a>
            </td>
            <td>
                <a href="CadastroFuncionario.jsp?opcao=excluir&idFuncionario=<%=funcionario.getIdFuncionario()%>&cargoFuncionario=<%=funcionario.getCargoFuncionario()%>&salarioFuncionario=<%=funcionario.getSalarioFuncionario()%>&idPessoa=<%=funcionario.getIdPessoa().getIdPessoa()%>">Excluir</a>
            </td>
        </tr>
        <% } %>
    </tbody>
</body>
</table>
</head>
</html>
