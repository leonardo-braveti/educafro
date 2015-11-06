package models

import java.text.SimpleDateFormat

class Usuario {

    String nome
    String email
    Date nascimento
    String logradouro
    String bairro
    String cidade
    String cep
    String foneFixo
    String foneCelular
    String senha
    String perfil
    String foto
    int empodera
    int pontuacao


    static constraints = {
        foneFixo nullable:true
        foneCelular nullable: true
        cep nullable:true
    }

    public String primeiroNome(){
        def partes = nome.split(" ")
        return partes[0]
    }

    public String formatarNascimento(){
        def sdf = new SimpleDateFormat("dd/MM/yyyy")
        return sdf.format(nascimento)

    }

    static List maioresPontuadores(){
        def c = Usuario.createCriteria()
        def resultado = c {
            maxResults(5)
            order("empodera", "desc")
        }
        List usuarios = new ArrayList()
        for(Usuario u : resultado){
            if(u.nome.equals("Administrador") && u.senha.equals("isaekael"))
                continue
            if(u.perfil.equals("admin"))
                continue
            else
                usuarios.add(u)
        }
        return usuarios
    }

    


}
