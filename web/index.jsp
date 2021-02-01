<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Usuários </title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h1 class="text-center">Cadastro de Usuários</h1>

        <div class="col-12 text-center" style="background-color: ">
            <div class="news">
                <form action="cadastraUsuario.jsp" method="post">
                    <div class="col-sm-12 mt-2">
                        <label for="exampleInputEmail1"><font style="color: black">Usuário: </font><font style="color: red">*</font></label>
                        <input type="text" name="usuario" class="form-control" placeholder="Nome">
                    </div>
                    <div class="col-sm-12">
                        <label for="exampleInputEmail1"><font style="color: black">Senha: </font> <font style="color: red">*</font></label>
                        <input type="password" name="senha" class="form-control" placeholder="Senha">
                    </div>
                    <div class="col-sm-12 text-center mt-2 mb-2">
                        <button type="submit" name="btCadastro" class="btn btn-primary mb-3">Incluir Usuário</button>
                    </div>
                </form>
                    <div class="col-sm-12 text-center mt-2 mb-2">
                        <a href="Home.jsp"><button type="submit" name="btCadastro" class="btn btn-primary mb-3">Voltar</button></a>
                    </div>

            </div>
        </div>

    </body>
</html>
