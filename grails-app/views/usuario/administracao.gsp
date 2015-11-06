<!doctype html>
<html lang="pt-br">
<head>
    <g:render template="../imports" />
</head>
<body>
	<div id="container" class="width">
        <header>
        <g:render template="../menu" />
    </header>

        <div id="intro">
            <g:render template="../banner" />
        </div>
    <div id="body" class="width">
		<section id="content" class="two-column with-right-sidebar">
                    <article>
                        <span class="titulo_artigo">Postagens</span>
                        <br>
                        <a href="/educafro/post/criar" class="button button-slider">Criar</a>
                        <a href="/educafro/post/listar" class="button button-slider">Listar</a>
                        <br><br>
                    </article>		
			
                    <article>
			<span class="titulo_artigo">Usuários</span>
			<br>
			<g:link controller="usuario" action="buscar" class="button button-slider">Buscar</g:link>
			<g:link controller="usuario" action="listar" class="button button-slider">Listar</g:link>
                        <br><br>
                    </article>		
			
                    <article>
                        <span class="titulo_artigo">Produtos</span>
                        <br>
                        <g:link controller="produto" action="criar" class="button button-slider">Criar</g:link>                
                        <g:link controller="produto" action="listar" class="button button-slider">Listar</g:link>
                        <br><br>
                    </article>

                    <article>
                        <span class="titulo_artigo">Tema</span>
                        <br>
                        <g:link controller="tema" action="criar" class="button button-slider">Criar</g:link>
                        <g:link controller="tema" action="listar" class="button button-slider">Listar</g:link>
                        <br><br>
                    </article>

                    <article>
                        <span class="titulo_artigo">Livros</span>
			<br>
			<g:link controller="livro" action="criar" class="button button-slider">Criar</g:link>                
                        <g:link controller="livro" action="listar" class="button button-slider">Listar</g:link>
                        <br><br>
                    </article>
                    
                    <article>
                        <span class="titulo_artigo">Filmes</span>
			<br>
			<g:link controller="filme" action="criar" class="button button-slider">Criar</g:link>                
                        <g:link controller="filme" action="listar" class="button button-slider">Listar</g:link>
                        <br><br>
                    </article>
                    
                    <article>
                        <span class="titulo_artigo">Documentários</span>
			<br>
			<g:link controller="documentario" action="criar" class="button button-slider">Criar</g:link>                
                        <g:link controller="documentario" action="listar" class="button button-slider">Listar</g:link>
                        <br><br>
                    </article>
                    
                    <article>
                        <span class="titulo_artigo">Reportagens</span>
			<br>
			<g:link controller="reportagem" action="criar" class="button button-slider">Criar</g:link>                
                        <g:link controller="reportagem" action="listar" class="button button-slider">Listar</g:link>
                        <br><br>
                    </article>
                    
                    <article>
                        <span class="titulo_artigo">Pesquisas</span>
			<br>
			<g:link controller="pesquisa" action="criar" class="button button-slider">Criar</g:link>                
                        <g:link controller="pesquisa" action="listar" class="button button-slider">Listar</g:link>
                        <br><br>
                    </article>

                    <article>
                        <span class="titulo_artigo">Questões</span>
                        <br>
                        <g:link controller="questao" action="criar" class="button button-slider">Criar</g:link>                        
                        <g:link controller="questao" action="listar" class="button button-slider">Listar</g:link>
                        <br><br>
                    </article>

        </section>

     
    	<div class="clear"></div>
    </div>
<footer>
    <g:render template="../rodape" />
</footer>
</div>
</body>
</html>