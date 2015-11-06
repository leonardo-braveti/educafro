package controllers

import grails.converters.JSON
import models.Tema
import models.Filme

class FilmeController extends BaseController{

    def filmeService
    def classe = Filme.class    

    def cadastrar(){
        params.dataInclusao = new Date()
        def filme = new Filme(params)
        def tema = Tema.findById(params.tema)
        filme.tema = tema
        filmeService.cadastrar(filme, request)
        flash.message = "FILME CRIADO COM SUCESSO"
        redirect(action:"criar")
    }

    def atualizar(){
        def tema = Tema.findById(params.tema)
        def filme = Filme.findById(params.id)
        filme.tema = tema
        filme.link = params.link
        filme.titulo = params.titulo
        filme.descricao = params.descricao
        filmeService.atualizar(filme, request)
        flash.message = "FILME ATUALIZADO COM SUCESSO"
        redirect(action:"listar")
    }

   
}
