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
			<span class="titulo_artigo">Produtos Disponíveis</span>
                    </div>
                    
                    <br>
                    
                    <table border=1 ng-init="listaDeProdutosDisponiveis()">
                        <thead>
                            <tr>
                                <th>#</th>
				<th>Titulo</th>
                                <th>R$</th>
                                <th>COMPRAR</th>							
                            </tr>
                        </thead>
			<tbody>					
                            <tr ng-repeat= "p in produtos" id="l{{p.id}}">
                                <td>{{p.id}}</td>
				<td>{{p.titulo}}</td>							
                                <td>{{p.valor}}</td>
                                <td>
                                    <a href="/educafro/produto/visualizar/{{p.id}}" id="bt_acoes">COMPRAR</a>                                    
				</td>
                            </tr>
                        </tbody>
                    </table>
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


