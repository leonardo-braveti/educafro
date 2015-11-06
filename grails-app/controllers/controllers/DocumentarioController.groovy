package controllers

import grails.converters.JSON
import models.Tema
import models.Documentario

class DocumentarioController extends BaseController{

    def documentarioService
    def classe = Documentario.class
    
    def cadastrar(){
        params.dataInclusao = new Date()
        def documentario = new Documentario(params)
        def tema = Tema.findById(params.tema)
        documentario.tema = tema
        documentarioService.cadastrar(documentario, request)
        flash.message = "DOCUMENTARIO CRIADO COM SUCESSO"
        redirect(action:"criar")
    }

    def atualizar(){
        def tema = Tema.findById(params.tema)
        def documentario = Documentario.findById(params.id)
        documentario.tema = tema
        documentario.titulo = params.titulo
        documentario.descricao = params.descricao
        documentarioService.atualizar(documentario, request)
        flash.message = "DOCUMENTARIO ATUALIZADO COM SUCESSO"
        redirect(action:"listar")
    }
}
