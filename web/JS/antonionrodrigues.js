/****************************************************
 *                                                  *                
 *           FrontPage javaScript                   *            
 *                                                  *        
 *                                                  *                
 *                                                  *           
 ****************************************************/

/**
 * Chama a função clearBlocoFrontPage()
 * Funcção gerado pelo onmouseover de algum dos anchor tags do elemento 
 * linksEntrada. recebe o idElem que está a ser sobrevoado colocando-o 
 * com display = block ou seja visivel
 * @param {type} idElem elemento a tornar visivel
 */
function popIn2(idElem) {
    clearBlocoFrontPage();
    document.getElementById(idElem).style.display = 'block';
}


/**
 * Torna o elemento imagem não visivel
 * @returns {undefined}
 */
function clearBlocoFrontPage() {
    document.getElementById('imagemBackground').style.display = 'none';
}

/**
 * Funcção gerado pelo onmouseout de algum dos a tags do elemento 
 * linksEntrada, fazendo-o desaparecer
 * chama a função reposicionarBlocoFrontPage
 * @param {type} idElem id do elemento que deixou de ser sobrevoado
 * @returns {undefined}
 */
function normal2(idElem) {
    document.getElementById(idElem).style.display = 'none';
    reposicionarBlocoFrontPage();
}

/**
 * Default para o elemento imagem qdo não se está a sobrevoar nenhum das 
 * a tags do elemento linksEntradas. 
 * @returns {undefined}
 */
//Deprecated
function reposicionarBlocoFrontPage() {
    document.getElementById('imagemBackground').style.display = 'block';
}


/****************************************************
 *                                                  *                
 *           AboutMe javaScript                     *            
 *                                                  *        
 *                                                  *                
 *                                                  *           
 ****************************************************/


/* JavaScript file for the the AboutMe.jsp
 * Program que permite à medida que sobrevoamos os anos 
 * aparecam o div correpondente a esse ano.
 * Possuo uma div principal que é o que está sempre visivel 
 * até alguns dos anos serem sobrevoados */

/*funcção que premite receber o id do Elemento sobrevoado, 
 *bem como o id do elemento que irá ser tornado visivel.
 *essa var irá ser passada para o document.getEel..ById() 
 *que torna esse elemen to visivel.
 *Antes e chamado outra função. */
function popIn(idElem, idElemTransfor) {

    clearBloco();
    document.getElementById(idElemTransfor).style.display = 'inline';
}

/*Torna o elemento Bloco  não visivel*/
function clearBloco() {
    document.getElementById('bloco').style.display = 'none';
}

/*funcção que premite receber o id do Elemento sobrevoado, 
 *bem como o id do elemento que irá ser tornado invisivel
 *essa var irá ser passada para o document.getEel..ById()
 *que torna esse elemento invisivel
 *Antes e chamado outra função. */
function normal(idElem, idElemTransfor) {
    document.getElementById(idElemTransfor).style.display = 'none';
    reposicionarBloco();
}

/* torna o elemento bloco visivel e sempre disponivel se não
 * houver sobrevoamento dos anos. */
function reposicionarBloco() {
    document.getElementById('bloco').style.display = 'block';
}

/* função relacionada com o menu de links para as outras paginas
 * se o butilizador sobrevoar umn dos botões e aumenta o width do 
 * elemento passado com argumento em 200px*/
function crescer(idEleCresce, id) {
    for (var i = 0; i <= 200; i++) {
        document.getElementById(idEleCresce).style.width = +i + 'px';
    }
}

/*Qdo o utilizador deixa de sobrevoar 
 * um dos botões e diminui o width do elemento passado com argumento em 200px*/
function decrescer(idEleDecresce, id) {
    for (var j = 0; j < 180; j++) {
        document.getElementById(idEleDecresce).style.width = -j + 'px';
    }
    document.getElementById(idEleDecresce).style.width = '20px';
}


/****************************************************
 *                                                  *                
 *           PageCurriculum javaScript              *            
 *                                                  *        
 *                                                  *                
 *                                                  *           
 ****************************************************/

$('.dropdown-menu li a').click(function (evento) {
    $('footer').hide();
});

/*
 * função relacionada com o menu de links para as outras paginas
 * se o utilizador sobrevoar um dos botões 
 * e aumenta o width do elemento passado com argumento em 200px
 */

function crescer(idEleCresce, id) {
    for (var i = 0; i <= 200; i++) {
        document.getElementById(idEleCresce).style.width = +i + 'px';
    }
}

/**
 * Qdo o utilizador deixa de sobrevoar um dos 
 * botões e diminui o width do elemento passado com argumento em 200px
 * @param {type} idEleDecresce do elemento a decrescer
 * @param {type} id do botao clicado 
 * 
 */

function decrescer(idEleDecresce, id) {
    for (var j = 0; j < 180; j++) {
        document.getElementById(idEleDecresce).style.width = -j + 'px';
    }
    document.getElementById(idEleDecresce).style.width = '20px';
}

/****************************************************
 *                                                  *                
 *           Projects JavaScript                    *            
 *                                                  *        
 *                                                  *                
 *                                                  *           
 ****************************************************/

/** Função que trata dos clicks dos botões dos diferentes butões da pagina
 * Abre uma nova janela no browser com o respectivo conteudo. 
 * Inicialização de uma array com determinadas posições.
 * depois de realizar a primeira condição vai iterar sobre esse array e coloca em cada posição um elemento 
 * com id gerado automaticamente no jsp.
 * Qdo o id alojado no array for o mesmo do id do botão clicado 
 * abre a janela com o conteudo desse id
 * 
 * @param {type} id do botao clicado
 * @param {type} contr var de controlo para saber qual a class onde tem de ir procurar 
 * o conteudo correspondente desse botão
 */
function showTextArea(id, contr) {
    var newWindow = window.open('', '', 'width=1000, height=530');
    var myClasses = new Array(60);
    if (contr === 'javaOutraPasta') {
        for (var i = 0; i < myClasses.length; i++) {
            myClasses[i] = document.getElementsByClassName('buttonJavaSite')[i];
            if (myClasses[i] === id) {
                var pp = document.getElementsByClassName('java')[i];

                newWindow.document.write('<head>\n\
                    <script src="JS/SintaxHighlighter/shCore.js" type="text/javascript"></script>\n\
                    <script src="JS/SintaxHighlighter/shBrushCss.js" type="text/javascript"></script>\n\
                    <script src="JS/SintaxHighlighter/shBrushJScript.js" type="text/javascript"></script>\n\
                    <script src="JS/SintaxHighlighter/shBrushJava.js" type="text/javascript"></script>\n\
                    <script src="JS/SintaxHighlighter/shBrushSql.js" type="text/javascript"></script>\n\
                    <link rel="stylesheet" href="CSS/SintaxHighlighter/shCore.css" type="text/css" media="screen"/>\n\
                    <link rel="stylesheet" href="CSS/SintaxHighlighter/shCoreEmacs.css" type="text/css" media="screen"/>\n\
                    </head>\n\
                    <body>\n\
                    <pre class="brush: js">' + pp.innerHTML + '</pre>\n\
                    </body><script type="text/javascript"> SyntaxHighlighter.all();</script>');

            }
        }
    } else if (contr === 'jspage') {
        for (var i = 0; i < myClasses.length; i++) {
            myClasses[i] = document.getElementsByClassName('buttonJSPSite')[i];
            if (myClasses[i] === id) {
                var pp = document.getElementsByClassName('jsp')[i];
                newWindow.document.write('<head>\n\
                    <script src="JS/SintaxHighlighter/shCore.js" type="text/javascript"></script>\n\
                    <script src="JS/SintaxHighlighter/shBrushCss.js" type="text/javascript"></script>\n\
                    <script src="JS/SintaxHighlighter/shBrushJScript.js" type="text/javascript"></script>\n\
                    <script src="JS/SintaxHighlighter/shBrushJava.js" type="text/javascript"></script>\n\
                    <script src="JS/SintaxHighlighter/shBrushSql.js" type="text/javascript"></script>\n\
                    <link rel="stylesheet" href="CSS/SintaxHighlighter/shCore.css" type="text/css" media="screen"/>\n\
                    <link rel="stylesheet" href="CSS/SintaxHighlighter/shCoreEmacs.css" type="text/css" media="screen"/>\n\
                    </head>\n\
                    <body>\n\
                    <pre class="brush: js">' + pp.innerHTML + '</pre>\n\
                    </body><script type="text/javascript"> SyntaxHighlighter.all();</script>');
            }
        }
    }
}

/*função que permite ao clicar no botão com o id de gerarCodigo obter 
 * uma nova janela com com o conteudo do jogo do euromilhoes do div com o 
 * id de gerarCodigo que num estado default de display: none
 * FUNÇÃO NÃO UTILIZADA COM A INCLUSÃO DAS ANIMAÇÕES COM O JQUERY
 
 function gerarCodigoEuro(id){
 var p=document.getElementById(id);
 var newWindow=window.open('','','width=200, height=50');
 var tmp=newWindow.document;
 tmp.write(p.innerHTML);
 } 
 */

/**
 * funcao que abre uma nova janela com o formulario. Eh realizada sobre a evento
 * onclick() do elemento a do SimpleInsertUserDB.
 * @returns {Boolean}
 */
function showForm() {
    var newwindow = window.open('', 'newWindow', 'height=100, width=500');
    newwindow.document.write(' <form action=' + "/../../Curriculo/ComWithDB" + ' method="post" >\n\
                Name: <input id="nameCustomer" type="text" name="name" ><br>\n\
                Email: <input id="emailCustomer" type="text" name="email" ><br>\n\
                <input type="submit"></form>');
    if (window.focus) {
        newwindow.focus();
    }
    return false;

}

/**
 * respond of the event click of #buttonClose to close the form to submit the comment
 * @param {type} elemento 
 * @param {type} accessKeyArticle
 * @returns {undefined}
 */
function clearSubmitMenu(elemento) {
    var accessKeyArticle = elemento.parent().attr("accesskey");
    // recoloca cada div com a accessKeyArticle na div com o id #getComments
    elemento.parent().children('#' + accessKeyArticle).each(function () {
        $("#getComments").append($(this));
    });
    elemento.parent().children("#insertComments").hide("slow", function () {
    });
}

/**
 * function que reponde ao click do button e mostra a div para inserir um
 * comentario bem como realiza a display e todos os comentario já feitos sobre o artigo
 * @param {type} article sobre o qual foi clicado o button
 * @returns {undefined}
 */
function showCommentsAndInsertComment(article) {

    var accessKeyArticle = article.attr("accesskey");
    article.children("#insertComments").show("slow", function () {
        $("#getComments").children().each(function () {
            if ($(this).attr("id") === accessKeyArticle) {
                // retira da div #getComments as div com o mesmo id do acceskey do article
                article.append($(this).show("slow"));
            }
        });
    });
}



/**
 * funcao que realiza assincronamente a ligação ah servlet para inserir o comentario na DB
 * @param {type} element numero do article em que foi inserido um comentario
 * @param {type} form 
 * @returns {undefined}
 */
function insertComment(element, form) {
    var date = new Date();

    var fullDate = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();

    element.submit(function (event) {
        event.preventDefault();
    });

    var accessKeyArticle = element.parent().parent().attr("accesskey");
    var name = element.children("#nameCommentator").val();
    var comment = element.children("#commentCommentator").val();
    // form not empty
    if (name !== "" && comment !== "") {
        // insert on DB
        var response = {"name": name, "comment": comment, "numberArticle": accessKeyArticle, "date": fullDate};
        $.ajax({
            url: 'CommentsInsert', // servlet CommentsInsert.java
            type: 'post',
            data: response, // Data to be sent to the server
            dataType: 'text', // the type of data that is send back from the server
            success: function (dataSendBackFromTheServer) {
                //console.log(dataSendBackFromTheServer);
                if (dataSendBackFromTheServer === "1") {

                    var counter = parseInt(element.parent().parent().children('#counterArticleA').children().html()) + 1;
                    element.parent().parent().children('#counterArticleA').children().html(counter);

                    alert(name + ", obrigado pelo comentário");
                    form.reset();
                    //criar um div temporaria para colocar la o ultimo comentario
                    // evita um nova connection ah bd e esta salvaguarda a sua inserçõa pq esta aconeteceu
                    element.parent().parent().append('<div id="' + accessKeyArticle + '">\n\
                            <h5>' + name + '</h5><time>' + fullDate + '</time><p> ' + comment + '</p></div>');
                    clearSubmitMenu(element.parent());

                }
                if (dataSendBackFromTheServer !== "1") {
                    alert(name + ", Sorry... comentário nao inserido");
                }
            }
        });
        // form empty
    } else {
        alert("Todos os campos tem de ser preenchidos");
    }
}

/**
 * Todos os articles que contem a div #counterArticleA gere o evento de clicar 
 * na div e previne que o a href va para outra link 
 * (previne o seu efeito por default).
 * Realiza a show do elemento insertcomments.
 * Por cada elemento que esta na div getComments se tiver 
 * o id igual ao accesskey do artigo coloca-o como comentario desse artigo.
 * Por fim realiza um pequeno scrool ate ao a div insertComments.
 */
$('article #counterArticleA').click(function (event) {

    event.preventDefault();
    var counterArticle = $(this).children();
    var accessKeyArticle = counterArticle.parent().parent().attr("accesskey");
    var $divInsertComments = counterArticle.parent().parent().children("#insertComments");

    $divInsertComments.show("slow", function () {
        $("#getComments").children().each(function () {
            if ($(this).attr("id") === accessKeyArticle) {
                counterArticle.parent().parent().append($(this).show("slow"));
            }
        });
    });

    $('html, body').animate({
        scrollTop: $divInsertComments.offset().top
    }, 2000);

});


var $image = $('#imagemSite').first();
var $downloadedImage = $('<img id ="imagemSite">');

$downloadedImage.load(function(){
    $image.attr("src", $(this).attr("src"));
    $image.css("border","3px solid #CD6600");
});
$downloadedImage.attr("src","Imagens/FrontPage.jpg");

/**
 * function that as each page loads inserts the current year in the footer
 * @param {type} param
 */
$(document).ready(function () {
    $('footer p a').append(new Date().getFullYear());
});

