import models.Usuario

class BootStrap {

    def init = { servletContext ->
        if(Usuario.findByIdAndNomeAndEmailAndSenha(1,"Administrador","admin@educafro.br","isaekael") == null) {
            Usuario admin = new Usuario();
            admin.nome = "Administrador"
            admin.email = "admin@educafro.br"
            admin.senha= "isaekael"
            admin.foneFixo = "(21) 9999-9999"
            admin.foneCelular = "(21) 9999-9999"
            admin.nascimento = new Date()
            admin.bairro = "Rio de Janeiro"
            admin.cep = "12345-789"
            admin.cidade = "Rio de Janeiro"
            admin.empodera = 0;
            admin.logradouro = "Rua do Rio de Janeiro"
            admin.perfil = "admin"
            admin.foto = "padraoUsuario.jpg"
            admin.save(flush:true)
        }
        
        if(Usuario.findByIdAndEmailAndSenha(2,"leongamerti@gmail.com","leon") == null) {
            Usuario admin = new Usuario();
            admin.nome = "Leonardo de Paula Rosa Pereira"
            admin.email = "leongamerti@gmail.com"
            admin.senha= "leon"
            admin.foneFixo = "(21) 2671-2497"
            admin.foneCelular = "(21) 96569-9981"
            admin.nascimento = new Date()
            admin.bairro = "Rio de Janeiro"
            admin.cep = "12345-789"
            admin.cidade = "Rio de Janeiro"
            admin.empodera = 0;
            admin.logradouro = "Rua Lauro Muller 03, Parque Lafaiete"
            admin.perfil = "user"
            admin.foto = "padraoUsuario.jpg"
            admin.save(flush:true)
        }
    }
    def destroy = {
    }
}
