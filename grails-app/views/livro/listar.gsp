<!doctype html>
<html lang="pt-br" ng-app="">
<head>
    <g:render template="../imports" />
    <script src="/educafro/js/livros.js" ></script>
</head>
<body>
	<div id="container" class="width">

        <header>
            <g:render template="../menu" />
        </header>

        <div id="intro">
            <g:render template="../banner" />
        </div>

        <div id="body" class="width" ng-controller="livroController">
		<section id="content" class="col-lg-12">

            <div id='mensagemok'>
                <g:message code="${flash.message}" />
            </div>

			<article>
				<div class="centralizar">
					<span class="titulo_artigo">Listar Livros</span>
				</div>
				<br>
				<table border=1 ng-init="listagem()">
					<thead>
						<tr>
                            <th>#</th>
							<th>Titulo</th>
							<th>Descrição</th>
                            <th>Tema</th>
							<th>Data de inclusão</th>
							<th>Ações</th>
						</tr>
					</thead>
					<tbody>					
						<tr ng-repeat= "l in livros" >
                            <td>{{l.id}}</td>
							<td>{{l.titulo}}</td>
							<td>{{l.descricao}}</td>
                            <td>{{l.tema.nome}}</td>
							<td>{{formatarData(l.dataInclusao)}}</td>
							<td>
								<a href="#formulario" id="bt_acoes">
                                    <i class="fa fa-pencil-square-o" ng-click="editar(l.id, l.tema.nome)"></i>
								</a>
								&nbsp
								<a href="/educafro/livro/excluir/{{l.id}}">
								    <i class="fa fa-trash-o apagar"></i>
								</a>
							</td>
						</tr>
					</tbody>
				</table>
			</article>
            <br>
			<article class="col-lg-12" ng-show="mostrar">
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


