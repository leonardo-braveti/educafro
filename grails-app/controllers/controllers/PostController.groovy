
package controllers

import models.Post
import models.Usuario
import grails.converters.JSON

class PostController {

    def criar() {}

    def listar() {}

    def listarPosts(){
       JSON.use('deep')
       render  Post.findAll() as JSON
    }

    def buscarPorId(){
       JSON.use('deep')
       render Post.findAllById(params.id) as JSON
    }

    def salvar(){
        def post = new Post(params)
        def dono = Usuario.findById(session["usuario"].id)
        post.usuario = dono
        post.dataInclusao = new Date()
        post.save()
        flash.message = "POST INSERIDO COM SUCESSO"
        redirect(action:"criar")
    }

    def atualizar(){
        render params
        def post = Post.findById(params.id)
        post.assunto = params.assunto
        post.titulo = params.titulo
        post.dataInclusao = new Date()
        post.save(flush:true)
        flash.message = "POST ATUALIZADO COM SUCESSO"
        redirect(action:"listar")
    }

    def excluir(){
        def post = Post.findById(params.id)
        post.delete(flush: true)

        flash.message = "POST EXCLUÍDO COM SUCESSO"
        redirect(action:"listar")
    }
}
