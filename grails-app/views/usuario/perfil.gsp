<!doctype html>
<html lang="pt-br">
<head>
    <header>
        <g:render template="../imports" />
    </header>
</head>
<body>
	<div id="container" class="width">

        <header>
            <g:render template="../menu" />
        </header>

        <div id="intro">
            <g:render template="../banner" />
        </div>
	
    <div id="body" class="width centralizar">
		<section id="content" class="col-lg-12">
            <div id='mensagemok'>
                <g:message code="${flash.message}" />
            </div>
			
			<article>			
				<div class="centralizar">
					<span class="titulo_artigo">DADOS PESSOAIS</span>
				</div>
				<br>
				<div class="centralizar">
                    <img id="avatar" src="/educafro/images/uploads/${session['usuario'].foto}"/>
				</div>
				<br>
				
				<form id="formCadastrar" class="form-horizontal" method="post" action="/educafro/usuario/atualizarPerfil" enctype="multipart/form-data" >
                    <input type="hidden" name="identificador" value="${session['usuario'].id}" >
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Empoderas</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="empodera" name="empodera" value="${session['usuario'].empodera}" readonly>
						</div>
        			</div>
                                <div class="form-group">
          				<label class="col-lg-3 control-label format">Pontuação</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="pontuacao" name="empodera" value="${session['usuario'].pontuacao}" readonly>
						</div>
        			</div>
        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Nome</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="nome" name="nome" value="${session['usuario'].nome}" readonly>
						</div>
        			</div>
					
        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Email</label>
						<div class=" col-lg-7">
							<input type="email" class="form-control" id="email" name="email" value="${session['usuario'].email}" readonly>
						</div>
        			</div>

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Nasceu em</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="nascimento" name="nascimento" value="${session['usuario'].formatarNascimento()}" readonly>
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Logradouro</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="logradouro" name="logradouro" value="${session['usuario'].logradouro}">
						</div>
        			</div> 
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Bairro</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="bairro" name="bairro" value="${session['usuario'].bairro}">
						</div>
        			</div> 
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Cidade</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="cidade" name="cidade" value="${session['usuario'].cidade}">
						</div>
        			</div> 
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">CEP</label>
						<div class="col-lg-7">
							<input type="text" class="form-control" id="cep" name="cep" value="${session['usuario'].cep}">
						</div>
        			</div>

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Telefone fixo</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="foneFixo" name="foneFixo" value="${session['usuario'].foneFixo}">
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Telefone celular</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="foneCelular" name="foneCelular" value="${session['usuario'].foneCelular}">
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Trocar foto</label>
						<div class=" col-lg-7">
							<input type="file"   id="imagem" name="imagem">
						</div>
        			</div> 

        			<div class="form-group centralizar">          				          				
          				<input type="submit" class=" btn btn-primary botoes"  value="ATUALIZAR">
        			</div> 
      			
      			</form>
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