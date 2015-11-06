<!doctype html>
<html lang="pt-br" ng-app="">
<head>
    <g:render template="../imports" />
    <script src="/educafro/js/produtos.js" ></script>
</head>
<body>
	<div id="container" class="width">

        <header>
            <g:render template="../menu" />
        </header>

        <div id="intro">
            <g:render template="../banner" />
        </div>

        <div id="body" class="width" ng-controller="produtoController">
		<section id="content" class="col-lg-12">

            <div id='mensagemok'>
                <g:message code="${flash.message}" />
            </div>

			<article>
				<div class="centralizar">
					<span class="titulo_artigo">Listar Produtos</span>
				</div>
				<br>
				<table border=1 ng-init="listagem()">
					<thead>
						<tr>
                            <th>#</th>
							<th>Titulo</th>
							<th>Descrição</th>
                            <th>Quantidade</th>
							<th>Data de inclusão</th>
							<th>R$</th>
							<th>Ações</th>
						</tr>
					</thead>
					<tbody>					
						<tr ng-repeat= "p in produtos" id="l{{p.id}}">
                            <td>{{p.id}}</td>
							<td>{{p.titulo}}</td>
							<td>{{p.descricao}}</td>
                            <td>{{p.quantidade}}</td>
							<td>{{formatarData(p.dataInclusao)}}</td>
							<td>{{p.valor}}</td>
							<td>
								<a href="#formulario" id="bt_acoes">
                                    <i class="fa fa-pencil-square-o" ng-click="editar(p.id)"></i>
								</a>
								&nbsp
								<a ng-click="excluir($event)" href="/educafro/produto/excluir/{{p.id}}">
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


