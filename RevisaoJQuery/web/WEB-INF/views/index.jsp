<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="https://upload.wikimedia.org/wikipedia/commons/2/2e/Mackenzie_M.png">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-default" role="navigation">
            <div class="container ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle botNavMenu" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="icon-bar corActive">
                        </span>
                        <span class="icon-bar corActive">
                        </span>
                        <span class="icon-bar corActive">
                        </span>
                    </button>
                    <a class="navbar-brand" href="#"><p class="tituloMyStreet"><b>Riese's Shop</b></p></a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#"><p class="corMenuTexto"><span class="glyphicon glyphicon-home glyPosiMenu"></span> Home</p></a>
                        </li>
                        <li class="corActive">
                            <a href=""><p class="corActiveTexto"><span class="glyphicon glyphicon-user glyPosiMenu"></span> Bem Vindo(a) ${userName}</p></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container larguraGrande marginPrimeiro">
            <div class="row">
                <div id="conteudo" class="col-md-12">
                    <div class="thumbnail">
                        <div class="caption">
                            <a href="mvcmenu?do=showclient">
                                <button type="button" class="btn btn-default btn-lg btn-block glyphicon glyphicon-user">
                                    Clientes
                                </button>
                            </a>
                            <a href="EditaPerfil">
                                <button type="button" class="btn btn-default btn-lg btn-block glyphicon glyphicon-lock">
                                    Funcionários
                                </button>
                            </a>
                            <a href="EditaSenha">
                                <button type="button" class="btn btn-default btn-lg btn-block glyphicon glyphicon-glass">
                                    Produtos
                                </button>
                            </a>
                            <a href="EditaSenha">
                                <button type="button" class="btn btn-default btn-lg btn-block glyphicon glyphicon-shopping-cart">
                                    Pedidos
                                </button>
                            </a>
                            <a href="logout">
                                <button type="button" class="btn btn-default btn-lg btn-block glyphicon glyphicon-log-out">
                                    Sair
                                </button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 ">
                        <p>
                            &copy; Riese's Shop - Todos os direitos reservados.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>