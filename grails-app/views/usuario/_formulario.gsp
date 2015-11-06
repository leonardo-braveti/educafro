	<div class="centralizar">
		<img id="avatar">
	</div>
	<br>
	<br>
	<form if="formulario" class="form-horizontal" method="post" action="/educafro/usuario/gerenciarPerfil" ng-show="mostrarForm">
	
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Identificador</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="id" name="id" ng-model="user.id" readonly>
						</div>
        			</div>
					
        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Nome</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="nome" ng-model="user.nome" readonly>
						</div>
        			</div>
					
        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Email</label>
						<div class=" col-lg-8">
							<input type="email" class="form-control" id="email" name="email" ng-model="user.email" readonly>
						</div>
        			</div>

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Nasceu em</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="nascimento" ng-model="user.nascimento" readonly>
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Logradouro</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="logradouro" ng-model="user.logradouro" readonly>
						</div>
        			</div> 
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Bairro</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="bairro" ng-model="user.bairro" readonly>
						</div>
        			</div> 
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Cidade</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="cidade" ng-model="user.cidade" readonly>
						</div>
        			</div> 
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">CEP</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="cep" ng-model="user.cep" readonly>
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Telefone fixo</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="foneFixo" ng-model="user.foneFixo" readonly>
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Telefone celular</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="foneCelular" ng-model="user.foneCelular" readonly>
						</div>
        			</div> 
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Perfil</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="perfil" name="perfil" ng-model="user.perfil" readonly>
							<input type="checkbox" name="tornar"> <span id="msgModificaPerfil">Modificar o perfil deste usuário?</span> 
						</div>
        			</div> 
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Empodera</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="empodera" name="empodera" ng-model="user.empodera" readonly>
						</div>
        			</div> 
        
                                <div class="form-group">
          				<label class="col-lg-3 control-label format">Pontuação</label>
						<div class=" col-lg-8">
							<input type="text" class="form-control" id="pontuacao" name="pontuacao" ng-model="user.pontuacao" readonly>
						</div>
        			</div> 

        			<div class="form-group">
          				<label class="col-lg-3 control-label format">Creditar empodera</label>
						<div class=" col-lg-8">
							<input type="number" name="credito" min="1" max="1000">
						</div>
        			</div> 
	
					<input type="hidden" name="foto" id="foto">
					
        			<div class="form-group centralizar">          				          				
          				<input type="submit" class=" btn btn-primary botoes"  value="ATUALIZAR">
        			</div> 
      			
      			</form>