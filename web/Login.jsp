<%-- 
    Document   : Login
    Created on : 11/11/2022, 08:24:26
    Author     : 12046386671
--%>
<%@include file="Menu.jsp" %>

<script>
            function enviar(par){
                if (par == 'login'){
                    if (document.cadastro.email.value == ''){
                      alert("Preencha o campo usuario");
                    }else if (document.cadastro.senha.value == ''){
                        alert("Preencha o campo senha");
                    }else {
                        document.cadastro.action='LoginUsuario.jsp';
                        document.cadastro.submit();
                    }
                } 
            }
        </script>
        
        <% String mensagem = request.getParameter("mensagem"); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/all.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    

	<!-- favicon -->
	<link rel="shortcut icon" href="images/favicon.png">
        <style>
*{
    margin: 0 auto;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    color: #000;
    background-color: #fff;
    padding: 0;
    margin: 0;
}

#menu {
    background-color: rgba(255, 255, 255, 0.9);
    box-shadow: none; 
    padding: 0;
}

.formulario{
    width: 20rem;
    height: 25rem;
    background-color: #f6f6f6;
    box-shadow: 0 0 20px rgba(0,0,0,0.3);
    font-size: 1rem;
    padding: 2rem 2rem;
    margin-top:10rem;
    border-radius: 1rem;
}
.tituloFormulario{
    text-align: center;
}
 .botao-login-limpar{
      color: #ffffff;
      font-family: 'Poppins', sans-serif;
      font-size: 1rem;
      background-color: #c72121;
      border-radius: 1rem;
      border: none;
      margin-top: 1rem;
      padding: 0.5rem 1.5rem;
  }
  .botao-login-enviar{
      color: #ffffff;
      font-family: 'Poppins', sans-serif;
      font-size: 1rem;
      background-color: #00cc00;
      border-radius: 1rem;
      border: none;
      margin-top: 1rem;
      padding: 0.5rem 1.5rem;
  }
  .imagemLogin{
      max-width: 350px;
      margin-bottom: 1rem;
  }
  .ladoLogin{
    margin-top:8rem;
    text-align: center;
    align-items: center;
    border-right: 2px solid #555555;
  }
  .ladoLogin p{
      text-align: left;
      background: #f6f6f6;
      margin-left: 6rem;
      margin-right: 6rem;
      padding: 0.5rem 0.5rem;
      border-radius: 0.5rem;
  }
        
        </style>
    </head>
    <body>
       
        <div class="row">
             
      
                 <div class="col-7 ladoLogin">
                    <a href=""><img class="img-fluid imagemLogin" src="img/cadeado.png"></a>
                     <p>- Se você já possui um cadastro, então se identifique
                         usando seu login e senha!</p> 
                     <p>- Se 
                   você já estava utilizando o software, sua sessão pode ter 
                   expirado portanto apenas faça o login novamente </p>
                     <p>- Se você ainda não possui um login e senha, dirija-se ao seu gerente</p>
                     <p>Em caso de dúvida entre em contato pelo e-mail:  suporte.jey@gmail.com</p>
                </div>
 
            <div class="col-5 fundoFormulario">
            <form  class="col-md-4 col-sm-12 formulario" name="cadastro" method="POST">

                <h3 class="mb-5 tituloFormulario">Login</h3>
                
                   <p>Usuário: <input required class="form-control" name="email" maxlength="50" placeholder="digite seu usuário"></p>  
                   <p>Senha:<input required  class="form-control" type="password" name="senha" maxlength="50" placeholder="digite sua senha"></p>

                   <div class="text-center">
                   <input class="btn botao-login-limpar me-1" type="reset" value="Limpar">
                   <input class="btn botao-login-enviar" type="submit" name="image" onClick="enviar('login')" value="Entrar">


                   </div>
                   
                   <% if(mensagem != null){%>
                  
                   <p class="mt-4 px-2 py-1 pe-3" style="font-size: 0.8rem; background-color: #d8d8d8; border-radius: 0px 30px 30px 0px; "><%= mensagem %></p>
                 
                   
                   
                   <%}%>
         
                </form>
                   
                   </div>
         </div>     
               
         
    </body>
</html>
