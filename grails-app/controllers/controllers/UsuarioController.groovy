package controllers

import models.Usuario
import grails.converters.JSON

import java.text.SimpleDateFormat

class UsuarioController {

    def usuarioService
    
    // ### NAVEGACAO ### // 
    def cadastrar() { }
    def perfil(){}
    def administracao(){ }
    def buscar(){ }
    def listar(){ }
    // ### NAVEGACAO ### // 
    
    
    // ### JSON ### // 
    def buscarPorNome(){
        render Usuario.findAllByNomeLike(params.id+"%") as JSON
    }

    def buscarPorEmail(){
        render Usuario.findAllByEmailLike(params.id+"%") as JSON
    }

    def buscarPorId(){
        render Usuario.findAllById(params.id) as JSON
    }
    
    def listarUsuarios(){
        render Usuario.findAll() as JSON
    }
    
    def iniciarSaldo(){  
        def saldo = [(session["usuario"].empodera)] as Integer[]
        render saldo as JSON
        //render session["usuario"] as JSON
    }
    // ### JSON ### // 


    def registrarNovoUsuario(){
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy")
        params.nascimento = sdf.parse(params.nascimento)
        def usuario = new Usuario(params)
        usuarioService.cadastrar(usuario, request)
        flash.message = "USUÁRIO CRIADO COM SUCESSO"
        redirect uri:"/"
    }
    

    def atualizarPerfil(){
        def usuario = session["usuario"]
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy")
        params.nascimento = sdf.parse(params.nascimento)
        usuario.properties = params
        usuario.senha = session["usuario"].senha
        usuario.empodera = Double.valueOf(params.empodera);

        usuarioService.atualizar(usuario,request)
        flash.message="DADOS ATUALIZADOS COM SUCESSO"
        redirect(controller:"usuario", action:"perfil")
    }

    def gerenciarPerfil(){
        def usuario = Usuario.findById(params.id)

        if(params.tornar != null) {
            if (params.perfil.equals("Usuário"))
                usuario.perfil = "admin"
            else
                usuario.perfil = "user"
        }

        if(!params.credito.equals(""))
            usuario.empodera = Double.parseDouble(params.empodera) + Double.parseDouble(params.credito)

        usuario.save(flush:true)

        flash.message = "O USUARIO #"+usuario.id+" FOI ATUALIZADO COM SUCESSO"
        redirect (controller:"usuario", action:"listar")
    }

    def apagarPerfil(){
        def usuario = Usuario.findById(params.id)
        usuario.delete(flush:true)
        flash.message = "O USUARIO #"+usuario.id+" FOI EXCLUÍDO COM SUCESSO"
        redirect(controller:"usuario", action:"perfil")
    }
    
   
}
