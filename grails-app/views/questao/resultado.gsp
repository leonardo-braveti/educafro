<%@ page import="models.Tema" %>
<!doctype html>
<html lang="pt-br">
    <head>
        <g:render template="../imports" />
        <script src="/educafro/js/questoes.js" ></script>
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

                <article>
                    <div class="centralizar">
                        <span class="titulo_artigo">Resultado do Questionário</span>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-lg-3">
                        </div>
                        <div class="col-lg-6">
                            <table class="table-bordered">
                                <tr>
                                    <td><span class="negrito">Total de acertos</span></td>
                                    <td>${relatorio.acertos}</td>
                                </tr>
                                <tr>
                                    <td><span class="negrito">Total de erros</span></td>
                                    <td>${relatorio.erros}</td>
                                </tr>
                                <tr>
                                    <td><span class="negrito">Pontos ganhos</span></td>
                                    <td>${relatorio.pontosGanhos}</td>
                                </tr>
                                <tr>
                                    <td><span class="negrito">Sua nova pontuação</span></td>
                                    <td>${session["usuario"].pontuacao}</td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-lg-3">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <a class="btn btn-primary" href="/educafro/questao/configurar">GERAR NOVO QUESTIONÁRIO</a>
                        </div>
                    </div>
                    
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