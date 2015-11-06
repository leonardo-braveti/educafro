package service

import javax.servlet.http.HttpServletRequest
import models.Reportagem

class ReportagemService {

    private String pathFoto = "/var/lib/tomcat7/webapps/educafro/images/uploads/";

    def cadastrar(Reportagem reportagem, HttpServletRequest request){

        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(foto.empty) {
            reportagem.foto = "padraoProduto.jpg"
        }
        else {
            def caminho = pathFoto+nomeFoto
            foto.transferTo(new File(caminho))
            reportagem.foto = nomeFoto
        }
        reportagem.save(flush:true)
    }

    def atualizar(Reportagem reportagem, HttpServletRequest request){
        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(!foto.empty){
            foto.transferTo(new File(pathFoto+nomeFoto))
            reportagem.foto = nomeFoto
        }
        reportagem.save(flush:true)
    }
}
