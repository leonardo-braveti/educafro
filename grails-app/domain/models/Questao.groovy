package models

class Questao {

    Date dataInclusao
    String enunciado
    String resposta
    String alternativa1
    String alternativa2
    String alternativa3
    String alternativa4
    int pontuacao

    static belongsTo = [ item : Item, tema: Tema ]
    
    static mapping = {
        enunciado type: 'text'
        resposta type: "text"
        alternativa1 type: "text"
        alternativa2 type: "text"
        alternativa3 type: "text"
        alternativa4 type: "text"
    }    
    
}
