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
            <article>
                <div id='mensagemerro'>
                    <g:message code="${flash.message}" />
                 </div>
				<div class="centralizar">
					<span class="titulo_artigo">AUTENTICAR NO AMBIENTE</span>
				</div>
				<br>

				<form id="formEntrar" role="form" class="form-horizontal" method="post" action="/educafro/autenticacao/validar">

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Email</label>
						<div class=" col-lg-7">
							<input type="email" class="form-control" id="email" name="email" placeholder="Informe seu e-mail">
						</div>
        			</div>
        			
        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Senha</label>
						<div class=" col-lg-7">
							<input type="password" class="form-control" id="senha" name="senha" placeholder="Informe sua senha">
						</div>
        			</div> 

        			<div class="form-group centralizar">          				
          				<input type="reset" class=" btn btn-danger  botoes" value="LIMPAR">
          				<input type="submit" class=" btn btn-primary  botoes"  value="VALIDAR">
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