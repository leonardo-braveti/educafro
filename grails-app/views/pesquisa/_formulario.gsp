	<div class="centralizar">
		<img id="avatar">
	</div>
        <br>
		<form id="formulario" class="form-horizontal" method="post" action="/educafro/pesquisa/atualizar" enctype="multipart/form-data" >
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Identificador</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="id" name="id" ng-model="pesquisa.id" readonly>
						</div>
					</div> 				
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Título</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="titulo" name="titulo" ng-model="pesquisa.titulo">
						</div>
					</div> 				

					<div class="form-group">
						<label class="col-lg-3 control-label format">Descrição</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="descricao" name="descricao" ng-model="pesquisa.descricao">
						</div>
					</div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label format">Tema</label>
                        <div class=" col-lg-7">
                            <select name="tema" ng-init="listarTemas()">
                                <option ng-repeat="t in temas" value="{{t.id}}" ng-selected="selected">{{t.nome}}</option>
                            </select>
                        </div>
                    </div>
					
					<div class="form-group">
						<label class="col-lg-3 control-label format">Data de inclusão</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="inclusao" name="inclusao" ng-model="pesquisa.dataInclusao" readonly>
						</div>
					</div>
				        			
					<div class="form-group">
						<label class="col-lg-3 control-label format">Trocar a foto?</label>
						<div class=" col-lg-7">
							<input type="file"   id="imagem" name="imagem">
						</div>
					</div> 
				
        			<div class="form-group centralizar">          				          				
						<input type="submit" class=" btn btn-primary botoes"  value="ATUALIZAR">
					</div> 
				</form>