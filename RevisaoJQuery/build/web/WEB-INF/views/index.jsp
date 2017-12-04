<!DOCTYPE html>
<html>    

    <%@ include file="/WEB-INF/views/layout/links.jsp" %>

    <body>

        <%@ include file="/WEB-INF/views/layout/menu.jsp" %>

        <div class="container larguraGrande">
            <div class="row marginPrimeiro">
                <a href="user?do=showclient">
                    <div class="col-xs-12 col-sm-6 col-md-4 paddingDiv" id="link">
                        <div class="divImg">
                            <center><img src="http://www.encontresuafranquia.com.br/wp-content/uploads/2015/07/cliente.jpg" class="foto"></center>
                        </div>
                        <div class="textoImg">Clientes</div>
                    </div>
                </a>
                <a href="../Employees">
                    <div class="col-xs-12 col-sm-6 col-md-4 paddingDiv" id="link">
                        <div class="divImg">
                            <center><img src="http://1.bp.blogspot.com/_LSxW2sdp8xc/S4qFaZ4LnPI/AAAAAAAALx8/w3KFxQBiuw4/s320/manutencao.png" class="foto"></center>
                        </div>
                        <div class="textoImg">Funcionários</div>
                    </div>
                </a>
                <a href="../Products">
                    <div class="col-xs-12 col-sm-6 col-md-4 paddingDiv" id="link">
                        <div class="divImg">
                            <center><img src="https://safenet.gemalto.com/uploadedImages/images/Icons/Blue-Token-Icon.png" class="foto"></center>
                        </div>
                        <div class="textoImg">Produtos</div>
                    </div>
                </a>
                <a href="../Orders">
                    <div class="col-xs-12 col-sm-6 col-md-4 paddingDiv" id="link">
                        <div class="divImg">
                            <center><img src="https://imgs.tanlupstatic.com/?url=https%3A%2F%2Fqol.s3.amazonaws.com%2Fproducts%2F549-b07928906ce5302e515c13239281f3a3.png&w=300&client=trych&filter=antialias&fmt=png&q=75&opt=1&sig=41638391cf5b4f67d040aac5b269f6f6df779a46" class="foto"></center>
                        </div>
                        <div class="textoImg">Pedidos</div>
                    </div>
                </a>
                <a href="../Historic">
                    <div class="col-xs-12 col-sm-6 col-md-4 paddingDiv" id="link">
                        <div class="divImg">
                            <center><img src="http://www.redstarresume.com/wp-content/uploads/2013/09/executive_search.jpg" class="foto"></center>
                        </div>
                        <div class="textoImg">Histórico de Compras</div>
                    </div>
                </a>
            </div>
        </div>                
        <br>

        <%@ include file="/WEB-INF/views/layout/footer.jsp" %>

    </body>
</html>