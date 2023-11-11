<%-- 
    Document   : AssistenciaSeguradora
    Created on : 06/12/2022, 21:53:28
    Author     : trist
--%>
<%@include file="Menu.jsp" %>


        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Marquinho Seguros</title>
    
    <!-- Arquivos CSS -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/all.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
   

	<!-- favicon -->

        <style>
  *{
    margin: 0 auto;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    text-align: center;
    display: flex;
    color: #000;
    background-color: #fff;
    padding: 0;
    margin: 0;
}

#menu {
    background-color: rgba(255, 255, 255, 0.9);;
    box-shadow: none;
    padding: 0;
}

#menu ul {
    list-style: none;
    background-color: rgba(255, 255, 255, 0);;
    padding: 0;
    margin: 0;
    align-items: center;
}

#menu ul li {
    display: inline;
}

.nav-link{
    font-size: 1rem;
}

#menu ul li a{
    color: #000;
    padding-left: 3rem;
    padding-right: 3rem;
    display: inline-block;
    text-decoration: none;
}

#menu ul li a:hover{
    color:#E82B2B;
}

#menu .cotacao{
    background: #c72121;
    padding: 8px 30px;
    margin-left: 20px;
    border-radius: 40px;
    color: #fff;
}

#menu .cotacao:hover,
#menu .cotacao:focus:hover {
    color: #fff;
    background: #E82B2B;
}

.nav-item:hover{
    color: #E82B2B;
}

.container-fluid{
    margin:0px;
    padding: 0px;
}
  .servicos{
    color:#c72121;
    font-weight: 700;
    padding-top: 7rem;
    padding-bottom: 4rem;
  }
  .texto-servicos{
    color: #000;
    text-decoration: none;
    font-size: 0.9em;
    margin: 0;
}
  .texto-servicos:hover{
    color: #E82B2B;
}
  .texto-paginas{
      padding-left: 10%;
      padding-right: 10%;
  }
  .img-paginas{
    padding-left: 10%;
    padding-right: 10%;
    max-height: 22rem;
  }
  .btn-card-seguradora{
      font-size: 0.9rem;
      text-decoration: none;
      color: #ffffff;
      border-radius: 2rem;
      border: none;
      padding:0.5rem 1rem;
  }
    .btn-card-seguradora:hover,
  .btn-card-seguradora:hover:focus:hover {
    color: #fff;
    background: #E82B2B;
}

.card{
    background: #FFFFFF;
    box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.25);
    border-radius: 1rem;
}

        </style>
    </head>
    <body>
        
        
        <div class="container-fluid">
        
    
        <div class="container">
            <div class="row">
                <h2 class="servicos pb-4 mt-3">EM CASO DE SINISTRO:</h2>
            </div>
            <div class="texto-paginas justify-content-center pt-2">
            <p>1 - Encontre a seguradora responsável pelo seu seguro </p>
            <p>2 - Escolha a melhor opção para entrar em contato com ela</p>
            <p>3 - Esteja com os documentos em mão</p>
            </p>
        </div>
        </div>
       
            <div class="card" style="width:300px">
                <div class="mt-5 mb-5">
                    <img class="card-img" style="max-width: 180px;" src="img/sulamerica.png" alt="Card image">
                </div>
                <div class="card-title" style="background-color:#E82B2B; margin: 0; padding: 0">
                <h4 class="pt-3" style="color:#fff;">SulAmerica</h4>
                <p style="color:#fff; font-size: 1rem; font-weight: 300">Seguradora</p>
                </div>
            <div class="card-body my-5">
                <div class="pb-4"><a href="#" class="btn-card-seguradora" style="background-color: #63E558;">WhatsApp da seguradora</a></div>
                <div><a href="#" class="btn-card-seguradora" style="background-color: #309BE9;">Ligar para a seguradora</a></div>
            </div>
            </div>
    
    </div>
        
        
    </body>
</html>
