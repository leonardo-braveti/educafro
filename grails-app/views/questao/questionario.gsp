<%@ page import="models.Tema" %>
<!doctype html>
<html lang="pt-br">
    <head>
        <g:render template="../imports" />
        <script src="/educafro/js/questoes.js" ></script>
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
                <article>
                    <div class="centralizar">
                        <span class="titulo_artigo">Questionário</span>
                    </div>
                    <br>
                    
                    <form class="form-horizontal" method="post" action="/educafro/questao/responder">
                        <input type="hidden" name="quantidade" value="${questoes.size()}">
                        
                        <g:each var="questao" in="${questoes}" status="i">
                            
                            <input type="hidden" name="questao[]" value="${questao.id}">
                            
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-2">
                                        <p class="negrito">Questão ${i+1}</label>
                                    </div>
                               
                                    <div class="col-lg-12">
                                        <p> ${questao.enunciado} </p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-1 text-center">
                                        a) <input type="radio" name="tentativa${i}[]" value="${questao.alternativa1}">
                                    </div>
                                    <div class="col-lg-11">
                                        <p> ${questao.alternativa1} </p>
                                    </div>
                                </div>                                
                            </div>
                            
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-1 text-center">
                                        b) <input type="radio" name="tentativa${i}[]" value="${questao.alternativa2}">
                                    </div>
                                    <div class="col-lg-11">
                                        <p> ${questao.alternativa2} </p>
                                    </div>
                                </div>                                
                            </div>
                            
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-1 text-center">
                                       c) <input type="radio" name="tentativa${i}[]" value="${questao.alternativa3}">
                                    </div>
                                    <div class="col-lg-11">
                                        <p> ${questao.alternativa3} </p>
                                    </div>
                                </div>                                
                            </div>
                            
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-1 text-center">
                                        d) <input type="radio" name="tentativa${i}[]" value="${questao.alternativa4}">
                                    </div>
                                    <div class="col-lg-11">
                                        <p> ${questao.alternativa4} </p>
                                    </div>
                                </div>                                
                            </div>
                            
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-1 text-center">
                                        e) <input type="radio" name="tentativa${i}[]" value="${questao.resposta}">
                                    </div>
                                    <div class="col-lg-11">
                                        <p> ${questao.resposta} </p>
                                    </div>
                                </div>                                
                            </div>
                            
                            <p>.</p>
                            
                                                       
                        </g:each>
                        <div class="form-group centralizar">
                            <input type="submit" class="btn btn-primary botoes"  value="RESPONDER" />
                        </div>
                    </form>
                </article>
            </section>
            <div class="clear">
                <br>
            </div>
            </div>
            <footer>
                <g:render template="../rodape" />
            </footer>
        </div>
    </body>
</html>