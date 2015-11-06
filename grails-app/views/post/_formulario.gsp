<form class="form-horizontal" method="post" action="/educafro/post/atualizar"  id="formulario" ng-show="mostrar">

    <input type="text" class="form-control" id="id" name="id" ng-model="post.id" readonly ng-show="false">

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
        <input type="submit" class=" btn btn-primary botoes"  value="Atualizar">
    </div>
</form>