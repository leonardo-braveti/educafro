package service

import br.com.conecteme.educafro.groovy.Relatorio
import models.*

class QuestaoService {
    
    
    
    def questionario(Tema tema, String categoria, String  quantidade){
        
        def questoes = Questao.findAllByTema(tema)
        def escolhidas = new ArrayList<Questao>()
        
        
        
        questoes.each{                  
            if(categoria.equals("livro") & it.item instanceof Livro){
                System.out.print("liv")
                escolhidas.add(it)
                System.out.println(it.item.toString()+" "+categoria);
            }
            if(categoria.equals("filme") & it.item instanceof Filme){
                System.out.print("fil")
                escolhidas.add(it)
                System.out.println(it.item.toString()+" "+categoria);
            }
            if(categoria.equals("documentario") & it.item instanceof Documentario){
                System.out.print("doc")
                escolhidas.add(it)
                System.out.println(it.item.toString()+" "+categoria);
            }
            if(categoria.equals("reportagem") & it.item instanceof Reportagem){
                System.out.print("reportagem")
                escolhidas.add(it)
                System.out.println(it.item.toString()+" "+categoria);
            }
            if(categoria.equals("pesquisa") & it.item instanceof Pesquisa){
                System.out.print("pesquisa")
                escolhidas.add(it)
                System.out.println(it.item.toString()+" "+categoria);
            }
        }
        
        /*def respondido = Respostas.findByUsuario(usuario)
        
        Set questionarioBruto = new HashSet<Questao>()
        questoes.each(){
            it = questao
            respondido.each(){
                if(questao != it){
                    questionarioBruto.add(questao)
                }                
            }
        }*/
        return escolhidas
    }
    
    def registrarRespostas(Usuario usuario, List<Resposta> respostas){
        def relatorio = new Relatorio()
        
        respostas.each{
            def resposta = new Resposta()
            resposta.usuario = usuario            
            
            def questao = Questao.findById(it.idQuestao)
            resposta.questao = questao
            
            resposta.tentativa = it.respostaDada
            
            if(it.respostaDada.equals(questao.resposta)){
                resposta.status = "acertou"              
                usuario.pontuacao+=questao.pontuacao
                // populando o relatorio
                relatorio.acertos++
                relatorio.pontosGanhos+=questao.pontuacao
            }
            else{
                resposta.status = "errou"                                
                // populando o relatorio
                relatorio.erros++
            }                
            resposta.save(failOnError:true)
        }
        
        return relatorio
    }
    
    def cadastrar(Questao questao){        
        questao.save(flush:true)
    }

    def atualizar(Questao questao){
        questao.save(flush:true)
    }
   
}
