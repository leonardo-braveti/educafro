function usuarioController($scope, $http, $document){

  	var path = "/educafro/usuario/";
    $scope.mostrarForm = false;
    $scope.mostrarTable = false;

	$scope.buscarPorNome = function(){
		nome = $scope.nome;				
		$http.get(path+"buscarPorNome/"+nome).success(function(resposta){
			$scope.dados = resposta;
            if(resposta.length > 0)
                $scope.mostrarTable = true;
            else
                $scope.mostrarTable = false;
		});
	};

	$scope.buscarPorEmail = function(){
		email = $scope.email;				
		$http.get(path+"buscarPorEmail/"+email).success(function(resposta){
			$scope.dados = resposta;
            if(resposta.length > 0)
                $scope.mostrarTable = true;
            else
                $scope.mostrarTable = false;
		});
	};	
	

    /*
        parte de listar usuarios
     */
    $scope.listagem = function(){
        $http.get(path+"listarUsuarios").success(function(resposta){
            $scope.dados = resposta;
        });
    };

    $scope.editar = function(id){
        $scope.mostrarForm = true;

        $http.get(path+"buscarPorId/"+id).success(function(resposta){
            $scope.user = angular.copy(resposta[0]);

            var divide = resposta[0]["nascimento"].split("T");
            var partes = (divide[0].split("-"));
            data = partes[2]+"/"+partes[1]+"/"+partes[0];
            $scope.user.nascimento = data;

            if(resposta[0]['perfil'] == "admin"){
                $scope.user.perfil = "Administrador";
            }
            else{
                $scope.user.perfil = "Usuário";
            }
            $("#avatar").attr("src", "/educafro/images/uploads/"+resposta[0]['foto']);
        });

    };

    $scope.excluir = function($event){
        var decisao = confirm("Está certo disso?");
        if(decisao == false){
            $event.preventDefault();
        }
    }
    /*
        parte de buscar usuarios
     */
};
