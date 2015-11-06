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
        <section id="content" class="col-lg-12">

            <div id='mensagemok'>
                <g:message code="${flash.message}" />
            </div>
            
            <article>
				
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