	<div class="centralizar">
		<img id="avatar">
	</div>
        <br>
		<form id="formulario" class="form-horizontal" method="post" action="/educafro/produto/atualizar" enctype="multipart/form-data" >
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Identificador</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="id" name="id" ng-model="produto.id" readonly>
						</div>
					</div> 				
					
					<div class="form-group">
          				<label class="col-lg-3 control-label format">Título</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="titulo" name="titulo" ng-model="produto.titulo">
						</div>
					</div> 				

					<div class="form-group">
						<label class="col-lg-3 control-label format">Descrição</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="descricao" name="descricao" ng-model="produto.descricao">
						</div>
					</div> 				
        		
					<div class="form-group">
						<label class="col-lg-3 control-label format">R$</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="valor" name="valor" ng-model="produto.valor">
						</div>
					</div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label format">Quantidade</label>
                        <div class=" col-lg-7">
                            <input type="text" class="form-control" id="quantidade" name="quantidade" ng-model="produto.quantidade">
                        </div>
                    </div>

                    <div class="form-group">
						<label class="col-lg-3 control-label format">Data de inclusão</label>
						<div class=" col-lg-7">
							<input type="text" class="form-control" id="inclusao" name="inclusao" ng-model="produto.dataInclusao" readonly>
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