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
					<span class="titulo_artigo">trocar senha</span>
				</div>
				<br>
				<form id="formCadastrar" class="form-horizontal" method="post" action="/educafro/autenticacao/trocarSenha" enctype="multipart/form-data" >
				
        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Nova senha</label>
						<div class=" col-lg-7">
							<input type="password" class="form-control" id="senha" name="senha">
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Repita a senha</label>
						<div class=" col-lg-7">
							<input type="password" class="form-control" id="rsenha" name="rsenha">
						</div>
        			</div> 

        			<div class="form-group centralizar">          				          				
          				<input type="submit" class=" btn btn-primary botoes"  value="SALVAR">
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