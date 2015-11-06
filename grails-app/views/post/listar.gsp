<!doctype html>
<html lang="pt-br" ng-app="">
<head>
    <g:render template="../imports" />
    <script src="/educafro/js/posts.js" ></script>
</head>
<body>
	<div id="container" class="width">

        <header>
            <g:render template="../menu" />
        </header>

        <div id="intro">
            <g:render template="../banner" />
        </div>

        <div id="body" class="width" ng-controller="postController">
		<section id="content" class="col-lg-12">
            <div id='mensagemok'>
                <g:message code="${flash.message}" />
            </div>
			<article>
				<div class="centralizar">
					<span class="titulo_artigo">Listar Posts</span>
				</div>
				<br>
				<table border=1 ng-init="listagem()">
					<thead>
						<tr>
                            <th>#</th>
							<th>Titulo</th>
							<th>Assunto</th>
							<th>Data de inclusão</th>
                            <th>Dono</th>
							<th>Ações</th>
						</tr>
					</thead>
					<tbody>					
						<tr ng-repeat= "d in dados">
                            <td>{{d.id}}</td>
							<td>{{d.titulo}}</td>
							<td>{{d.assunto}}</td>
							<td>{{formatarData(d.dataInclusao)}}</td>
                            <td>{{d.usuario.nome}}</td>
							<td>
								<a href="#formulario" id="bt_acoes">
                                    <i class="fa fa-pencil-square-o" ng-click="editar(d.id)"></i>
								</a>
								&nbsp
								<a ng-click="excluir($event)" href="/educafro/post/excluir/{{d.id}}">
								    <i class="fa fa-trash-o apagar"></i>
								</a>
							</td>
						</tr>
					</tbody>
				</table>
			</article>
            <br><br>
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


