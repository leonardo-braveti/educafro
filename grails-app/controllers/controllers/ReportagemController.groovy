package controllers

import grails.converters.JSON
import models.Reportagem

class ReportagemController extends BaseController{

    def reportagemService
    def classe = Reportagem.class
    
    def cadastrar(){
        params.dataInclusao = new Date()
        def reportagem = new Reportagem(params)
        def tema = Tema.findById(params.tema)
        reportagem.tema = tema
        reportagemService.cadastrar(reportagem, request)
        flash.message = "REPORTAGEM CRIADO COM SUCESSO"
        redirect(action:"criar")
    }

  
    def atualizar(){
        def tema = Tema.findById(params.tema)
        def reportagem = classe.findById(params.id)
        reportagem.tema = tema
        reportagem.titulo = params.titulo
        reportagem.descricao = params.descricao
        reportagemService.atualizar(reportagem, request)
        flash.message = "REPORTAGEM ATUALIZADO COM SUCESSO"
        redirect(action:"listar")
    } 
}
