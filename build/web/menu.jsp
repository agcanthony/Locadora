<%-- 
    Document   : menu
    Created on : 30/05/2019, 17:35:00
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de acesso</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="menuBlack.css">
    </head>
    <body>


  <header>
      <input id="menu-hamburguer" type="checkbox">
      <label for="menu-hamburguer">
        <div class="menu-t">
          <span class="hamburguer"></span>
        </div>
      </label>
          
      <nav class="menu">
          <!--<div class="logo">Logo</div>-->
          <ul>
                <li class="hvr-underline-from-center"><a href="#"><span class="icon-home3">&nbsp;Home</a></li>
                <li class="hvr-underline-from-center"><a href="#"><span class="icon-briefcase">&nbsp;Ofertas</a></li>
                <li class="hvr-underline-from-center"><a href="#"><span class="icon-rocket">&nbsp;Contato</a></li>
                <li class="hvr-underline-from-center"><a href="#"><span class="icon-earth">&nbsp;Quem somos</a></li>
                <li><a class="active" href="#">Locar</a></li>
            </ul>
      </nav>
  </header>
        <h1 style="margin-top: 90px" class="text-center">MENU </h1>

        <section class="img-um-site p filtro">
            <div class="row">
                <div class="col-6">
                    <div class="news">
                        <div class="row ml-1 mr-1" style="background-color: rgba(255,255,255,.3); border-radius: 15px; border: 2px solid rgba(255,255,255,.7);">
                            <h1 class="text-center" style="font-size: 40px; width: 100%; color: white;">Ainda não é nosso cliente?</h1>
                            <h1 class="lead text-center" style="font-size: 30px; width: 100%; color: white;">Seja um cliente e ganhe descontos.</h1>
                            <p class="text-center" style=" width: 100%;">
                                <button type="button" class="btn btn-outline-light btn-lg"><a href="listaClientes.jsp"><h1>Clientes</h1></a></button>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="news">
                        <div class="row ml-1 mr-1" style="background-color: rgba(255,255,255,.3); border-radius: 15px; border: 2px solid rgba(255,255,255,.7);">
                            <h1 class="text-center" style="font-size: 40px; width: 100%; color: white;">Conheça nossos automoveis</h1>
                            <h1 class="lead text-center" style="font-size: 30px; width: 100%; color: white;">Os melhores carros pelo melhor preço.</h1>
                            <p class="text-center" style=" width: 100%;">
                                <button type="button" class="btn btn-outline-light btn-lg"><a href="sugestao.html"><h1>Carros</h1></a></button>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
