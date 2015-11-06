<%@ page import="models.Tema" %>
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
                    <span class="titulo_artigo">Criar Pesquisas</span>
		</div>				
		<br>
				<form id="formulario" class="form-horizontal" method="post" action="/educafro/pesquisa/cadastrar" enctype="multipart/form-data" >
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Título</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="titulo" name="titulo">
						</div>
					</div> 				

					<div class="form-group">
						<label class="col-lg-3 control-label format">Descrição</label>
						<div class=" col-lg-7">							
							<input type="text" class="form-control" id="descricao" name="descricao">
						</div>
					</div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label format">Tema</label>
                        <div class=" col-lg-7">
                            <g:select
                                    name="tema"
                                    from="${Tema.findAll()}"
                                    optionKey="id"
                                    optionValue="nome"
                                    noSelection="['':'-Escolha um tema-']"
                                    class="form-control"
                            />
                        </div>
                    </div>

					<div class="form-group">
						<label class="col-lg-3 control-label format">Foto</label>
						<div class=" col-lg-7">
							<input type="file"   id="imagem" name="imagem">
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