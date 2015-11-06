package educafro

class LogadoFilters {

    def filters = {
        
        all(controller: '*', action: '*') {
            before = {
                
                String requisicao = request.getServletPath()
                if(session["usuario"] == null){
                    // liberando acessos
                    if(requisicao.contains("index") // pagina principal
                        || requisicao.contains("cadastrar") // cadastrar usuario
                        || requisicao.contains("validar") // validar o login
                        || requisicao.contains("entrar")) // realizar login
                        return true
                    else{
                        redirect(uri:"/autenticacao/index")
                        return false
                    }
                }
            }
        }
        
        
    }
}
