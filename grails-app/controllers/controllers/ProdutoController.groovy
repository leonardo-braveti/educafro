package controllers

import models.Produto
import grails.converters.JSON


class ProdutoController extends BaseController{

    def produtoService
    def classe = Produto.class
    
   
     // ### NAVEGACAO ### // 
    def mercado(){}
    
    def visualizar(){
        def produto = Produto.findById(params.id)
        render(view: "visualizar", model: [produto : produto])
    }
    // ### NAVEGACAO ### //     
    
    

    // ### ACTIONS ### // 
    def cadastrar(){
        params.dataInclusao = new Date()
        def produto = new Produto(params)
        produtoService.cadastrar(produto, request)
        flash.message = "PRODUTO CRIADO COM SUCESSO"
        redirect(action:"criar")
    }
        
    def atualizar(){
        def produto = Produto.findById(params.id)
        produto.titulo = params.titulo
        produto.descricao = params.descricao
        produto.valor = Double.parseDouble(params.valor)
        produto.quantidade = Integer.parseInt(params.quantidade)
        produtoService.atualizar(produto, request)
        flash.message = "PRODUTO ATUALIZADO COM SUCESSO"
        redirect(action:"listar")
    }

    def excluir(){
        def produto = Produto.findById(params.id)
        produto.delete(flush:true)
        flash.message = "PRODUTO EXCLUÍDO COM SUCESSO"
        redirect(action:"listar")
    }
    // ### ACTIONS ### // 
    
    
    
    
    // ### RESPOSTAS JSON ### //
    def listarProdutos(){
        render produtoService.listar() as JSON        
    }
    
    def listarProdutosDisponiveis(){
        render produtoService.listarProdutosDisponiveis() as JSON        
    }

    
    def buscarPorValor(){
        render Produto.findAllByValorLessThan(params.id) as JSON
    }
    // ### RESPOSTAS JSON ### //
    

}
