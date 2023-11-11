<%-- 
    Document   : Sistema
    Created on : 02/12/2022, 08:49:27
    Author     : 12046386671
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Corretora de Seguros</title>
        
        <link rel="stylesheet" href="css/bootstrap.css">
                <link rel="stylesheet" href="css/all.css">
                <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
	        <link rel="shortcut icon" href="images/favicon.png">


		<script src="js/jquery.js"></script>
		<script src="js/popper.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/fsbanner.js"></script>
		<script src="js/jquery.downCount.js"></script>
		<script src="js/smooth_navigation.js"></script>
		<script src="js/wow.min.js"></script>
		<script src="js/backtotop.js"></script>
		
                <script src="js/validadados.js"></script>
                
                <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
        <style>
*{
    margin: 0 auto;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    text-align: center;
    color: #000;
    background-color: #fcfcfc;
    padding: 0;
    margin: 0;
}

#menu {
    background-color: #0f0f0f;
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
    color: #fff;
    padding-left: 3rem;
    padding-right: 3rem;
    display: inline-block;
    text-decoration: none;
}

#menu ul li a:hover{
    color:#b0b0b0;
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
.titulo-cadastros{
    margin-top: 5rem;
    margin-bottom: 5rem;
}
.card{
    border-radius: 0.5rem;
    border: none;
    box-shadow: 0 0 5px rgba(0,0,0,0.3);
    margin-bottom: 1rem;
    width: 25rem;
    text-decoration: none;
    color: #333333;
}
.card:hover,
  .card:hover:focus:hover {
    color: #000;
    background: #f3f3f3;
}
.cards-cadastros{
    margin-top:10rem;
    margin-left: 3rem;
    margin-right: 3rem;
}

.novo-cadastro{
      color: #333333;
      background-color: #ffffff;
      border-radius: 1rem;
      border: none;
      padding: 0.5rem 2rem;
      box-shadow: 0 0 15px rgba(0,0,0,0.2);
  }
  .novo-cadastro:hover,
  .novo-cadastro:hover:focus:hover {
    color: #fff;
    background: #E82B2B;
}


</style>
                
        
    </head>
    <body>

    <nav id="menu" class="navbar navbar-expand-lg py-2 px-5">
        <a class="navbar-brand" href="index.jsp"><img style="max-width: 10rem;" src="img/logo-contraste.png" alt=""></a>
        <div class="collapse navbar-collapse justify-content-end">
        <ul class="navbar-nav">
            <!--<li class="nav-item empresa"><div class="dropdown"><a class="nav-link" data-bs-toggle="dropdown" href="#empresa">Cadastros<i class=" ps-2 fa-solid fa-angle-down"></i></a>
            <div class="dropdown-menu">
                <div class="row">
                    <div class="px-5 py-3"><h5><strong>Cadastros Gerais</strong></h5>
                        <ul>
                            <li class="dropdown-item"><a class="py-1" href="CadastroApolice.jsp">Apólice</a></li>
                            <li class="dropdown-item"><a class="py-1" href="CadastroApoliceXServico.jsp">Serviços da Apólice</a></li>
                            <li class="dropdown-item"><a class="py-1" href="CadastroBonus.jsp">Bônus</a></li>
                            <li class="dropdown-item"><a class="py-1" href="CadastroFuncionario.jsp">Funcionário</a></li>
                            <li class="dropdown-item"><a class="py-1" href="CadastroLogin.jsp">Login</a></li>
                            <li class="dropdown-item"><a class="py-1" href="CadastroPerfil.jsp">Perfil</a></li>
                            <li class="dropdown-item"><a class="py-1" href="CadastroPessoa.jsp">Pessoa</a></li>
                            <li class="dropdown-item"><a class="py-1" href="CadastroSegurado.jsp">Segurado</a></li>
                            <li class="dropdown-item"><a class="py-1" href="CadastroSeguradora.jsp">Seguradora</a></li>
                            <li class="dropdown-item"><a class="py-1" href="CadastroServicos.jsp">Serviços</a></li>
                            <li class="dropdown-item"><a class="py-1" href="CadastroVeiculo.jsp">Veículo</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            </div></li>-->
            <li class="nav-item empresa"><div class="dropdown"><a class="nav-link" data-bs-toggle="dropdown" href="#empresa">Login<i class="ps-2 fa-solid fa-power-off"></i></a>
            <div class="dropdown-menu">
                <div class="row">
                    <div class="px-3 py-1">
                        <ul>
                            <li class="dropdown-item"><a class="py-1" style="color:#000;" href="logoff.jsp">Sair</a></li>
                        </ul>
                    </div>
                </div>
            </div>        
            </ul>
        </div>
    </nav>
    <!--<body>
        <img src="imagens/logo.jpg" width="500" height="115" alt="logo"/>



        <nav>

           
                 <ul class="menu">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">Cadastro</a>
                    <ul>
                        <li><a href="CadastroCidade.jsp">Cidade</a></li>
                        <li><a href="CadastroFuncionario.jsp">Funcionário</a></li>
                    </ul>
                </li>
                <li><a href="#">Relatórios</a> 
                    <ul>
                        <li><a target="blank" href="RelatorioCidade.jsp">Cidade</a></li>
                        <li><a target="blank" href="RelatorioFuncionario.jsp" >Funcionário</a></li>
                    </ul>
                </li>
                <li><a href="Contato.jsp">Contato</a></li>                
                <li><a href="Sobre.jsp">Sobre</a></li> 
                  <li>
                    <% if (session.getAttribute("nome") != null) {%>
                    Bem Vindo, <%= session.getAttribute("nome")%>
                    <a href="logoff.jsp">logoff</a>
                    <% }%>
                </li>
            </ul>
        </nav>
               --> 
               <h2 class="titulo-cadastros">Sistema de Cadastros</h2>
               <div>
                    <div><button class="novo-cadastro"><i class="pe-4 fa-thin fa-plus"></i>Novo Cadastro</button></div>
               </div>
               
                <div class="container-fluid">
                    <section class="cards-cadastros">
                        <div class="row">
                            <div class="col-xl-4 col-sm-6 mb-4">
                                <a href="index.jsp" class="card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between px-md-1">
                                            <div class="align-self-center">
                                            <i class="pe-4 fa-solid fa-id-card"></i>
                                            </div>
                                                <div class="text-end">
                                                <p class="mb-0">Apólices</p>
                                                </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            
                            <div class="col-xl-4 col-sm-6 mb-4">
                                <a href="index.jsp" class="card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between px-md-1">
                                            <div class="align-self-center">
                                                <i class="pe-4 fa-regular fa-user"></i>
                                            </div>
                                                <div class="text-end">
                                                <p class="mb-0">Segurados</p>
                                                </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            
                            <div class="col-xl-4 col-sm-6 mb-4">
                                <a href="index.jsp" class="card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between px-md-1">
                                            <div class="align-self-center">
                                                <i class="pe-4 fa-solid fa-user-plus"></i>
                                            </div>
                                                <div class="text-end">
                                                <p class="mb-0">Possíveis Novos Clientes</p>
                                                </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            
                            <div class="col-xl-4 col-sm-6 mb-4">
                                <a href="index.jsp" class="card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between px-md-1">
                                            <div class="align-self-center">
                                                <i class="pe-4 fa-regular fa-building"></i>
                                            </div>
                                                <div class="text-end">
                                                <p class="mb-0">Seguradoras</p>
                                                </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            
                            <div class="col-xl-4 col-sm-6 mb-4">
                                <a href="index.jsp" class="card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between px-md-1">
                                            <div class="align-self-center">
                                                <i class="pe-4 fa-solid fa-user-check"></i>
                                            </div>
                                                <div class="text-end">
                                                <p class="mb-0">Funcionários</p>
                                                </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            
                            <div class="col-xl-4 col-sm-6 mb-4">
                                <a href="index.jsp" class="card">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between px-md-1">
                                            <div class="align-self-center">
                                                <i class="pe-4 fa-regular fa-file-pdf"></i>
                                            </div>
                                                <div class="text-end">
                                                <p class="mb-0">Relatório</p>
                                                </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            
                            
                            </div>
                    </section>
                </div>
              
                
    </body>
    <br>
</html>
    
