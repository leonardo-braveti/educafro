package controllers

import grails.converters.JSON
import models.Tema

class TemaController {

    
    def criar(){}

    def listar(){}

    def cadastrar(){
        Tema t = new Tema(params)
        t.save(flush:true)
        flash.message = "TEMA INSERIDO COM SUCESSO"
        redirect(action: "listar")
    }

    def atualizar(){
        Tema t = Tema.findById(params.id)
        t.nome = params.nome
        t.save(flush:true)
        flash.message = "TEMA ATUALIZADO COM SUCESSO"
        redirect(action: "listar")
    }

    def excluir(){
        Tema t = Tema.findById(params.id)
        t.delete(flush:true)
        flash.message = "TEMA EXCLUIDO COM SUCESSO"
        redirect(action: "listar")
    }

    def listarTemas(){
        render Tema.findAll() as JSON
    }

    def buscarPorId(){
        render Tema.findAllById(params.id) as JSON
    }

    def buscarPorNome(){
        render Tema.findAllByNomeLike(params.id+"%") as JSON
    }

    def esteTema(){
        render Tema.findAllById(params.id) as JSON
    }
}
