package controllers

import models.Pesquisa

class PesquisaController extends BaseController{

    def pesquisaService
    def classe = Pesquisa.class
    
    def cadastrar(){
        params.dataInclusao = new Date()
        def pesquisa = new Pesquisa(params)
        def tema = Tema.findById(params.tema)
        pesquisa.tema = tema
        pesquisaService.cadastrar(pesquisa, request)
        flash.message = "PESQUISA CRIADA COM SUCESSO"
        redirect(action:"criar")
    }

    def atualizar(){
        def tema = Tema.findById(params.tema)
        def pesquisa = classe.findById(params.id)        
        pesquisa.tema = tema        
        pesquisa.titulo = params.titulo
        pesquisa.descricao = params.descricao
        pesquisaService.atualizar(reportagem, request)
        flash.message = "PESQUISA ATUALIZADA COM SUCESSO"
        redirect(action:"listar")
    }
}
