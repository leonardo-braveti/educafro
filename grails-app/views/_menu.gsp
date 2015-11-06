<!-- testar se existe sessao para mostrar este trecho @ -->
            <g:if test="${session["usuario"] != null}">
				<div class="width">
    				<h1><a href="#">Educafro<strong> Rio</strong></a></h1>
					<nav>	
    					<ul class="sf-menu dropdown">
    						<li>
                                <a>Olá, <span class="destaque">${session["usuario"].primeiroNome()}</span>.
                                <g:if test="${session["usuario"].perfil.equals("user")}">
								     &nbsp; Caixa: <span class="destaque">${session["usuario"].empodera}</span>
                                                                     &nbsp; Pontuação: <span class="destaque">${session["usuario"].pontuacao}</span>
                                </g:if>
                                </a>
                            </li>
        					<li class="selected"><a href="/educafro"><i class="fa fa-home"></i> Home</a></li>
            				<!--<li><a href="index.html"><i class="fa fa-file-text"></i> Regulamento</a></li>-->

							<g:if test="${session["usuario"].perfil.equals("user")}">
                                <li><g:link controller="questao" action="configurar" href=""><i class="fa fa-file-text-o"></i> Questionário</g:link></li>
                                <li><g:link controller="produto" action="mercado" href=""><i class="fa fa-shopping-cart"></i>
                                    Mercado</g:link></li>
                            </g:if>

							<li><g:link controller="usuario" action="perfil"><i class="fa fa-user"></i> Perfil</g:link></li>

							<!-- define se o submenu administração aparece dependendo do perfil do usuario logado -->
                            <g:if test="${session["usuario"].perfil.equals("admin")}">
						        <li>
                                    <g:link controller="usuario" action="administracao" href=""><i class="fa fa-user"></i>
                                        Administração
                                    </g:link>
                                </li>
                            </g:if>
							<!-- fim do teste -->
							
							<li><g:link controller="autenticacao" action="credencial"><i class="fa fa-check"></i> Senha</g:link></li>
							<!--<li><a href="#"><i class="fa fa-phone"></i> Contato</a></li>-->
							<li><g:link controller="autenticacao" action="sair"> <i class="fa fa-times"></i> Sair</g:link></li>
       					</ul>			
						<div class="clear"></div>
    				</nav>
       			</div>
			    <div class="clear"></div>
            </g:if>
	<!-- termino @ -->

	<!-- so mostra se estiver logado -->
            <g:if test="${session["usuario"] == null}">
				<div class="width">
    				<h1><a href="#">Educafro<strong> Rio</strong></a></h1>
					<nav>	
    					<ul class="sf-menu dropdown">	
    						<li><a href="/educafro"><i class="fa fa-home"></i> Home</a></li>
							<li><g:link controller="usuario" action="cadastrar"><i class="fa fa-user"></i> Cadastrar</g:link></li>
							<li class="selected"><g:link controller="autenticacao" action="entrar"><i class="fa fa-home"></i> Entrar</g:link></li>
       					</ul>			
						<div class="clear"></div>
    				</nav>
       			</div>
			    <div class="clear"></div>
            </g:if>
	<!-- termino -->