
    <br>
    <form class="form-horizontal" method="post" action="/educafro/questao/atualizar" >

        <div class="form-group">
            <label class="col-lg-3 control-label format">Identificador</label>
            <div class=" col-lg-7">
                <input type="text" ng-model="questao.id" class="form-control" id="id" name="id"  readonly>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-3 control-label format">Livro</label>
            <div class=" col-lg-7">
                <input type="text" ng-model="questao.livro.titulo" class="form-control" id="livro" name="livro" readonly>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-3 control-label format">Data de Inclusão</label>
            <div class=" col-lg-7">
                <input type="text" ng-model="questao.dataInclusao" class="form-control" id="dataInclusao" name="dataInclusao" readonly>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-3 control-label format">Enunciado</label>
            <div class=" col-lg-7">
                <textarea ng-model="questao.enunciado" class="form-control" id="enunciado" name="enunciado"></textarea>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-3 control-label format">Resposta</label>
            <div class=" col-lg-7">
                <textarea ng-model="questao.resposta" class="form-control" id="resposta" name="resposta"></textarea>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-3 control-label format">Alternativa 1</label>
            <div class=" col-lg-7">
                <textarea  ng-model="questao.alternativa1" class="form-control" id="alternativa1" name="alternativa1"></textarea>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-3 control-label format">Alternativa 2</label>
            <div class=" col-lg-7">
                <textarea  ng-model="questao.alternativa2" class="form-control" id="alternativa2" name="alternativa2"></textarea>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-3 control-label format">Alternativa 3</label>
            <div class=" col-lg-7">
                <textarea  ng-model="questao.alternativa3" class="form-control" id="alternativa3" name="alternativa3"></textarea>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-3 control-label format">Alternativa 4</label>
            <div class=" col-lg-7">
                <textarea  ng-model="questao.alternativa4" class="form-control" id="alternativa4" name="alternativa4"></textarea>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-lg-3 control-label format">Pontuação</label>
            <div class=" col-lg-7">
                <textarea  ng-model="questao.pontuacao" class="form-control" id="pontuacao" name="pontuacao"></textarea>
            </div>
        </div>

        <div class="form-group centralizar">
            <input type="submit" class=" btn btn-primary botoes"  value="ATUALIZAR">
        </div>
    </form>