<%-- 
    Document   : SeguroAuto
    Created on : 01/11/2022, 15:14:39
    Author     : trist
--%>

<!<%@include file="Menu.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Marquinho Seguros</title>
    
    <!-- Arquivos CSS -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

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

.servicos1{
    background-color: #fff;
    margin-top: 125px;
}

.servicos2{
    background-color: #e7e7e7;
}
  
.banner{
    padding:0px;
    min-width: 100%;
}

.icone{
    padding: 0px;
    max-width: 64px;
}
.container-fluid{
    margin:0px;
    padding: 0px;
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
.aba-servicos{
    background-color: #e7e7e7;
    color: #9F1E12;
    font-weight: 600;
    width: 12rem;
    border-radius: 20px 20px 0px 0px;
    padding-top: 5px;
}
.servicos{
    color:#c72121;
    font-weight: 700;
    padding-top: 7rem;
    padding-bottom: 4rem;
  }
  .servicos-cards{
    display: inline-block;
}
.card{
    box-shadow: 0 0 30px rgba(0,0,0,0.5);
    overflow: hidden;
    border-radius: 15px;
    margin: 0 20px;
}
.img1 img{
    height: 250px;
    border-top-right-radius: 15px ;
    border-top-left-radius: 15px ;
    width: 100%;
}
.main-text{
    text-align: center;
}
.main-text h2{
    color: #fff;
    background-color:#c72121;
    text-transform: uppercase;
    font-weight: 500;
    font-size: 1.8rem;
    padding: 0.4rem 0;
}
.main-text p{
    font-size: 1rem;
    padding: 0.6rem 2rem;
    text-decoration: none;
}
  .seguradoras{
    font-family: 'Poppins', sans-serif;
    color:#c72121;
    font-weight: 700;
    padding-top: 7rem;
    padding-bottom: 4rem;
  }
  .localizacao{
    font-family: 'Poppins', sans-serif;
    color:#c72121;
    font-weight: 700;
    padding-top: 7rem;
    padding-bottom: 4rem;
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
  .botao-paginas{
      color: #ffffff;
      background-color: #c72121;
      border-radius: 1rem;
      border: none;
      padding: 0.5rem 2rem;
  }
  .botao-paginas:hover,
  .botao-paginas:hover:focus:hover {
    color: #fff;
    background: #E82B2B;
}
   </style>
	
</head>
<body>
    <div class="container-fluid">
    
        <div class="container">
            <div class="row">
                <h2 class="servicos pb-4 mt-3">SEGURO RESIDENCIAL</h2>
            </div>
            <div class="texto-paginas justify-content-center pt-2">
            <p>Imprevistos acontecem e nessas horas ninguém quer ser pego de surpresa com uma despesa extra no orçamento. Um Seguro Residencial é a melhor forma de cuidar do seu imóvel e dos bens que estão dentro dele, proporcionando tranquilidade a sua família.
               </p>
               <p class="mt-3">Sua casa protegida por um custo menor do que imagina.
            </p>
               <p class="mt-3">Entre em contato e solicite uma cotação.</p>

        </div>
        <div><img class="img-paginas" src="img/residencia.png" alt=""></div>
        <div class="mt-1"><button class="botao-paginas">COTAR AGORA</button></div>
        </div>
       
    
        
    </div>
   
    </body>
    </html>