package models

import java.text.SimpleDateFormat

class Produto {

    String titulo
    String descricao
    Date dataInclusao
    String foto
    int quantidade
    double valor

    static constraints = {
    }

    public String formatarDataInclusao(){
        def sdf = new SimpleDateFormat("dd/MM/yyyy")
        return sdf.format(dataInclusao)

    }

    static List buscarUltimos(){
        def c = Produto.createCriteria()
        def resultado = c {
            maxResults(5)
            order("dataInclusao", "desc")
        }
        return resultado
    }

}
