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
                        <span class="titulo_artigo">Configuração do Questionário</span>
                    </div>
                    <br>
                    <form class="form-horizontal" method="post" action="/educafro/questao/gerarQuestionario">
                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Categoria</label>
                            <div class=" col-lg-5">
                                <select name="categoria" class="form-control" >
                                    <option value="" selected>Escolha a categoria</option>
                                    <option value="livro">Livros</option>
                                    <option value="filme">Filmes</option>
                                    <option value="documentario">Documentários</option>
                                    <option value="reportagem">Reportagens</option>
                                    <option value="pesquisa">Pesquisas</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Tema</label>
                            <div class=" col-lg-5">
                                <g:select
                                        name="id"
                                        from="${Tema.findAll()}"
                                        optionKey="id"
                                        optionValue="nome"
                                        noSelection="['':'Escolha um tema']"
                                        class="form-control"
                                />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Quantidade de questões</label>
                            <div class=" col-lg-7">
                                <select name="quantidade">
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group centralizar">
                            <input type="submit" class=" btn btn-primary botoes"  value="Gerar">
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