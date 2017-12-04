<%-- 
    Document   : menu
    Created on : 27/11/2017, 19:46:03
    Author     : rafael.riese
--%>

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
            <a class="navbar-brand" href="appcontroller?do=initial"><p class="tituloMyStreet"><b>Riese's Shop</b></p></a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="appcontroller?do=initial"><p class="corMenuTexto"><span class="glyphicon glyphicon-home glyPosiMenu"></span> Home</p></a>
                </li>
                <li class="corActive">
                    <a href=""><p class="corActiveTexto"><span class="glyphicon glyphicon-user glyPosiMenu"></span> Bem Vindo(a) ${userName}</p></a>
                </li>
                <li class="corActive">
                    <a href="logout"><p class="corActiveTexto"><span class="glyphicon glyphicon-remove glyPosiMenu"></span>Sair</p></a>
                </li>
                <li class="corActive">
                    
                </li>
            </ul>
        </div>
    </div>
</nav>