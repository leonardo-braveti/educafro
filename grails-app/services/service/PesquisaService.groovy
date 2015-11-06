package service

import javax.servlet.http.HttpServletRequest
import models.Pesquisa

class PesquisaService {

    private String pathFoto = "/var/lib/tomcat7/webapps/educafro/images/uploads/";

    def cadastrar(Pesquisa pesquisa, HttpServletRequest request){

        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(foto.empty) {
            pesquisa.foto = "padraoProduto.jpg"
        }
        else {
            def caminho = pathFoto+nomeFoto
            foto.transferTo(new File(caminho))
            pesquisa.foto = nomeFoto
        }
        pesquisa.save(flush:true)
    }

    def atualizar(Pesquisa pesquisa, HttpServletRequest request){
        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(!foto.empty){
            foto.transferTo(new File(pathFoto+nomeFoto))
            pesquisa.foto = nomeFoto
        }
        pesquisa.save(flush:true)
    }
    
}
