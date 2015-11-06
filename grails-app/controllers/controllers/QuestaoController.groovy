package controllers

import models.Usuario
import models.Livro
import models.Item
import models.Questao
import models.Resposta
import models.Tema
import br.com.conecteme.educafro.groovy.Relatorio
import br.com.conecteme.educafro.groovy.Resposta
import grails.converters.JSON

class QuestaoController {

    def questaoService
      
    // ### NAVEGACAO ### //  
    def criar(){}    
    def listar(){}    
    def configurar(){}
    // ### NAVEGACAO ### //  
    
    def cadastrar(){
        params.dataInclusao = new Date()
        def item = Item.findById(params.item)
        params.item = item
        params.tema = item.tema
        def questao = new Questao(params)        
        questao.save(failOnError:true)
        flash.message = "QUESTÃO CRIADA COM SUCESSO"
        redirect(action:"criar")
    }

    def listarQuestoes(){
        JSON.use("deep")
        render Questao.findAll() as JSON
    }
    
    def gerarQuestionario(){
        def tema = Tema.findById(params.id)        
        def questionario  = questaoService.questionario(tema, params.categoria, params.quantidade)
        render(view: "questionario", model: [questoes: questionario])
    }
    
    def responder(){       
        def usuario = Usuario.findById(session["usuario"].id)
        // quantidade de questões
        def quantidade = Integer.parseInt(params.quantidade) ;
        
        // list id das questões respondidas
        List idsDasQuestoes = params.list("questao[]")      
                                
        def x = 0
        
        List<Resposta> respostas = new ArrayList<Resposta>()
        
        quantidade.times{
                Resposta r = new Resposta()                       
                r.idQuestao = Integer.parseInt(idsDasQuestoes.get(x))
                r.respostaDada = params.("tentativa"+x+"[]")                   
                respostas.add(r)
                x++
        }
        
        def relatorio = questaoService.registrarRespostas(usuario, respostas)
        
        // carrega a nova pontuação na sessão
        session["usuario"] = Usuario.findById(session["usuario"].id)
        
        render(view: "resultado", model: [relatorio : relatorio])
    }
    
    def buscarPorId(){
        JSON.use("deep")
        render Questao.findAllById(params.id) as JSON
    }

    def buscarPorEnunciado(){
        render Questao.findAllByEnunciadoLike("%"+params.id+"%") as JSON
    }

    def buscarPorLivro(){
        Livro l = Livro.findById(params.id);
        render Questao.findAllByLivro(l) as JSON
    }

    def atualizar(){
        def questao = Questao.findById(params.id)
        questao.enunciado = params.enunciado
        questao.resposta = params.resposta
        questao.alternativa1 = params.alternativa1
        questao.alternativa2 = params.alternativa2
        questao.alternativa3 = params.alternativa3
        questao.alternativa4 = params.alternativa4
        questao.pontuacao = Integer.parseInt(params.pontuacao)
        questao.save(flush:true)
        flash.message = "QUESTÃO ATUALIZADA COM SUCESSO"
        redirect(action:"listar")
    }

    def excluir(){
        def questao = Questao.findById(params.id)
        questao.delete(flush:true)
        flash.message = "QUESTÃO EXCLUÍDA COM SUCESSO"
        redirect(action:"listar")
    }
}
