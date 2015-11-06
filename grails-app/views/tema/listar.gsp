<!doctype html>
<html lang="pt-br" ng-app="">
    <head>
        <g:render template="../imports" />
        <script src="/educafro/js/temas.js" ></script>
    </head>
    <body>
    <div id="container" class="width">
        <header>
            <g:render template="../menu" />
        </header>

        <div id="intro">
            <g:render template="../banner" />
        </div>

        <div id="body" class="width" ng-controller="temaController">
            <section id="content" class="col-lg-12">

                <div id='mensagemok'>
                    <g:message code="${flash.message}" />
                </div>

                <article>
                    <div class="centralizar">
                        <span class="titulo_artigo">Listar Temas</span>
                    </div>
                    <br>
                    <table border=1 ng-init="listagem()">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nome</th>
                                <th>Ações</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr ng-repeat="d in dados">
                                <td>{{d.id}}</td>
                                <td>{{d.nome}}</td>
                                <td>
                                    <a href="#formulario" id="bt_acoes">
                                        <i class="fa fa-pencil-square-o" ng-click="editar(d.id)"></i>
                                    </a>
                                    &nbsp
                                    <a ng-click="excluir($event)"  href="/educafro/tema/excluir/{{d.id}}">
                                        <i class="fa fa-trash-o apagar"></i>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </article>
                <br>
                <article class="col-lg-12" id="formulario" ng-show="mostrar">
                    <form class="form-horizontal" method="post" action="/educafro/tema/atualizar">

                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Identificador</label>
                            <div class=" col-lg-7">
                                <input type="text" class="form-control" id="id" name="id" ng-model="tema.id" readonly>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Nome</label>
                            <div class=" col-lg-7">
                                <input type="text" class="form-control" id="nome" name="nome" ng-model="tema.nome">
                            </div>
                        </div>

                        <div class="form-group centralizar">
                            <input type="submit" class=" btn btn-primary botoes"  value="Atualizar">
                        </div>
                    </form>
                </article>
            </section>
            <div class="clear">
                <br>
            </div>
        </div>
        <footer>
            <g:render template="../rodape" />
        </footer>
    </div>
    </body>
</html>



