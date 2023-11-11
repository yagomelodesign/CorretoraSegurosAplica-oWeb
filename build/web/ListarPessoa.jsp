<%-- 
    Document   : ListarPessoa
    Created on : 14/09/2022, 21:06:32
    Author     : trist
--%>

<%@page import="modelo.ConverteData"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Pessoa"%>
<%@page import="modelo.DAOPessoa"%>
<%@page contentType="text/html" pageEncoding="Latin1"%>
<!DOCTYPE html>
<%
DAOPessoa objDAOPessoa = new DAOPessoa();
ConverteData converte = new ConverteData();
List<Pessoa> listaPessoa = objDAOPessoa.listarPessoa();

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
            <th>NOME</th>
            <th>CPF</th>
            <th>RG</th>
            <th>NASCIMENTO</th>
            <th>TELEFONE</th>
            <th>EMAIL</th>
            <th>SEXO</th>
            <th>ENDERECO</th>
            <th>BAIRRO</th>
            <th>CIDADE</th>
            <th>UF</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr> 
    </thead>
    <tbody>
        <% for(Pessoa pessoa:listaPessoa){ %>
        <tr>
            <td><%=pessoa.getIdPessoa()%></td> 
            <td><%=pessoa.getNomePessoa()%></td>  
            <td><%=pessoa.getCpfPessoa()%></td>  
            <td><%=pessoa.getRgPessoa()%></td>  
            <td><%=converte.converteTela(pessoa.getNascPessoa())%></td>  
            <td><%=pessoa.getTelefonePessoa()%></td>  
            <td><%=pessoa.getEmailPessoa()%></td>  
            <td><%=pessoa.getSexoPessoa()%></td>  
            <td><%=pessoa.getEnderecoPessoa()%></td>  
            <td><%=pessoa.getBairroPessoa()%></td>  
            <td><%=pessoa.getCidadePessoa()%></td>  
            <td><%=pessoa.getUf()%></td>    
             
            <td>
                <a href="CadastroPessoa.jsp?opcao=alterar&idPessoa=<%=pessoa.getIdPessoa()%>&nomePessoa=<%=pessoa.getNomePessoa()%>&cpfPessoa=<%=pessoa.getCpfPessoa()%>&rgPessoa=<%=pessoa.getRgPessoa()%>&nascPessoa=<%=converte.converteTela(pessoa.getNascPessoa())%>&telefonePessoa=<%=pessoa.getTelefonePessoa()%>&emailPessoa=<%=pessoa.getEmailPessoa()%>&sexoPessoa=<%=pessoa.getSexoPessoa()%>&enderecoPessoa=<%=pessoa.getEnderecoPessoa()%>&bairroPessoa=<%=pessoa.getBairroPessoa()%>&cidadePessoa=<%=pessoa.getCidadePessoa()%>&uf=<%=pessoa.getUf()%>">Alterar</a>
            </td>
            <td>
                <a href="CadastroPessoa.jsp?opcao=excluir&idPessoa=<%=pessoa.getIdPessoa()%>&nomePessoa=<%=pessoa.getNomePessoa()%>&cpfPessoa=<%=pessoa.getCpfPessoa()%>&rgPessoa=<%=pessoa.getRgPessoa()%>&nascPessoa=<%=converte.converteTela(pessoa.getNascPessoa())%>&telefonePessoa=<%=pessoa.getTelefonePessoa()%>&emailPessoa=<%=pessoa.getEmailPessoa()%>&sexoPessoa=<%=pessoa.getSexoPessoa()%>&enderecoPessoa=<%=pessoa.getEnderecoPessoa()%>&bairroPessoa=<%=pessoa.getBairroPessoa()%>&cidadePessoa=<%=pessoa.getCidadePessoa()%>&uf=<%=pessoa.getUf()%>">Excluir</a>
            </td>
        </tr>
        <% } %>
    </tbody>
</body>
</table>
</head>
</html>