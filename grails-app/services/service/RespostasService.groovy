package service

import grails.transaction.Transactional
import models.Questao
import models.Resposta
import models.Usuario

@Transactional
class RespostasService {

    def listar(Usuario usuario){
        def compras = Compras.findByUsuario(usuario)
        return compras
    }
    
    def salvar(Usuario usuario, Questao questao, String tentativa){
        def resposta = new Resposta()
        resposta.usuario = usuario
        resposta.questao = questao
        resposta.tentativa = tentativa
            
        if(questao.resposta.equals(tentativa)){
            resposta.status = "certo"            
            resposta.save(flush:true)
        }
        else{            
            resposta.status = "errado"
            resposta.save(flush:true)
        }        
        return resposta;
    }
}
