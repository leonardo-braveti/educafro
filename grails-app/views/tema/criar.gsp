<!doctype html>
<html lang="pt-br">
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
            <div id="body" class="width">

             <section id="content" class="col-lg-12">

                <div id='mensagemok'>
                    <g:message code="${flash.message}" />
                </div>

                <article>
                    <div class="centralizar">
                        <span class="titulo_artigo">Criar tema</span>
                    </div>
                    <br>
                    <form class="form-horizontal" method="post" action="/educafro/tema/cadastrar">

                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Nome</label>
                            <div class=" col-lg-7">
                                <input type="text" class="form-control" id="nome" name="nome" ng-model="nome">
                            </div>
                        </div>

                        <div class="form-group centralizar">
                            <input type="submit" class=" btn btn-primary botoes"  value="Cadastrar">
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