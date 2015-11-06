package service

import  models.Usuario

import javax.servlet.http.HttpServletRequest

class UsuarioService {

    private String pathFoto = "/var/lib/tomcat7/webapps/educafro/images/uploads/";

    def validar(def email, def senha) {
        def usuario = Usuario.findByEmailAndSenha(email, senha)
        if(usuario != null)
            return usuario
        else
            return null
    }

    def cadastrar(Usuario usuario, HttpServletRequest request){
        usuario.perfil="user"
        usuario.empodera=100
        usuario.pontuacao=0

        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(foto.empty) {
            usuario.foto = "padraoUsuario.jpg"
        }
        else {
            def caminho = pathFoto+nomeFoto
            foto.transferTo(new File(caminho))
            usuario.foto = nomeFoto
        }
        usuario.save(flush:true)
    }

    def atualizar(Usuario usuario, HttpServletRequest request){
        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(!foto.empty){
            foto.transferTo(new File(pathFoto+nomeFoto))
            usuario.foto = nomeFoto
        }
        usuario.save(flush:true)
    }

    def listar(){
        Usuario.list()
    }

    def buscarPorNome(def nome){
        Usuario.findByNomeLike(nome)
    }

    def buscarPorEmail(def email){
        Usuario.findByEmail(email)
    }



}
