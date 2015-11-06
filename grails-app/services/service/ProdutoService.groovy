package service

import grails.util.Environment
import grails.converters.JSON
import  models.Produto

import javax.servlet.http.HttpServletRequest

class ProdutoService {

    private String pathFoto = "/var/lib/tomcat7/webapps/educafro/images/uploads/";
    
    def listar(){
        return  Produto.findAll()
    }
    
    def listarProdutosDisponiveis(){
        return Produto.findAllByQuantidadeGreaterThan(0)
    }
    
    
    def cadastrar(Produto produto, HttpServletRequest request){

        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(foto.empty) {
            produto.foto = "padraoProduto.jpg"
        }
        else {
            def caminho = pathFoto+nomeFoto
            foto.transferTo(new File(caminho))
            produto.foto = nomeFoto
        }
        produto.save(flush:true)
    }

    def atualizar(Produto produto, HttpServletRequest request){
        def foto = request.getFile("imagem")
        def nomeFoto = new Date().time + ".jpg"

        if(!foto.empty){
            foto.transferTo(new File(pathFoto+nomeFoto))
            produto.foto = nomeFoto
        }
        produto.save(flush:true)
    }
}
