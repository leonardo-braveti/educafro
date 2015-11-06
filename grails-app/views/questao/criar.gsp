<%@ page import="models.Livro" %>
<!doctype html>
<html lang="pt-br" ng-app="">
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

                <div id='mensagemok'>
                    <g:message code="${flash.message}" />
                </div>

                <article ng-controller="questaoController">
                    <div class="centralizar">
                        <span class="titulo_artigo">Criar questão</span>
                    </div>
                    <br>
                    <form class="form-horizontal" method="post" action="/educafro/questao/cadastrar" enctype="multipart/form-data" >

                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Categoria</label>
                            <div class=" col-lg-7">
                                <select name="categoria" class="form-control" ng-model = "escolheCategoria" ng-change="mostraCategoria()">
                                    <option value="" selected>Escolha a categoria</option>
                                    <option value="livro">Livros</option>
                                    <option value="filme">Filmes</option>
                                    <option value="documentario">Documentários</option>
                                    <option value="reportagem">Reportagens</option>
                                    <option value="pesquisa">Pesquisas</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group" ng-show="livro">
                            <label class="col-lg-3 control-label format">Livro</label>
                            <div class=" col-lg-7">
                                <g:select
                                        name="item"
                                        from="${Livro.findAll()}"
                                        optionKey="id"
                                        optionValue="titulo"
                                        noSelection="['':'Escolha um livro']"
                                        class="form-control"
                                />
                            </div>
                        </div>
                        
                        <div class="form-group" ng-show="filme">
                            <label class="col-lg-3 control-label format" >Filme</label>
                            <div class=" col-lg-7">
                                <g:select
                                        name="item"
                                        from="${Filme.findAll()}"
                                        optionKey="id"
                                        optionValue="titulo"
                                        noSelection="['':'Escolha um filme']"
                                        class="form-control"
                                />
                            </div>
                        </div>
                        
                        <div class="form-group" ng-show="documentario">
                            <label class="col-lg-3 control-label format">Documentário</label>
                            <div class=" col-lg-7">
                                <g:select
                                        name="item"
                                        from="${Documentario.findAll()}"
                                        optionKey="id"
                                        optionValue="titulo"
                                        noSelection="['':'Escolha um documentário']"
                                        class="form-control"
                                />
                            </div>
                        </div>
                        
                        <div class="form-group" ng-show="reportagem">
                            <label class="col-lg-3 control-label format">Reportagem</label>
                            <div class=" col-lg-7">
                                <g:select
                                        name="item"
                                        from="${Reportagem.findAll()}"
                                        optionKey="id"
                                        optionValue="titulo"
                                        noSelection="['':'Escolha uma reportagem']"
                                        class="form-control"
                                />
                            </div>
                        </div>
                        
                        
                        <div class="form-group" ng-show="pesquisa">
                            <label class="col-lg-3 control-label format">Pesquisa</label>
                            <div class=" col-lg-7">
                                <g:select
                                        name="item"
                                        from="${Pesquisa.findAll()}"
                                        optionKey="id"
                                        optionValue="titulo"
                                        noSelection="['':'Escolha uma pesquisa']"
                                        class="form-control"
                                />
                            </div>
                        </div>
                        
                        <br>
                        
                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Enunciado</label>
                            <div class=" col-lg-7">
                                <textarea class="form-control" id="enunciado" name="enunciado"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Resposta</label>
                            <div class=" col-lg-7">
                                <textarea class="form-control" id="resposta" name="resposta"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Alternativa 1</label>
                            <div class=" col-lg-7">
                                <textarea class="form-control" id="alternativa1" name="alternativa1"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Alternativa 2</label>
                            <div class=" col-lg-7">
                                <textarea class="form-control" id="alternativa2" name="alternativa2"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Alternativa 3</label>
                            <div class=" col-lg-7">
                                <textarea class="form-control" id="alternativa3" name="alternativa3"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Alternativa 4</label>
                            <div class=" col-lg-7">
                                <textarea class="form-control" id="alternativa4" name="alternativa4"></textarea>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-lg-3 control-label format">Pontuação</label>
                            <div class=" col-lg-7">
                                <textarea class="form-control" id="pontuacao" name="pontuacao"></textarea>
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