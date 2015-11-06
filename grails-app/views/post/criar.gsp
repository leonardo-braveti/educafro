<!doctype html>
<html lang="pt-br">
<head>
    <g:render template="../imports" />
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
					<span class="titulo_artigo">Novo Post</span>
				</div>
				<br>
                <form class="form-horizontal" method="post" action="/educafro/post/salvar" >

                <div class="form-group">
                    <label class="col-lg-3 control-label format">Título</label>
                    <div class=" col-lg-7">
                        <input type="text" class="form-control" id="titulo" name="titulo" ng-model="post.titulo">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label format">Assunto</label>
                    <div class=" col-lg-7">
                        <input type="text" class="form-control" id="assunto" name="assunto" ng-model="post.assunto">
                    </div>
                </div>

                <div class="form-group centralizar">
                    <input type="submit" class=" btn btn-primary botoes"  value="Cadastrar">
                </div>
                </form>
			</article>			
			
		
        </section>
		
    	<div class="clear"></div>
    </div>
    <footer>
        <g:render template="../rodape" />
    </footer>
</div>
</body>
</html>