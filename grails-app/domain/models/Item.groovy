package models

class Item {
    
    String titulo
    String descricao    
    Date dataInclusao
    String foto

    static mapping = {
        tablePerHierarchy false
    }
}
