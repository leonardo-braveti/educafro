<%@ page import="models.Usuario; models.Post; models.Produto; java.text.SimpleDateFormat" %>
<!doctype html>
<html lang="pt-br">
    <head>
        <g:render template="../imports" />
    </head>
    <body>
	    <div id="container" class="width">
        <header>
		    <!-- inclusão do menu da pagina oriundo de arquivo externo. -->
            <g:render template="../menu" />
        </header>

        <div id="intro">
             <!-- inclusão do banner da pagina oriundo de arquivo externo. -->
            <g:render template="../banner" />
	    </div>
	
        <div id="body" class="width">
            <div id='mensagemok'>
                <g:message code="${flash.message}" />
                <br><br>                
            </div>
		    <section id="content" class="two-column with-right-sidebar">

			<!-- cinco ultimos posts cadastrados -->
				<g:each in="${Post.buscarUltimos()}">
					<article>
					    <span class='titulo_artigo'>${it.titulo}</span>
					    <br>
					    <div class='dados_post'>Postado em
                            <span class='post_data'>
                                ${new SimpleDateFormat("dd/MM/yyyy").format(it.dataInclusao.time)}
                            </span>
                            por
                            <span class='post_autor'>
                                ${it.usuario.nome}
                            </span></div>
					    <p class='texto_post'>${it.assunto}</p>
					</article>
                </g:each>

            </section>

            <aside class="sidebar big-sidebar right-sidebar" >
                <ul>
                    <li>
                        <h4 class='titulo_artigo'>Ranking</h4>
                        <ul class="blocklist">
                            <li>
                                <a class="selected" href="index.html">Maiores Pontuadores</a>
                            </li>

                            <g:each in="${Usuario.maioresPontuadores()}">
                                <li>
                                    <a href='#' class='texto_post'>
                                        ${it.primeiroNome()} -  ${it.empodera}
                                    </a>
                                </li>
                            </g:each>
                        </ul>
                    </li>
                </ul>

            </aside>
        
            <aside class="sidebar big-sidebar right-sidebar">
                <ul>
                    <li>
                        <h4 class='titulo_artigo'>Premiação</h4>
                        <ul class="blocklist">
                            <li>
                                <a class="selected" href="index.html">Últimos Lançamentos</a>
                            </li>

                            <g:each in="${Produto.buscarUltimos()}">
                                <li>
                                    <a href='#' class='texto_post'>
                                        ${it.titulo} em ${new SimpleDateFormat("dd/MM/yyyy").format(it.dataInclusao.time)}
                                    </a>
                                </li>
                            </g:each>
                        </ul>
                    </li>
                </ul>
		
            </aside>
    	    <div class="clear">
                <br>
    	    </div>
        </div>
    <footer>
    	<!-- inclusão do rodape da pagina oriundo de arquivo externo. -->
    	<g:render template="../rodape" />
    </footer>
</div>
</body>
</html>