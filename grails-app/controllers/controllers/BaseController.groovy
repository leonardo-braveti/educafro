package controllers

import grails.converters.JSON
import models.Tema

class BaseController {
    
    // ### NAVEGACAO ### //  
    def criar(){}
    def buscar(){}
    def listar(){}    
    // ### NAVEGACAO ### //  
    
   
    // ### FUNÇÃO ### //
     def excluir(){
        def objeto = classe.findById(params.id)
        objeto.delete(flush:true)
        flash.message = "REMOÇÃO REALIZADA COM SUCESSO"
        redirect(action:"listar")
    }
    // ### FUNÇÃo ### //
    
    
    // ### JSON ### //
    def listagem(){
        JSON.use("deep")
        render classe.findAll() as JSON
    }    
    
    def buscarPorTema(){
        def tema = Tema.findById(params.tema)
        render classe.findAllByTema(tema) as JSON
    }
    
    def buscarPorId(){
        render classe.findAllById(params.id) as JSON        
    }
    
    def buscarPorTitulo(){
        render classe.findAllByTituloLike(params.id+"%") as JSON
    }
    // ### JSON ### //
}
 