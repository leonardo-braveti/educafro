package service

import models.Livro

import javax.servlet.http.HttpServletRequest

class LivroService {
    private String pathFoto = "/var/lib/tomcat7/webapps/educafro/images/uploads/";

    def cadastrar(Livro livro, HttpServletRequest request){

        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(foto.empty) {
            livro.foto = "padraoProduto.jpg"
        }
        else {
            def caminho = pathFoto+nomeFoto
            foto.transferTo(new File(caminho))
            livro.foto = nomeFoto
        }
        livro.save(flush:true)
    }

    def atualizar(Livro livro, HttpServletRequest request){
        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(!foto.empty){
            foto.transferTo(new File(pathFoto+nomeFoto))
            livro.foto = nomeFoto
        }
        livro.save(flush:true)
    }
}
