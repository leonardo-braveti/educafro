package service

import grails.transaction.Transactional
import models.Compra
import models.Produto
import models.Usuario

@Transactional
class ComprasService {

    
    def listar(Usuario usuario){
        def compras = Compras.findByUsuario(usuario)
        return compras
    }
    
    def viabilizar(Usuario usuario, Produto produto, int quantidade){
        def saldo = usuario.empodera - (produto.valor * quantidade)
        if(saldo >=0 )
            return true
        else
            return false    
    }
    
    def salvar(Usuario usuario, Produto produto, int quantidade){
        def compra = new Compra()
        compra.usuario = usuario
        compra.produto = produto
        compra.quantidade = quantidade
        compra.dataDaCompra = new Date()
        compra.save(flush:true)
        
        if(compra != null){
            produto.quantidade-=quantidade;
            produto.save(flush:true)            
            usuario.empodera-=(produto.valor*quantidade)
            usuario.save(flush:true)            
        }
        def retorno = new HashMap()
        
        retorno.put("compra", compra)
        retorno.put("usuario", usuario)
        
        return retorno
    }
    
    
}
