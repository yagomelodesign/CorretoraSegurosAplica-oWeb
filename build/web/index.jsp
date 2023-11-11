<%-- 
    Document   : index
    Created on : 01/11/2022, 14:20:02
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
    font-size: 0.9rem;
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
  .footer_area{
      padding: 5rem 0px;
      font-family: 'Poppins', sans-serif;
  }
  .footer_menu{
  }
  .footer_menu ul li a{
      color: #585858;
      padding: 0px;
      text-decoration: none;
  }
  .footer_menu ul li a:hover{
      color:#E82B2B;
      text-decoration: none;
  }
  .footer_menu ul li{
      list-style-type: none;
      padding: 0.5rem 0px;
  }
  .footer_menu ul{
      margin:0px;
      padding: 0px;
  }
  .title{
      padding-bottom: 0.5rem;
  }
  .rs-icone{
    border-radius: 100%;
    box-shadow: 0 0 0.8rem rgba(0,0,0,0.2);
    padding: 1rem;
    color: #585858;
    background-color:#fff;
  }
  .rs-icone:hover{
      background-color: #e3e3e3;
  }
  
  
        </style>
	
</head>
<body>

<div class="container-fluid">
    

    <div>
        <div class="row text-center px-5 servicos1">
            <span class="aba-servicos">SERVIÇOS RÁPIDOS</span>
        </div>
        <div class="row px-5 py-2 servicos2">
                <div class="col-2 icone"><a class="texto-servicos" href=""><img class="img-fluid " src="img/casa.png">RESIDENCIAL</a></div>
                <div class="col-2 icone"><a class="texto-servicos" href=""><img class="img-fluid " src="img/predio.png">EMPRESARIAL</a></div>
                <div class="col-2 icone"><a class="texto-servicos" href=""><img class="img-fluid " src="img/carro.png">AUTO</a></div>
                <div class="col-2 icone"><a class="texto-servicos" href=""><img class="img-fluid " src="img/acidente-de-carro.png">SINISTRO</a></div>
                <div class="col-2 icone"><a class="texto-servicos" href=""><img class="img-fluid " src="img/24-horas.png">ATENDIMENTO</a></div>
                <div class="col-2 icone"><a class="texto-servicos" href=""><img class="img-fluid " src="img/cuidados-medicos.png">SAÚDE</a></div>

                <!-- <div class="col-2"><img class="img-fluid" src="img/banner.png"></div> -->
        </div>

    </div>
   

    <div class="banner">
        <a href=""><img class="img-fluid" src="img/banner4.jpg"></a>
    </div>

    <div class="row">
        <h2 class="servicos">NOSSOS SERVIÇOS</h2>
    </div>

    <div class="servicos-cards">
        <div class="container">
            <div class="row pb-3">
                <div class="col-md-4">
                    <div class="card">
                        <div class="img1"><a href="SeguroAuto.jsp"><img src="img/tracker.jpg" alt=""></a></div>
                        <div class="main-text">
                            <h2>SEGURO AUTO</h2>
                                <p>Segurança contra danos, furto e roubo para os seus veículos</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="img1"><a href="SeguroVida.jsp"><img src="img/familia.jpg" alt=""></a></div>
                        <div class="main-text">
                            <h2>SEGURO VIDA</h2>
                                <p>Segurança para quem você ama: sua família</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="img1"><a href="SeguroResidencial.jsp"><img src="img/casa.jpg" alt=""></a></div>
                        <div class="main-text">
                            <h2>SEGURO RESIDÊNCIA</h2>
                                <p>Segurança para sua residência, protegendo-a contra danos</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-4">
                    <div class="card">
                        <div class="img1"><a href="SeguroEmpresarial.jsp"><img src="img/empresaria2.jpg" alt=""></a></div>
                        <div class="main-text">
                            <h2>SEGURO EMPRESARIAL</h2>
                                <p>Segurança contra danos e perdas para a sua empresa</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="img1"><a href="PlanoSaude.jsp"><img src="img/medicos3.jpg" alt=""></a></div>
                        <div class="main-text">
                            <h2>PLANO DE SAÚDE</h2>
                                <p>Proteção e cuidado para quem você ama</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="img1"><a href="Financiamento.jsp"><img src="img/financiamento.jpg" alt=""></a></div>
                        <div class="main-text">
                            <h2>FINANCIAMENTO</h2>
                                <p>Realize seu sonho de ter um carro novo</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <div class="row">
        <h2 class="seguradoras">SEGURADORAS PARCEIRAS</h2>
    </div>

    <div id="demo" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ul class="carousel-indicators">
          <li data-target="#demo" data-slide-to="0" class="active"></li>
          <li data-target="#demo" data-slide-to="1"></li>
          <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        
        <!-- The slideshow -->
        <div class="carousel-inner">
          <div class="carousel-item active row px-5">
              <div>
                  <img class="mx-5" style="max-height: 2rem;" src="img/liberty.png" alt="">
                  <img class="mx-5" style="max-height: 2rem;" src="img/sulamerica.jfif" alt="">
                  <img class="mx-5"style="max-height: 2rem;" src="img/allianz-logo.png" alt="">
                  <img class="mx-5" style="max-height: 2rem;" src="img/azul-seguros.svg" alt="">
                  <img class="mx-5" style="max-height: 2rem;" src="img/bradesco.png" alt="">
                  <img class="mx-5"style="max-height: 2rem;" src="img/hdi.jfif" alt="">
              </div>  
          </div>

          <div class="carousel-item px-5">
                  <img class="mx-5" style="max-height: 2rem;" src="img/porto.png" alt="">
                  <img class="mx-5" style="max-height: 2rem;" src="img/sompo.png" alt="">
                  <img class="mx-5" style="max-height: 2rem;" src="img/suhai-seguradora-logo.png" alt="">
                  <img class="mx-5" style="max-height: 2rem;" src="img/tokio.png" alt="">
                  <img class="mx-5" style="max-height: 2rem;" src="img/mapfre.png" alt="">
          </div>
          
        </div>
        
        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
          <span class="carousel-control-next-icon"></span>
        </a>
      </div>
      
      <div class="row">
        <h2 class="localizacao">NOSSA LOCALIZAÇÃO</h2>
    </div>
    <iframe style="border-bottom: 0.4rem solid #d8d8d8;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3707.7206250694144!2d-45.91982818505648!3d-21.674722585652!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ca155f3ac42b5d%3A0x58d39a530368f922!2sMarquinho%20Seguros!5e0!3m2!1spt-BR!2sbr!4v1665977707631!5m2!1spt-BR!2sbr" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

    <footer class="footer_area">
      <div class="container-fluid">
        <div class="row">
          <!-- Single Widget-->
          
          <!-- Single Widget-->
          <div class="col-12 col-sm-6 col-lg">
            <div class="footer_body">
              <!-- Widget Title-->
                <h5 class="title">Sobre</h5>
              <!-- Footer Menu-->
              <div class="footer_menu">
                <ul>
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Corporate Sale</a></li>
                  <li><a href="#">Terms &amp; Policy</a></li>
                  <li><a href="#">Community</a></li>
                </ul>
              </div>
            </div>
          </div>
          <!-- Single Widget-->
          <div class="col-12 col-sm-6 col-lg">
            <div class="">
              <!-- Widget Title-->
              <h5 class="title">Support</h5>
              <!-- Footer Menu-->
              <div class="footer_menu">
                <ul>
                  <li><a href="#">Help</a></li>
                  <li><a href="#">Support</a></li>
                  <li><a href="#">Privacy Policy</a></li>
                  <li><a href="#">Term &amp; Conditions</a></li>
                  <li><a href="#">Help &amp; Support</a></li>
                </ul>
              </div>
            </div>
          </div>
          <!-- Single Widget-->
          <div class="col-12 col-sm-6 col-lg">
            <div class="">
              <!-- Widget Title-->
              <h5 class="title">Contact</h5>
              <!-- Footer Menu-->
              <div class="footer_menu">
                <ul>
                  <li><a href="#">Call Centre</a></li>
                  <li><a href="#">Email Us</a></li>
                  <li><a href="#">Term &amp; Conditions</a></li>
                  <li><a href="#">Help Center</a></li>
                </ul>
              </div>
            </div>
          </div>
          
          <div class="col-12 col-sm-6 col-lg-4">
            <div class="">
              <!-- Footer Logo-->
              
              <!-- Footer Social Area-->
              <h5 class="title mb-4">Redes Sociais</h5>
              <div class="footer_menu">
              <div class="redes-sociais">
                  <a href="https://www.instagram.com/marquinho_seguros/"><i class="rs-icone me-4 fa-brands fa-instagram"></i></a>
                  <a href="https://www.facebook.com/profile.php?id=100064061739470"><i class="rs-icone me-4 fa-brands fa-facebook"></i></a>
                  <a href="https://api.whatsapp.com/send?phone=5535997401036&text=Ol%C3%A1%2C%20gostaria%20de%20saber%20mais%20sobre%20os%20servi%C3%A7os%20oferecidos%20pela%20corretora%20Marquinho%20Seguros!"><i class="rs-icone fa-brands fa-whatsapp"></i></a>
              </div>
              </div>
            </div>
          </div>
          
              <div class="footer-logo" style="margin-top: 5rem;">
              <a href="index.jsp"><img style="max-width: 11rem;" src="img/logo.png" alt=""></a>
              <p class="pt-3" style="font-size: 0.7rem; color:#585858;">© 2022 Marquinho Seguros - Todos os direitos reservados</p>
              <p style="font-size: 0.7rem; color:#E82B2B;">Desenvolvido por João Pedro Azevedo e Yago</p>
              </div>
        
      </div>
    </footer>
    <!-- Login -->
    
   
</body>
</html>