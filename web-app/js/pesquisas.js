function pesquisaController($scope, $http){

    var path = "/educafro/pesquisa/";
    $scope.temaAtual = "";
    $scope.mostrar = false;
    
    $scope.listagem = function(){
        $http.get(path+"listagem").success(function(resposta){
            $scope.pesquisas = resposta;
        });
    };

    $scope.formatarData = function(n){
        var divide = n.split("T");
        var partes = (divide[0].split("-"));
        return  partes[2]+"/"+partes[1]+"/"+partes[0];
    }

    $scope.editar = function(id, tema){
        $scope.temaAtual = tema;
        $scope.mostrar = true;
        $http.get(path+"buscarPorId/"+id).success(function(resposta){
            $scope.pesquisa = angular.copy(resposta[0]);
            $scope.pesquisa.dataInclusao = $scope.formatarData(resposta[0]["dataInclusao"]);
            $("#avatar").attr("src", "/educafro/images/uploads/"+resposta[0]['foto']);
        });
    };

    
    $scope.buscarPorTitulo = function(){
        $http.get(path+"buscarPorTitulo/"+$scope.titulo).success(function(resposta){
            $scope.pesquisas = resposta;
        });
    }

    $scope.buscarPorIdentificador = function(){
        $http.get(path+"buscarPorId/"+$scope.id).success(function(resposta){
            $scope.pesquisas = resposta;
        });
    }
     
    $scope.excluir = function($event){
        var decisao = confirm("Está certo disso?");
        if(decisao == false){
            $event.preventDefault();
        }
    }

    
    $scope.listarTemas = function(){
        $http.get("/educafro/tema/listarTemas").success(function(resposta){
            $scope.temas = resposta;
        });
    }

};
