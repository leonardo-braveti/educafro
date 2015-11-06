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
				<div class="centralizar">
					<span class="titulo_artigo">CADASTRAR NOVO USUÁRIO</span>
				</div>
				<br>
				<form id="formCadastrar" class="form-horizontal" method="post" action="/educafro/usuario/registrarNovoUsuario" enctype="multipart/form-data" >
        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Nome</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="nome" name="nome" placeholder="Informe o nome completo">
						</div>
        			</div>
					
        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Email</label>
						<div class=" col-lg-7">
							<input type="email" class="form-control" id="email" name="email" placeholder="Informe um e-mail válido.">
						</div>
        			</div>

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Nasceu em</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="nascimento" name="nascimento" placeholder="Infome o dia, mês e ano de seu nascimento.">
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Logradouro</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="logradouro" name="logradouro" placeholder="Infome o logradouro (avenida / rua) e o complemento (nº / apto).">
						</div>
        			</div> 
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Bairro</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="bairro" name="bairro" placeholder="Infome o bairro.">
						</div>
        			</div> 
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Cidade</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="cidade" name="cidade" placeholder="Infome a cidade.">
						</div>
        			</div> 
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">CEP</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="cep" name="cep" placeholder="Infome a cidade.">
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Telefone fixo</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="foneFixo" name="foneFixo" placeholder="Infome um número de telefone fixo.">
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Telefone celular</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="foneCelular" name="foneCelular" placeholder="Infome um número de telefone celular.">
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Senha</label>
						<div class=" col-lg-7">
							<input type="password" class="form-control" id="senha" name="senha" placeholder="Cadastre sua senha.">
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Repita a senha</label>
						<div class=" col-lg-7">
							<input type="password" class="form-control" id="rsenha" name="rsenha" placeholder="Repita a senha para validação.">
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Foto do perfil</label>
						<div class=" col-lg-7">
							<input type="file"   id="imagem" name="imagem">
						</div>
        			</div> 

        			<div class="form-group centralizar">          				
          				<input type="reset" class=" btn btn-danger botoes" value="LIMPAR">
          				<input type="submit" class=" btn btn-primary botoes"  value="CADASTRAR">
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