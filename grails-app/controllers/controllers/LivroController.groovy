package controllers

import models.Livro
import grails.converters.JSON
import models.Tema

class LivroController extends BaseController{

    def livroService
    def classe = Livro.class

    def cadastrar(){
        params.dataInclusao = new Date()
        def livro = new Livro(params)
        def tema = Tema.findById(params.tema)
        livro.tema = tema
        livroService.cadastrar(livro, request)
        flash.message = "LIVRO CRIADO COM SUCESSO"
        redirect(action:"criar")
    }

    def atualizar(){
        def tema = Tema.findById(params.tema)
        def livro = Livro.findById(params.id)
        livro.tema = tema
        livro.titulo = params.titulo
        livro.descricao = params.descricao
        livroService.atualizar(livro, request)
        flash.message = "LIVRO ATUALIZADO COM SUCESSO"
        redirect(action:"listar")
    }
}
