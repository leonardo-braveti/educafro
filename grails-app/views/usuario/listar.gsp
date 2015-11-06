<!doctype html>
<html lang="pt-br" ng-app="">
<head>
    <g:render template="../imports" />
    <script src="/educafro/js/usuarios.js" ></script>
</head>
<body>
	<div id="container" class="width">
        <header>
            <g:render template="../menu" />
        </header>

        <div id="intro">
            <g:render template="../banner" />
        </div>
    <div id="body" class="width" ng-controller="usuarioController">
		<section id="content" class="col-lg-12">
            <div id='mensagemok'>
                <g:message code="${flash.message}" />
            </div>

			<article>
				<div class="centralizar">
					<span class="titulo_artigo">Listagem de Usuários</span>
				</div>
				<br>
				<table border=2 ng-init="listagem()">
					<thead>
						<tr>
							<th>#</th>
							<th>Nome</th>
							<th>E-mail</th>
							<th ng-hide="true">Nascimento</th>
							<th ng-hide="true">Logradouro</th>
							<th ng-hide="true">Bairro</th>
							<th>Cidade</th>
							<th>Fixo</th>
							<th>Celular</th>
							<th ng-hide="true">Perfil</th>
							<th ng-hide="true">Foto</th>
							<th>Empodera</th>
                                                        <th>Pontução</th>
							<th>Ações</th>
						</tr>
					</thead>
					<tbody>
                        <tr ng-repeat="u in dados">
                            <td>{{u.id}}</td>
                            <td>{{u.nome}}</td>
                            <td>{{u.email}}</td>
                            <td ng-hide="true">{{u.nascimento}}</td>
                            <td ng-hide="true">{{u.logradouro}}</td>
                            <td ng-hide="true">{{u.bairro}}</td>
                            <td>{{u.cidade}}</td>
                            <td>{{u.foneFixo}}</td>
                            <td>{{u.foneCelular}}</td>
                            <td ng-hide="true">{{u.perfil}}</td>
                            <td ng-hide="true">{{u.foto}}</td>
                            <td>{{u.empodera}}</td>
                            <td>{{u.pontuacao}}</td>
                            <td>
                                <a href="#formulario" id="bt_acoes">
                                    <i class="fa fa-pencil-square-o" ng-click="editar(u.id)"></i>
                                </a>
                                &nbsp
                                <a ng-click="excluir($event)" href="/educafro/usuario/apagarPerfil/{{u.id}}">
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


