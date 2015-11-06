package models

class Post {

    String titulo
    String assunto
    Date dataInclusao

    static belongsTo = [usuario : Usuario]

    static mapping = {
        fetch: 'join'
    }

    static List buscarUltimos(){
        def c = Post.createCriteria()
        def resultado = c {
            maxResults(5)
            order("dataInclusao", "desc")
        }
        return resultado
    }

}