
function postController($scope, $http, $document){

    var path = "/educafro/post/";
    $scope.mostrar = false;

    $scope.listagem = function(){
        $http.get(path+"listarPosts").success(function(resposta){
            $scope.dados = resposta;
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
            $scope.post = angular.copy(resposta[0]);
            $scope.post.id = resposta[0]["id"];
            $scope.post.dataInclusao = $scope.formatarData(resposta[0]["dataInclusao"]);
        });
    };

    $scope.excluir = function($event){
        var decisao = confirm("Está certo disso?");
        if(decisao == false){
            $event.preventDefault();
        }
    }
};





