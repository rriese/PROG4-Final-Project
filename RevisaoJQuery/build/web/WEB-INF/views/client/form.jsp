<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="/WEB-INF/views/layout/links.jsp" %>
    <body>
        <div class="wrapper" role="main">
            <div class="container">
                <div class="row">
                    <div id="conteudo" class="col-md-12">
                        <div class="artigo" role="article">
                            <div class="row">
                                <div class="col-md-12">
                                    <div id="botCriaRecla"></div>
                                    <form method="post" action="user?do=editclient?clientId=${user.id}">
                                        <div id="divFotoUser">
                                            <p id="tituloPagina">
                                            <h1>Edição</h1>
                                            </p>
                                            <p class="subTitulo">
                                            <h4>Preencha suas informações</h4>
                                            </p>
                                        </div>
                                        <input type="text" id="id" style="visibility: hidden" value="${user.id}">
                                        <p class="labelLogin">
                                            Nome
                                        </p>
                                        <div class="form-group inputs has-feedback" id="name">
                                            <input type="text" class="form-control inputLogin" name="name" required="required" value="${user.name}">
                                            <span class="glyphicon glyphicon-user form-control-feedback glypPosicao">
                                            </span>
                                        </div>
                                        <p class="labelLogin">
                                            Email
                                        </p>
                                        <div class="form-group inputs has-feedback" id="email">
                                            <input type="text" class="form-control inputLogin" name="email" required="required" value="${user.email}">
                                            <span class="glyphicon glyphicon-envelope form-control-feedback glypPosicao">
                                            </span>
                                        </div>
                                        <p class="labelLogin">
                                            Cpf
                                        </p>
                                        <div class="form-group inputs has-feedback" id="cpf">
                                            <input type="text" class="form-control inputLogin" name="cpf" required="required" value="${user.cpf}">
                                            <span class="glyphicon glyphicon-ok-circle form-control-feedback glypPosicao">
                                            </span>
                                        </div>
                                        <p class="labelLogin">
                                            Usuário
                                        </p>
                                        <div class="form-group inputs has-feedback" id="user">
                                            <input type="text" class="form-control inputLogin" name="user" required="required" value="${user.login}">
                                            <span class="glyphicon glyphicon-duplicate form-control-feedback glypPosicao">
                                            </span>
                                        </div>
                                        <p class="labelLogin">
                                            Senha
                                        </p>
                                        <div class="form-group inputs has-feedback" id="passwd">
                                            <input type="password" class="form-control inputLogin" name="passwd" required="required" value="${user.passwd}">
                                            <span class="glyphicon glyphicon-lock form-control-feedback glypPosicao">
                                            </span>
                                        </div>
                                        <div class="form-group inputs">
                                            <button type="submit" id="btnLogin" class="btn btn-lg btn-block botoes">
                                                Cadastrar
                                            </button>
                                        </div>
                                        ${msg}
                                        <center>
                                            <div id="teste"></div>
                                        </center>
                                        <center><img src="https://media.giphy.com/media/3oEjI6SIIHBdRxXI40/giphy.gif" id="loading-indicator" style="display:none" alt=""/> </center>
                                    </form>
                                </div>
                            </div>
                            <!-- div row conteudo -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>