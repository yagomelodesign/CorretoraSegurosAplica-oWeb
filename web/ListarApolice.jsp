<%-- 
    Document   : ListarApolice
    Created on : 26/09/2022, 10:18:40
    Author     : 12046386671
--%>

<%@page import="modelo.ConverteData"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Apolice"%>
<%@page import="modelo.DAOApolice"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
DAOApolice objDAOApolice = new DAOApolice();
ConverteData converte = new ConverteData();
List<Apolice> listaApolice = objDAOApolice.listarApolice();

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
    font-size:1rem;
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
            <th>Nº APÓLICE</th>
            <th>EMISSÃO</th>
            <th>INÍCIO VIGÊNCIA</th>
            <th>FINAL VIGÊNCIA</th>
            <th>CI</th>
            <th>SEGURADO</th>
            <th>SEGURADORA</th>
            <th>BONUS</th>
            <th>ALTERAR</th>
            <th>EXCLUIR</th>
        </tr> 
    </thead>
    <tbody>
        <% for(Apolice apolice:listaApolice){ %>
        <tr>
            <td><%=apolice.getIdApolice()%></td>  
            <td><%=apolice.getNumeroApolice()%></td>  
            <td><%=converte.converteTela(apolice.getDataEmissao())%></td>  
            <td><%=converte.converteTela(apolice.getInicioVig())%></td>  
            <td><%=converte.converteTela(apolice.getFinalVig())%></td>  
            <td><%=apolice.getCodCi() %></td>  
            <td><%=apolice.getIdSegurado().getIdPessoa().getNomePessoa()%> </td>
            <td><%=apolice.getIdSeguradora().getNomeSeguradora()%> </td>
            <td><%=apolice.getIdBonus().getClasse()%> </td>

             
            <td>
                <a href="CadastroApolice.jsp?opcao=alterar&idApolice=<%=apolice.getIdApolice()%>&numeroApolice=<%=apolice.getNumeroApolice()%>&dataEmissao=<%=converte.converteTela(apolice.getDataEmissao())%>&inicioVig=<%=converte.converteTela(apolice.getInicioVig())%>&finalVig=<%=converte.converteTela(apolice.getFinalVig())%>&codCi=<%=apolice.getCodCi()%>&idSegurado=<%=apolice.getIdSegurado().getIdSegurado()%>&idSeguradora=<%=apolice.getIdSeguradora().getIdSeguradora()%>&idBonus=<%=apolice.getIdBonus().getIdBonus()%>">Alterar</a>
            </td>
            <td>
                <a href="CadastroApolice.jsp?opcao=excluir&idApolice=<%=apolice.getIdApolice()%>&numeroApolice=<%=apolice.getNumeroApolice()%>&dataEmissao=<%=converte.converteTela(apolice.getDataEmissao())%>&inicioVig=<%=converte.converteTela(apolice.getInicioVig())%>&finalVig=<%=converte.converteTela(apolice.getFinalVig())%>&codCi=<%=apolice.getCodCi()%>&idSegurado=<%=apolice.getIdSegurado().getIdSegurado()%>&idSeguradora=<%=apolice.getIdSeguradora().getIdSeguradora()%>&idBonus=<%=apolice.getIdBonus().getIdBonus()%>">Excluir</a>
            </td>
        </tr>
        <% } %>
    </tbody>
</body>
</table>
</head>
</html>