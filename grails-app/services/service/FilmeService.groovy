package service


import javax.servlet.http.HttpServletRequest
import models.Filme

class FilmeService {

    private String pathFoto = "/var/lib/tomcat7/webapps/educafro/images/uploads/";

    def cadastrar(Filme filme, HttpServletRequest request){

        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(foto.empty) {
            filme.foto = "padraoProduto.jpg"
        }
        else {
            def caminho = pathFoto+nomeFoto
            foto.transferTo(new File(caminho))
            filme.foto = nomeFoto
        }
        filme.save(flush:true)
    }

    def atualizar(Filme filme, HttpServletRequest request){
        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(!foto.empty){
            foto.transferTo(new File(pathFoto+nomeFoto))
            filme.foto = nomeFoto
        }
        filme.save(flush:true)
    }
}
