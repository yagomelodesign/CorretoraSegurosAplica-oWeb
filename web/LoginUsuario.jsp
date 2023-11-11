<%@page import="modelo.Usuario"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.DAOUsuario"%>
<%@include file="Menu.jsp" %>
<%
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    DAOUsuario login = new DAOUsuario();
    Usuario usuario = new Usuario();
    usuario.setEmail(email);
  
    ResultSet rs = login.getLogin(usuario);
    
    if (!rs.next()) {
        response.sendRedirect("Login.jsp?mensagem=Login invalido");
    } else {
        String senhaBD = rs.getString("senha");
        String nomeBD = rs.getString("nome");
        String codigoIDUsuarioBD = rs.getString("idusuario");
        if (!senha.equals(senhaBD)) {
            response.sendRedirect("Login.jsp?mensagem=Senha invalida");
        } else {
            session.setAttribute("email", email);
            session.setAttribute("nome", nomeBD);
            session.setAttribute("codigoUsuario", codigoIDUsuarioBD);
        }
    }
   
%>

<html>
    <head>
        <title>Página Principal</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

        <style>
            .caixa{
                width: 900px;
                border-radius: 30px;
                border: 1px solid #191919;
                align-items: center;
                margin-top: 10rem;
                padding: 20px;
            }
            .botao-paginas{
      color: #ffffff;
      background-color: #c72121;
      border-radius: 1rem;
      border: none;
      padding: 0.5rem 2rem;
  }
        </style>
            
    </head>
    <body >
       
        <div class="caixa">
            
            <p>Bem vindo, voc&ecirc; esta logado! </p>
            <br>
            <p>* Para sua seguran&ccedil;a, efetue seu logoff sempre que voc&ecirc; sair do nosso site, para isso clique no link localizado na barra logo acima</p>
            <br>
            <p>Em caso de d&uacute;vida, entre em contato pelo e-mail: yago.agmelo@gmail.com</p>
            <br>
            <p>Agora você tem acesso aos cadastros realizados no site, vamos lá?</p>
            <div class="mt-4"><a href="Sistema.jsp"><button class="botao-paginas">ACESSAR SISTEMA</button></a></div>

                
        </div>

    </body>
 
</html>