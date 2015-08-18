/****************************************************
 *                                                  *                
 *           Work_in_Java JQUERY                    *            
 *                                                  *        
 *                                                  *                
 *                                                  *           
 ****************************************************/

/*função que permite realizar o desaparecimento dos botões dos vários projectos*/
$(document).ready(function(){
    $('.buttonJavaSite, .buttonJSPSite, article:nth-child(2) .buttonCodingbat, .buttonJavaFcul').hide(1200);
});
/* função que permite a quando do click no div com o id de .fadeInFadeOut
 * fazer aparecer os botões com o class de .buttonJavaSite e .buttonJSPSite, 
 * realizando a repectiva transformação do div .fadeInFadeOut, num triângulo 
 * com a base para cima, em um com a base virado para baixo.
 * Depois desta transformação e quando o utilizador passar por cima de triangulo
 * realiza a operação inversa, da descrita anteriormente, retomando a posição 
 * inicial sem os botões.
 * */
$(document).ready(function(){
    $('.fadeInFadeOut').click(function(){
        $('.buttonJavaSite, .buttonJSPSite').show(500, function(){
             $('.fadeInFadeOut').css('border-top', '0px solid #999');
             $('.fadeInFadeOut').css('border-bottom', '10px solid #999');
             $('.fadeInFadeOut').css('top', '99.4%');
             
        });
      
    });
    $('.fadeInFadeOut').mouseover(function(){
        $('.buttonJavaSite, .buttonJSPSite').hide(500, function(){
             $('.fadeInFadeOut').css('border-top', '30px solid #999');
             $('.fadeInFadeOut').css('border-bottom', '0px solid #999');
             $('.fadeInFadeOut').css('top', '100%');
             
        });
      
    });
});
/* função que permite a quando do click no div com o id de .fadeInFadeOut1
 * fazer aparecer os botões com o class de .buttonCodingbat, 
 * realizando a repectiva transformação do div .fadeInFadeOut1, num triângulo 
 * com a base para cima, em um com a base virado para baixo.
 * Depois desta transformação e quando o utilizador passar por cima de triangulo
 * realiza a operação inversa, da descrita anteriormente, retomando a posição 
 * inicial sem os botões.
 * */
$(document).ready(function(){
    $('.fadeInFadeOut1').click(function(){
       $('article:nth-child(2) .buttonCodingbat').show(500, function(){
             $('.fadeInFadeOut1').css('border-top', '0px solid #999');
             $('.fadeInFadeOut1').css('border-bottom', '10px solid #999');
            
        });
    });
    $('.fadeInFadeOut1').mouseover(function(){
        $('article:nth-child(2) .buttonCodingbat').hide(500, function(){
             $('.fadeInFadeOut1').css('border-top', '30px solid #999');
             $('.fadeInFadeOut1').css('border-bottom', '0px solid #999');
             $('.fadeInFadeOut1').css('top', '99.5%');
             
        });
      
    });
});
/* função que permite a quando do click no div com o id de .fadeInFadeOut3
 * fazer aparecer os botões com o class de .buttonJavaFcul, 
 * realizando a repectiva transformação do div .fadeInFadeOut3, num triângulo 
 * com a base para cima, em um com a base virado para baixo.
 * Depois desta transformação e quando o utilizador passar por cima de triangulo
 * realiza a operação inversa, da descrita anteriormente, retomando a posição 
 * inicial sem os botões.
 * */
$(document).ready(function(){
    $('.fadeInFadeOut3').click(function(){
       $('.buttonJavaFcul').show(500, function(){
             $('.fadeInFadeOut3').css('border-top', '0px solid #999');
             $('.fadeInFadeOut3').css('border-bottom', '10px solid #999');
            
        });
    });
    $('.fadeInFadeOut3').mouseover(function(){
        $('.buttonJavaFcul').hide(500, function(){
             $('.fadeInFadeOut3').css('border-top', '30px solid #999');
             $('.fadeInFadeOut3').css('border-bottom', '0px solid #999');
             $('.fadeInFadeOut3').css('top', '96.2%');
             
        });
      
    });
});
/*Função que permite mostrar a chave do euroMilhoes gerada para o utilizador
 * No momento qem que o utilizador carrega no botão com o id gerarCodigo 
 * o elemento com o id de euroWindow é mostrado graças à função de show()
 */
$(document).ready(function(){
    $('#gerarCodigo').click(function(){
       $('#euroWindow').show('slow'); 
       $('.fadeInFadeOut2').css('top', '97%');
    });
});
/*
$(document).ready(function(){
    $(window).scroll(function(){
        $('#namePage').css('display', 'none');
        
    });
     $('#namePage').append('<p>this is some code</p>'); 
});*/