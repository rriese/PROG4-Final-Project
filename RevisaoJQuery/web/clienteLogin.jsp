<%-- 
   Document   : clienteCadastro
   Created on : 13/09/2017, 20:22:21
   Author     : rafael.riese
   --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>JSP Page</title>
      <style>
         #loading-indicator {
         }
      </style>
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
      <script src="resources/js/form.js"></script>
   </head>
   <body>
      <div class="wrapper" role="main">
      <div class="container">
      <div class="row">
      <div id="conteudo" class="col-md-12">
      <div class="artigo" role="article">
         <div class="row">
            <div class="col-md-12">
               <div id="botCriaRecla"></div>
               <form>
                  <div id="divFotoUser">
                     <p id="tituloPagina">
                     <h1>Login</h1>
                     </p>
                     <p class="subTitulo">
                     <h4>Preencha com seu login e senha</h4>
                     </p>
                  </div>
                  <p class="labelLogin">
                     Usuário
                  </p>
                  <div class="form-group inputs has-feedback" id="usuario">
                     <input type="text" class="form-control inputLogin" name="usuario" id="user" required="required">
                     <span class="glyphicon glyphicon-user form-control-feedback glypPosicao">
                     </span>
                  </div>
                  <p class="labelLogin">
                     Senha
                  </p>
                  <div class="form-group inputs has-feedback" id="senha">
                     <input type="password" class="form-control inputLogin" name="senha" id="passwd" required="required">
                     <span class="glyphicon glyphicon-lock form-control-feedback glypPosicao">
                     </span>
                  </div>
                  <div class="form-group inputs">
                     <button type="button" id="btnLogin" class="btn btn-lg btn-block botoes">
                     Login
                     </button>
                  </div>
                  <center>
                     <div id="teste"></div>
                  </center>
                  <center><img src="https://media.giphy.com/media/3oEjI6SIIHBdRxXI40/giphy.gif" id="loading-indicator" style="display:none" alt=""/> </center>
               </form>
            </div>
         </div>
         <!-- div row conteudo -->
      </div>
   </body>
</html>