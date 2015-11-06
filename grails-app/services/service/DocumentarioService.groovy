package service

import javax.servlet.http.HttpServletRequest
import models.Documentario

class DocumentarioService {

    private String pathFoto = "/var/lib/tomcat7/webapps/educafro/images/uploads/";

    def cadastrar(Documentario documentario, HttpServletRequest request){

        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(foto.empty) {
            documentario.foto = "padraoProduto.jpg"
        }
        else {
            def caminho = pathFoto+nomeFoto
            foto.transferTo(new File(caminho))
            documentario.foto = nomeFoto
        }
        documentario.save(flush:true)
    }

    def atualizar(Documentario documentario, HttpServletRequest request){
        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(!foto.empty){
            foto.transferTo(new File(pathFoto+nomeFoto))
            documentario.foto = nomeFoto
        }
        documentario.save(flush:true)
    }
}
