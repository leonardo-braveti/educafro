<!doctype html>
<html lang="pt-br" ng-app="">
<head>
    <g:render template="../imports" />
    <script src="/educafro/js/produtos.js" ></script>
</head>
<body>
	<div id="container" class="width">

        <header>
            <g:render template="../menu" />
        </header>

        <div id="intro">
            <g:render template="../banner" />
        </div>

        <div id="body" class="width" ng-controller="produtoController">
            <section id="content" class="col-lg-12">
                
                <g:render template="../mensagem" />
                
                <article>
                    <div class="centralizar">
			<span class="titulo_artigo">Produto Selecionado</span>
                    </div>
                    
                    <div class="centralizar">
                        <img id="avatar" src="/educafro/images/uploads/${produto.foto}"/>
                    </div>
                    
                    <div class="row">
                        <div class=col-lg-12">
                            <div class="col-lg-2"></div>
                            <div class="col-lg-8">
                                <table class="table-bordered">                        
                                    <tr>
                                        <td><span class="negrito">Identificador</span></td>
                                        <td>${produto.id}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="negrito">Nome</span></td>
                                        <td>${produto.titulo}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="negrito">Descrição</span></td>
                                        <td>${produto.descricao}</td>
                                    </tr>
                                    <tr>
                                        <td><span class="negrito">Disponivel</span></td>
                                        <td>${produto.quantidade}</td>
                                    </tr>                        
                                </table>
                            </div>
                            <div class="col-lg-2"></div>
                        </div>
                    </div>
                    
                    <br>
                    
                    <div class="col-lg-12">  
                        <p> <span class="negrito"> Valor unitario: </span> R$: <span  ng-init="valorUnitario(${produto.valor})"> {{valorUnitario}} </span></p>
                        <p> <span class="negrito"> Saldo atual: </span> R$ <span  ng-init="iniciarSaldo(${session["usuario"].empodera})"> {{empodera}} </span></p>
                    </div>                                      
                                        
                    <div>
                        <form id="formulario" class="form-horizontal" method="post" action="/educafro/compras/salvar">
                            <input type="hidden" name="produto" value="${produto.id}">
                            <div class="form-group col-lg-12">                                
                                <label class="col-lg-6  control-label">Selecione a quantidade: </label>                                
                                <div class="col-lg-1">
                                    <select name="quantidade" ng-change="calcular()" ng-model="selecao" class="form-control" >
                                        <g:each in="${(1..produto.quantidade)}" >
                                            <option name="${it}">${it}</option>
                                        </g:each>
                                    </select>                                        
                                </div>
                            </div> 	
                            
                            <div class="col-lg-12">                                
                                <p><span class="negrito"> Total da compra:</span> R$ <span>{{total}}</span></p>
                                <p><span class="negrito"> Saldo após está compra:  </span> R$ <span> {{empoderaNovo}} </span> </p>
                                <p class="mensagemSaldoNegativo"> 
                                    {{mensagemSaldoNegativo}}                                
                                </p>
                            </div>
                            <div class="form-group centralizar">          				          				
                                <input type="submit" class=" btn btn-primary botoes"  value="COMPRAR" ng-click="validarCompra($event)">
                            </div> 
                        </form>
                    </div>
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


