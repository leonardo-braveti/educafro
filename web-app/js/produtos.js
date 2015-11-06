function produtoController($scope, $http, $document){

    var path = "/educafro/produto/";
    
    $scope.total = 0;

    $scope.mostrar = false;

    $scope.listagem = function(){
        $http.get(path+"listarProdutos").success(function(resposta){
            $scope.produtos= resposta;
        });
    };
    
    $scope.listaDeProdutosDisponiveis = function(){
        $http.get(path+"listarProdutosDisponiveis").success(function(resposta){
            $scope.produtos= resposta;
        });
    };

    $scope.formatarData = function(n){
        var divide = n.split("T");
        var partes = (divide[0].split("-"));
        return  partes[2]+"/"+partes[1]+"/"+partes[0];
    }

    $scope.editar = function(id){
        $scope.mostrar = true;
        $http.get(path+"buscarPorId/"+id).success(function(resposta){
            $scope.produto = angular.copy(resposta[0]);
            $scope.produto.dataInclusao = $scope.formatarData(resposta[0]["dataInclusao"]);
            $("#avatar").attr("src", "/educafro/images/uploads/"+resposta[0]['foto']);
        });
    };

    /*
        pagina buscar produtos
     */
    $scope.buscarPorIdentificador = function(){
        $http.get(path+"buscarPorId/"+$scope.id).success(function(resposta){
            $scope.produtos = resposta;
        });
    }
    $scope.buscarPorTitulo = function(){
        $http.get(path+"buscarPorTitulo/"+$scope.titulo).success(function(resposta){
            $scope.produtos = resposta;
        });
    }
    $scope.buscarPorValor = function(){
        $http.get(path+"buscarPorValor/"+$scope.valor).success(function(resposta){
            $scope.produtos = resposta;
        });
    }
    /*
        pagina buscar produtos
    */
    $scope.excluir = function($event){
        var decisao = confirm("Está certo disso?");
        if(decisao == false){
            $event.preventDefault();
        }
    }
    
    $scope.iniciarSaldo = function(empodera){
        $scope.empodera = empodera; 
        $scope.empoderaNovo = $scope.empodera;
    }
    
     $scope.valorUnitario= function(valor){
         $scope.valorUnitario = valor;         
     }
    
    $scope.calcular = function(){            
        $scope.total = Number((parseInt($scope.selecao) * $scope.valorUnitario));      
        $scope.empoderaNovo = $scope.empodera - $scope.total;
    }
    
     $scope.validarCompra = function($event){         
        if($scope.selecao ==  undefined){
            alert("Por favor, selecione a quantidade desejada!");
            $event.preventDefault();
        }
        if($scope.empoderaNovo < 0){
            $scope.mensagemSaldoNegativo = "Você não pode ficar com saldo negativo!"            
            $event.preventDefault();
        }
    }
};

jQuery(document).ready(function(){
    $('#formulario').hide();
});

