<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h1 class="text-center">Cadastro de Cliente</h1>

        <div class="col-12 text-center" style="background-color: ">
            <div class="news">
                
                <form action="cadCliente.jsp" method="post">
                    
                    <div class="col-sm-12 mt-2">
                        <label for="exampleInputEmail1"><font style="color: black">ID: </font><font style="color: red">*</font></label>
                        <input type="text" name="id" class="form-control" placeholder="ID" readonly="readonly">
                    </div>
                    <div class="col-sm-12">
                        <label for="exampleInputEmail1"><font style="color: black">Nome: </font> <font style="color: red">*</font></label>
                        <input type="text" name="nome" class="form-control" placeholder="Nome">
                    </div>
                    <div class="col-sm-12">
                        <label for="exampleInputEmail1"><font style="color: black">Data de Nascimento: </font> <font style="color: red">*</font></label>
                        <input type="text" name="datanasc" class="form-control" placeholder="Data de Nascimento">
                    </div>
                    <div class="col-sm-12">
                        <label for="exampleInputEmail1"><font style="color: black">Telefone: </font> <font style="color: red">*</font></label>
                        <input type="text" name="telefone" class="form-control" placeholder="Telefone">
                    </div>
                    <div class="col-sm-12">
                        <label for="exampleInputEmail1"><font style="color: black">Endereço: </font> <font style="color: red">*</font></label>
                        <input type="text" name="endereco" class="form-control" placeholder="Endereço">
                    </div>
                    <div class="col-sm-12">
                        <label for="exampleInputEmail1"><font style="color: black">Categoria de habilitação: </font> <font style="color: red">*</font></label>
                        <input type="text" name="carteira" class="form-control" placeholder="Categoria de habilitação">
                    </div>
                    
                    
                    <div class="col-sm-12 text-center mt-2 mb-2">
                        <button type="submit" name="btCadastro" class="btn btn-primary mb-3">Cadastrar</button>
                    </div>
                </form>
                
                <div class="col-sm-12 text-center mt-2 mb-2">
                    <a href="listaClientes.jsp"><button type="submit" class="btn btn-primary mb-3">Voltar</button></a>
                </div>
            </div>
        </div>
        
        
        
    </body>
</html>
