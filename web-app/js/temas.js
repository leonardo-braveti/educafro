/**
 * Created by leonardo on 30/07/15.
 */


function temaController($scope, $http, $document){

    var path = "/educafro/tema/";
    $scope.mostrar = false;

    $scope.listagem = function(){
        $http.get(path+"listarTemas").success(function(resposta){
            $scope.dados = resposta;
        });
    };

    $scope.editar = function(id){
        $scope.mostrar = true;
        $http.get(path+"buscarPorId/"+id).success(function(resposta){
            $scope.tema = angular.copy(resposta[0]);
            $scope.tema.id = resposta[0]["id"];
        });
    };

    $scope.excluir = function($event){
        var decisao = confirm("Está certo disso?");
        if(decisao == false){
            $event.preventDefault();
        }
    }
};





