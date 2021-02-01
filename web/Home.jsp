<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Inicial</title>
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






        <div class="" style="margin-top: 90px">
            <div class="text-center row mb-4">
                <div class="col">
                    <div role="header">
                        <h1 style="color: #eb3f1c;">Locadora</h1> 
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-10" style="background-color: #eb3f1c">
                    <div class="news">
                        <img src="img1.png" class="img-fluid">
                    </div>
                </div>
                <div class="col-2" style="background-color: #eb3f1c">
                    <div class="news">
                        <form action="validaUsuario.jsp" method="post">
                            <div class="col-sm-12 mt-2">
                                <label for="exampleInputEmail1"><font style="color: white">Usuário: </font><font style="color: red">*</font></label>
                                <input type="text" name="usuario" class="form-control" placeholder="Nome">
                            </div>
                            <div class="col-sm-12">
                                <label for="exampleInputEmail1"><font style="color: white">Senha: </font> <font style="color: red">*</font></label>
                                <input type="password" name="senha" class="form-control" placeholder="Senha">
                            </div>
                            <div class="col-sm-12 text-center mt-2 mb-2">
                                <button type="submit" name="btLogin" class="btn btn-primary mb-3">Login</button>
                                <br>
                                <font style="color: white"><a href="index.jsp">Não tem conta? cadastre-se</a></font>
                            </div>
                        </form>

                    </div>
                </div>
            </div>





            <div class="" style="background-color: white">
                <div class="text-center row mb-4">
                    <div class="col">
                        <div role="header">
                            <h1 style="color: #eb3f1c;">Opçõess</h1> 
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-4" style="background-color:">
                        <div class="news text-center">
                            <img src="img3.jpg" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-4" style="background-color: ">
                        <div class="news text-center">
                            <img src="img2.jpg" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-4" style="background-color: ">
                        <div class="news text-center">
                            <img src="img3.jpg" class="img-fluid">
                        </div>
                    </div>
                </div>
            </div>




    </body>
</html>
