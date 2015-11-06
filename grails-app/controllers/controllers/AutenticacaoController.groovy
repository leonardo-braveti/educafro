package controllers

class AutenticacaoController {

    def usuarioService
    
    // ### NAVEGACAO ### //  
    def index(){}
    def entrar(){}
    def credencial(){}
    // ### NAVEGACAO ### //  
    
    
    // ### ACTIONS ### //  
    def validar(){
        def usuario = usuarioService.validar(params.email, params.senha)
        if(usuario == null) {
            session["usuario"] = null
            flash.message  = "E-MAIL E/OU SENHA INVÁLIDOS";
            redirect(action: "entrar")
        }
        else{
            session["usuario"] = usuario
            redirect uri:"/"
        }
    }

    def trocarSenha(){
        def usuario = session["usuario"]
        usuario.senha = params.senha
        usuario.save(flush:true)
        flash.message = "SENHA ATUALIZADA COM SUCESSO"
        redirect(action: "credencial")
    }

    def sair(){
        session.invalidate();
        redirect uri:"/"
    }
    // ### ACTIONS ### //  

}
