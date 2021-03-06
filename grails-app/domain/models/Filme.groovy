package models

import java.text.SimpleDateFormat

class Filme extends Item{

    String link

    static hasMany = [questoes: Questao]
    static belongsTo = [ tema : Tema ]

    public String formatarDataInclusao(){
        def sdf = new SimpleDateFormat("dd/MM/yyyy")
        return sdf.format(dataInclusao)

    }

    static constraints = {
    }
}
