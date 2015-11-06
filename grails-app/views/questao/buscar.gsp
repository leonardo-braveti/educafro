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
            <div id="body" class="width" ng-controller="questaoController">

                <div id='mensagemok'>
                    <g:message code="${flash.message}" />
                </div>

                <section id="content" class="col-lg-12">
			        <article>
				        <div class="centralizar">
					        <span class="titulo_artigo">Buscar Questões</span>
				            <br><br>

                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-lg-3 control-label format">Por Identificador:</label>
                                    <input type="text" ng-model="identificador"  class="form-control  buscador"  ng-keyup="buscarPorIdentificador()">
                                </div>
                            </form>
				
				            <form class="form-horizontal">
					            <div class="form-group">
						            <label class="col-lg-3 control-label format">Por Enunciado:</label>
						            <input type="text" ng-model="enunciado"  class="form-control  buscador"  ng-keyup="buscarPorEnunciado()">
					            </div>
				            </form>

                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-lg-3 control-label format">Por Livro:</label>
                                    <select ng-model="livro" ng-init="listagemDeLivros()" ng-change="buscarPorLivro()" class="form-control  buscador">
                                        <option value="">-Escolha um livro-</option>
                                        <option ng-repeat="l in livros" value="{{l.id}}">{{l.titulo}}</option>
                                    </select>
                                </div>
                            </form>
				            <br>
				        </div>
				
				        <table border=1 >
					        <thead>
						        <tr>
                                    <th>#</th>
                                    <th>Livro</th>
                                    <th>Enunciado</th>
                                    <th>Pontuacao</th>
                                    <th>Data de criação</th>
                                    <th>Ações</th>
						        </tr>
					        </thead>
					
					        <tbody>
                            <tr ng-repeat="q in questoes">
                                <td>{{q.id}}</td>
                                <td>{{q.livro.titulo}}</td>
                                <td>{{q.enunciado}}</td>
                                <td>{{q.pontuacao}}</td>
                                <td>{{formatarData(q.dataInclusao)}}</td>
                                <td>
                                    <a href="#formulario" id="bt_acoes">
                                        <i class="fa fa-pencil-square-o" ng-click="editar(q.id)"></i>
                                    </a>
                                    &nbsp
                                    <a ng-click="excluir($event)"  href="/educafro/livro/excluir/{{q.id}}">
                                        <i class="fa fa-trash-o apagar"></i>
                                    </a>
                                </td>
                            </tr>
					        </tbody>
				        </table>
			        </article>
                <article class="col-lg-12" id="formulario">
                        <g:render template="formulario" />
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

