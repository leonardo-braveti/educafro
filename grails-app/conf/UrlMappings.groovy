class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        
        
        "/respostas/salvar/$usuario/$produto/$tentativa"(controller: "respostas", action: "salvar")   
        
        "/"(controller:"autenticacao", action: "index")
        "500"(view:'/error')
	}
}
