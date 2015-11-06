package models

import java.text.SimpleDateFormat

class Livro extends Item{
    
    static hasMany = [questoes: Questao]
    static belongsTo = [ tema : Tema ]

    public String formatarDataInclusao(){
        def sdf = new SimpleDateFormat("dd/MM/yyyy")
        return sdf.format(dataInclusao)
    }
}
