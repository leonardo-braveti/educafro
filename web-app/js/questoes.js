function questaoController($scope, $http, $document){

    var path = "/educafro/questao/";
    $('#formulario').hide();
    
    $scope.livro = false;
    $scope.filme = false;
    $scope.documentario = false;
    $scope.reportagem = false;
    $scope.pesquisa = false;
    
    

    $scope.listagem = function(){
        $http.get(path+"listarQuestoes").success(function(resposta){
            $scope.questoes = resposta;
        });
    };
    
    $scope.mostraCategoria = function(){
        var escolha = $scope.escolheCategoria;
        
        if(escolha == "livro"){
            $scope.livro = true;
            $scope.filme = false;
            $scope.documentario = false;
            $scope.reportagem = false;
            $scope.pesquisa = false;
        }
        if(escolha == "filme"){
            $scope.livro = false;
            $scope.filme = true;
            $scope.documentario = false;
            $scope.reportagem = false;
            $scope.pesquisa = false;
        }
        if(escolha == "documentario"){
            $scope.livro = false;
            $scope.filme = false;
            $scope.documentario = true;
            $scope.reportagem = false;
            $scope.pesquisa = false;
        }
        if(escolha == "reportagem"){
            $scope.livro = false;
            $scope.filme = false;
            $scope.documentario = false;
            $scope.reportagem = true;
            $scope.pesquisa = false;
        }            
        if(escolha == "pesquisa"){
            $scope.livro = false;
            $scope.filme = false;
            $scope.documentario = false;
            $scope.reportagem = false;
            $scope.pesquisa = true;
        }
               
    }

    $scope.formatarData = function(n){
        var divide = n.split("T");
        var partes = (divide[0].split("-"));
        return  partes[2]+"/"+partes[1]+"/"+partes[0];
    }

    $scope.editar = function(id){
        $("#formulario").show();
        $http.get(path+"buscarPorId/"+id).success(function(resposta){
            $scope.questao = angular.copy(resposta[0]);
            $scope.questao.dataInclusao = $scope.formatarData(resposta[0]["dataInclusao"]);
        });
    };

    /*
     pagina buscar questoes
     */

    $scope.listagemDeLivros = function(){
        $http.get("/educafro/livro/listarLivros").success(function(resposta){
            $scope.livros= resposta;
        });
    };

    $scope.buscarPorIdentificador = function(){
        $http.get(path+"buscarPorId/"+$scope.identificador).success(function(resposta){
            $scope.questoes = resposta;
        });
    }

    $scope.buscarPorEnunciado = function(){
        $http.get(path+"buscarPorEnunciado/"+$scope.enunciado).success(function(resposta){
            $scope.questoes = resposta;
        });
    }

    $scope.buscarPorLivro = function(){
        $http.get(path+"buscarPorLivro/"+$scope.livro).success(function(resposta){
            $scope.questoes = resposta;
        });
    }

    $scope.excluir = function($event){
        var decisao = confirm("Está certo disso?");
        if(decisao == false){
            $event.preventDefault();
        }
    }
    /*
     pagina buscar questoes
     */
};
