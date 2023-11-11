<%-- 
    Document   : ListarVeiculo
    Created on : 14/09/2022, 12:25:23
    Author     : 12046386671
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Veiculo"%>
<%@page import="modelo.DAOVeiculo"%>
<%@page contentType="text/html" pageEncoding="Latin1"%>
<!DOCTYPE html>
<%
DAOVeiculo objDAOVeiculo = new DAOVeiculo();

List<Veiculo> listaVeiculo = objDAOVeiculo.listarVeiculo();

%>
<html>
    
    <head>
    <body class="container-fluid">
        
        <meta http-equiv="Content-Type" content="text/html; charset=Latin1">
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
            <th>MARCA</th>
            <th>NOME</th>
            <th>ANO</th>
            <th>CHASSI</th>
            <th>CATEGORIA</th>
            <th>PORTAS</th>
            <th>PLACA</th>
            <th>USO</th>
            <th>COMBUSTÍVEL</th>
            <th>CÂMBIO</th>
            <th>RENAVAM</th>
            <th>CAPACIDADE</th>
            <th>FIPE</th>
            <th>PORCENTAGEM</th>
            <th>SEGURADO</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr> 
    </thead>
    <tbody>
        <% for(Veiculo veiculo:listaVeiculo){ %>
        <tr>
            <td><%=veiculo.getIdVeiculo()%></td> 
            <td><%=veiculo.getMarcaVeiculo()%></td>  
            <td><%=veiculo.getNomeVeiculo()%></td>  
            <td><%=veiculo.getAnoVeiculo()%></td>  
            <td><%=veiculo.getChassiVeiculo()%></td>  
            <td><%=veiculo.getCategoriaVeiculo()%></td>  
            <td><%=veiculo.getPortasVeiculo()%></td>  
            <td><%=veiculo.getPlacaVeiculo()%></td>  
            <td><%=veiculo.getUsoVeiculo()%></td>  
            <td><%=veiculo.getCombustivelVeiculo()%></td>  
            <td><%=veiculo.getCambioVeiculo()%></td>  
            <td><%=veiculo.getRenavamVeiculo()%></td>  
            <td><%=veiculo.getCapacidadeVeiculo()%></td>  
            <td><%=veiculo.getTabelaFipe()%></td>  
            <td><%=veiculo.getPorcentagem()%></td> 
            <td><%=veiculo.getIdSegurado().getIdPessoa().getNomePessoa()%> </td>

             
            <td>
                <a href="CadastroVeiculo.jsp?opcao=alterar&idVeiculo=<%=veiculo.getIdVeiculo()%>&marcaVeiculo=<%=veiculo.getMarcaVeiculo()%>&nomeVeiculo=<%=veiculo.getNomeVeiculo()%>&anoVeiculo=<%=veiculo.getAnoVeiculo()%>&chassiVeiculo=<%=veiculo.getChassiVeiculo()%>&categoriaVeiculo=<%=veiculo.getCategoriaVeiculo()%>&portasVeiculo=<%=veiculo.getPortasVeiculo()%>&placaVeiculo=<%=veiculo.getPlacaVeiculo()%>&usoVeiculo=<%=veiculo.getUsoVeiculo()%>&combustivelVeiculo=<%=veiculo.getCombustivelVeiculo()%>&cambioVeiculo=<%=veiculo.getCambioVeiculo()%>&renavamVeiculo=<%=veiculo.getRenavamVeiculo()%>&capacidadeVeiculo=<%=veiculo.getCapacidadeVeiculo()%>&tabelaFipe=<%=veiculo.getTabelaFipe()%>&porcentagem=<%=veiculo.getPorcentagem()%>&idSegurado=<%=veiculo.getIdSegurado().getIdSegurado()%>">Alterar</a>
            </td>
            <td>
                <a href="CadastroVeiculo.jsp?opcao=excluir&idVeiculo=<%=veiculo.getIdVeiculo()%>&marcaVeiculo=<%=veiculo.getMarcaVeiculo()%>&nomeVeiculo=<%=veiculo.getNomeVeiculo()%>&anoVeiculo=<%=veiculo.getAnoVeiculo()%>&chassiVeiculo=<%=veiculo.getChassiVeiculo()%>&categoriaVeiculo=<%=veiculo.getCategoriaVeiculo()%>&portasVeiculo=<%=veiculo.getPortasVeiculo()%>&placaVeiculo=<%=veiculo.getPlacaVeiculo()%>&usoVeiculo=<%=veiculo.getUsoVeiculo()%>&combustivelVeiculo=<%=veiculo.getCombustivelVeiculo()%>&cambioVeiculo=<%=veiculo.getCambioVeiculo()%>&renavamVeiculo=<%=veiculo.getRenavamVeiculo()%>&capacidadeVeiculo=<%=veiculo.getCapacidadeVeiculo()%>&tabelaFipe=<%=veiculo.getTabelaFipe()%>&porcentagem=<%=veiculo.getPorcentagem()%>&idSegurado=<%=veiculo.getIdSegurado().getIdSegurado()%>">Excluir</a>
            </td>
        </tr>
        <% } %>
    </tbody>
</body>
</table>
</head>
</html>