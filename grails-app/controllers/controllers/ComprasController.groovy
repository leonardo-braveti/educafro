package controllers

import grails.converters.JSON
import models.Produto
import models.Usuario

class ComprasController {

    def comprasService 
    
    def listar(){
        def usuario = Usuario.findById(param.id)
        render comprasService.listar(usuario) as JSON
    }
    
    def salvar(){
        def usuario = Usuario.findById(session["usuario"].id)
        def produto = Produto.findById(params.produto)
        
        def viavel = comprasService.viabilizar(usuario, produto, Integer.parseInt(params.quantidade))
        
        if(viavel){
            def retorno = comprasService.salvar(usuario, produto, Integer.parseInt(params.quantidade))
        
            if(retorno.get("compra") != null){
                flash.message = "COMPRA # "+retorno.get("compra").id+" REALIZADA COM SUCESSO!"       
                session["usuario"] = retorno.get("usuario")
            }
            else
                flash.message = "ERRO AO PROCESSAR A COMPRA!"       
        }
        else{
            flash.message = "VOCÊ NÃO POSSUI SALDO PARA REALIZAR ESTA COMPRA!"       
            render(view: "visualizar", model: [produto: produto])
        }
        
        render(view: "relatorio")
    }
}
