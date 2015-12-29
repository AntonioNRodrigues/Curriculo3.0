/* 
 */
var kilometrosTiming;
var chronoTiming;
var caloriasTiming;
//object user para registara a sua info
var user = {};

/*
 * redefinição do calendário para marcar as consultas
 */
$(function () {
    $("#datepicker").datepicker({
        monthNames: ["Janeiro", "Fevereiro", "Março", "Abril",
            "Maio", "Junho", "Julho", "Agosto", "Setembro",
            "Outubro", "Novembro", "Dezembro"],
        dayNames: ["Domingo", "Segunda-Feira", "Terça-Feira", "Quarta-Feira",
            "Quinta-Feira", "Sexta-Feira", "Sábado"],
        dayNamesMin: ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sab"],
        onSelect: function (date) {
            validateDate(date);
        },
        numberOfMonths: 1
    });
});

/**
 * 
 */
$('#log a').click(function (event) {

    event.preventDefault();
    $('#entraApp').hide();
    $('body').css("background-image", "url('Imagens/loginReg.png')");
    $('#login').show();

});

$('#regis a').click(function (event) {
    event.preventDefault();
    $('body').css("background-image", "url('Imagens/loginReg.png')");
    $('#entraApp').hide();
    $('#registerApp').show();
});

$('#loginWithRegister').click(function (event) {
    event.preventDefault();
    var email = $('#emailLogin input').val();
    var pass = $('#passLogin input').val();
    if (user.mail === email && user.pass === pass) {
        $('#login').hide();
        $('#menuNavegacao').show();
        $('#buttonBackMenu').show();
        $('#userName, #sairSessao').show();
        
        $('body').css("background-image", "url('Imagens/rodaCenasNaApp.png')");
    } else {
        $('#popUserNaoEncontrado').show();
        $('#buttonOK').click(function (event) {
            event.preventDefault();
            $('#popUserNaoEncontrado').hide();
        });

        $('#buttonRegisto').click(function (event) {
            event.preventDefault();
            $('#login, #popUserNaoEncontrado').hide();
            $('#registerApp').show();
        });
    }
});

/**
 * 
 */
$('#navActFisica').click(function (event) {
    event.preventDefault();
    $('#historico, #medic, #editarPerfil, #menuNavegacao, #sairSessao').hide();
    $('#actFisica').show();
});


$('#navMedic').click(function (event) {
    event.preventDefault();

    $('#historico, #actFisica, #editarPerfil, #menuNavegacao, #sairSessao').hide();
    $('#medic').show();

});


$('#navHistorico').click(function (event) {
    event.preventDefault();
    $('#medic, #actFisica, #editarPerfil, #menuNavegacao, #sairSessao').hide();
    $('#historico, #historico #des, #historicoMenu').show();
});

$('#navPerfil, #userName a').click(function (event) {
    event.preventDefault();
    $('#historico, #medic, #actFisica, #menuNavegacao, #sairSessao').hide();
    $('#editarPerfil').show();
    actualizaPerfil();
});

/*----------------------Actividades----------------------------------*/
$('#tipoActividade').change(function () {
    var opcao = $('#tipoActividade option:selected').text();
    console.log(opcao);
    if (opcao === 'Físicas') {
        $('#selectActFisica').show();

    } else if (opcao === "Quotidianas") {
        $('#selectActFisica').hide();
    }
});


/**
 * iniciar o registo de uma actividade fisica com contagem do tempo..
 */
$('#buttonStartActFisica').click(function (event) {
    event.preventDefault();
    var m = 00, s = 00, h = 00, km = 00, cal = 00;

    if (this.value === "Parar") {
        insertPopUp();

    } else {
        $('#buttonStartActFisica').attr('value', 'Parar');
        h = 00, s = 00, m = 00;
        chronoTiming = setInterval(function () {
            if (s === 60 && m === 59) {
                h++;
                s = 00;
                m = 00;
            } else if (s === 60) {
                s = 00;
                m++;
            } else if (h === 23 && s === 59 && m === 59) {
                s = 00;
                h = 00;
                m = 00;
            }
            console.log("ChronoTimming");
            $('#duracaoParagrafo').text(h + ':' + m + ':' + s++) +" h";
        }, 1000);
        //a cada 1.6 segundos anda 1 metro
        km = 00;
        kilometrosTiming = setInterval(function () {
            $('#distanicaParagrafo').text(km++ +" m");
            console.log("KilometrosTiming");
        }, 1600);
        cal = 0;
        caloriasTiming = setInterval(function () {
            $('#caloriasParagrafo').text(cal++ + " kcal");
            console.log("caloriasTiming");
        }, 5000);
    }

});

function insertPopUp() {
    var dataActividade = new Date();
    //popUp aparece
    $('#popUpTerminarTarefa').show();

    //clica no sim
    $('#confirmaTerminoTarefa').click(function (event) {
        event.preventDefault();

        window.clearInterval(chronoTiming);
        window.clearInterval(kilometrosTiming);
        window.clearInterval(caloriasTiming);
        $('#buttonStartActFisica').attr('value', 'Iniciar');

        //resumo da actividade fisica
        var time = $('#duracao p').text();
        var cal = $('#calorias p').text();
        var typeActFisica = $('#selectActFisica option:selected').text();
        var typeAct = $('#tipoActividade option:selected').text();
        var dist = $('#distancia p').text();
        var freqCar = $('#freqCardiaca p').text();


        if (typeAct === "Físicas") {

            //actualizar op resumo
            //inserir dados da actividade registada
            $('#listaHistoricoActividades').append(
                    '<ul>\n\
                    <li>Actividade Física</li>\n\
                    <li> Desporto: ' + typeActFisica + '</li>\n\
                    <li>' + "Data :" + dataActividade.getFullYear() + "-"
                    + dataActividade.getMonth() + "-"
                    + dataActividade.getDate() + '</li>\n\
                    <li> Duração :' + time + '</li>\n\
                    <li>Calorias: ' + cal + '</li>\n\
                    <li>Distância: ' + dist +'</li>\n\
                    <li>Freq.Cardíaca: ' + freqCar +'</li>\n\
<li><a class="linkdePartilhaActividades" href="#">Partilhar</a></li>');

            $('#tipoActFisicaResumo p').text("Desporto: " + typeActFisica);
            $('#timeResumo p').text(time +" h");
            $('#distanciaResumo p').text(dist);
            $('#caloriasLastActFisicaResumo p').text(cal);
            $('#freqCardiacaActFisicaResumo p').text(freqCar);

        } else {
            //inserir dados da actividade registada
            $('#listaHistoricoActividades').append(
                    '<ul>\n\
                    <li> Actividade Quotidiana</li>\n\
                    <li>' + "Data: " + dataActividade.getFullYear() + "-"
                    + dataActividade.getMonth() + "-"
                    + dataActividade.getDate() + '</li>\n\
                    <li>Duração: ' + time + 'min</li>\n\
                    <li>Calorias: ' + cal +'</li>\n\
                    <li>Distância: ' + dist +'</li>\n\
                    <li>Freq.Cardíaca: ' + freqCar +'</li>\n\
                    <li><a class="linkdePartilhaActividades" href="#">Partilhar</a></li>');

            $('#tipoActFisicaResumo p').text("Actividade Quotidiana");
            $('#timeResumo p').text(time);
            $('#caloriasLastActFisicaResumo p').text(cal);
            $('#distanciaResumo p').text(dist);
            $('#freqCardiacaActFisicaResumo p').text(freqCar);

        }

        $('#popUpResumoActFisica').show();
        $('#popUpTerminarTarefa, #buttonStartActFisica, \n\
            #infoActFisica, #selectActFisica, #tipoActividade').hide();
    });

    //clica no nao
    $('#naoTerminoTarefa').click(function (event) {
        event.preventDefault();
        $('#popUpTerminarTarefa').hide();
    });
}
$('#buttonToMenuActFisica').click(function (event) {
    event.preventDefault();
    $('#popUpResumoActFisica, #popUpTerminarTarefa').hide();
    $('#duracaoParagrafo').text('0:0:0 h');
    $('#caloriasParagrafo').text('0 kcal');
    $('#distanicaParagrafo').text('0 m');
    $('#freqCardiacaParagrafo').text('0 bpm');

    $('#buttonStartActFisica, #infoActFisica, #selectActFisica, #tipoActividade').show();
});


//------------------Consultas-----------------//


$('#openDatepicker').click(function (event) {
    event.preventDefault();
    $('#consulta1').hide();
    $('#datepicker').show();

});


function validateDate(date) {
    var dataActual = new Date();
    var dataSelecionada = new Date(date);

    if (dataSelecionada.getFullYear() <= dataActual.getFullYear()
            && dataSelecionada.getMonth() + 1 <= dataActual.getMonth() + 1
            && dataSelecionada.getDate() <= dataActual.getDate()) {
        $('#popUpNaoExisteConsultaParagrafo')
                .text("No mês atual não já não existe vaga");
        $('#popUpNaoExisteConsulta').show();
    }
    //sabado ou domingo naõ existe consultas
    else if (dataSelecionada.getDay() === 0 || dataSelecionada.getDay() === 6) {
        $('#popUpNaoExisteConsultaParagrafo')
                .text('Nao é possível marcar consultas para o fim de semana');
        $('#popUpNaoExisteConsulta').show();
    }
    else {
        $('#datepicker, #buttonsMarcacaoConsulta, #popUpNaoExisteConsulta').hide();
        $('#dataHorariosDisponiveis')
                .text('Consulta dia: ' + date);
        $('#listaHorariosDisponiveis').show();

    }
}

$('#buttonCancelarConsulta').click(function (event) {
    event.preventDefault();
    $('#listaHorariosDisponiveis').hide();
    $('#datepicker').show();
});


$('#buttonFecharpopUpNaoExisteConsulta').click(function (event) {
    event.preventDefault();
    $('#popUpNaoExisteConsulta').hide();
});


$('#buttonConfirmarConsulta').click(function (event) {
    event.preventDefault();
    var selectHorario = $('#listaHorariosDisponiveisUL :checkbox:checked').length;

    if (selectHorario === 0) {
        $('#popUpNaoExisteConsultaParagrafo')
                .text("Nenhuma data escolhida");
        $('#popUpNaoExisteConsulta').show();
    } else if (selectHorario > 1) {
        $('#popUpNaoExisteConsultaParagrafo')
                .text("Apenas pode selecionar uma horário");
        $('#popUpNaoExisteConsulta').show();

    } else if (selectHorario === 1) {
        var data = new Date($('#dataHorariosDisponiveis').text());
        var tipoConsulta = $('#localConsultasMédica option:selected').text();
        var especialidadeConsulta = $('#especialidadesMedicas option:selected').text();
        var localConsulta = $('#local option:selected').text();
        var horaConsulta = $('#listaHorariosDisponiveisUL :checkbox:checked').attr("value");
        console.log(horaConsulta);
        var consulta = {};
        consulta.ano = data.getFullYear();
        consulta.mes = data.getMonth() + 1;
        consulta.dia = data.getDate();
        consulta.tipo = tipoConsulta;
        consulta.local = localConsulta;
        consulta.hora = horaConsulta;
        consulta.especialidade = especialidadeConsulta;

        $('#listaHorariosDisponiveis').hide();
        $('#listaHistoricoConsultas').append('<ul>\n\
        <li>' + consulta.local + '</li>\n\
        <li>' + consulta.mes + '/' + consulta.dia + '/' + consulta.ano + '</li>\n\
        <li>' + consulta.hora + '</li>\n\
        <li>' + consulta.especialidade + '</li>');


        $('#popUpConfirmacaoConsulta').show();
    }
});


$('#buttonPopUpConfirmacaoConsultaOK').click(function (evnet) {
    event.preventDefault();
    $('#consulta1').show();
    $('#listaHorariosDisponiveis, #popUpConfirmacaoConsulta').hide();
});

/**
 * metodo de guardar o user atraves do form formRegisterNewUser
 */
$('#submitFormReg').click(function (event) {
    event.preventDefault();
    var firstName = $('#firstNameUserInput').val();
    var lastName = $('#lastNameUserInput').val();
    var userEmail = $('#emailUserInput').val();
    var pass1 = $('#passUser1Input').val();
    var pass2 = $('#passUser2Input').val();
    if (userEmail === "") {
    
        alert("Obrigatorio Inserir um email válido");
    } else if (lastName === "" && firstName === "") {
        alert("Os campos Primeiro e Último Nome têm de ser preenchidos !!!");
    }
    else if (pass1 !== pass2) {
        alert("A password não coincide!!!");
    } else if (pass1.length < 4) {
        alert("O número mínimo de caracteres da password é 4");
    } else if (user.mail === userEmail && user.firstName === firstName
            && user.lastName === lastName && user.pass === pass1) {
        alert("Já existe um utilizador com esse email, Introduza outro");
    } else {

        document.cookie = 'firstName=' + firstName +
                ';expires=' + new Date() +
                '; path=/';
        user.firstName = firstName;
        user.lastName = lastName;
        user.mail = userEmail;
        user.pass = pass1;
        actualizaPerfil();
        //  alert("Os seus dados foram registados com sucesso");
        //---criar um popup com append ao div e com button ok para voltar à pag inicial
        $('#popUpRegister').show();
        $('#popUpRegisterParagrafo').text("Os seus dados foram registados com sucesso");

        // $('#registerAppBackButton').hide();

    }
});

//
$('#buttonFecharpopUpRegister').click(function (event) {
    event.preventDefault();
    $('#registerApp').hide();
    $('#popUpRegister').hide();
    $('#login').hide();
    $('#historico').hide();
    $('body').css("background-image", "url('Imagens/rodaCenasNaApp.png')");
    $('#userName a').text(user.firstName + " " + user.lastName);
    $('#userName').show();
    $('#menuNavegacao').show();
    $('#buttonBackMenu').show();
    $('#sairSessao').show();

});
$('#registerAppBackButton').click(function (event) {
    event.preventDefault();
    $('#registerApp').hide();
    $('#popUpRegister').hide();
    $('body').css("background-image", "url('Imagens/mockup-galaxyNovoCroped.png')");
    $('#entraApp').show();
});

function actualizaPerfil() {

    $('#nomePrimPerfil input').attr("value", user.firstName);

    $('#nomeUltPerfil input').attr("value", user.lastName);
    $('#emailPerfil input').attr("value", user.mail);
    $('#moradaPerfil input').attr("value", user.morada);
    $('#contactoPerfil input').attr("value", user.contacto);
    $('#nssPefil input').text("value", user.nss);
    $('#ccPerfil input').text("value", user.cc);
    $('#emailPerfil input').text("value", user.mail);
    console.log(user);

}

$('#confirmarActualizacaoPerfil').click(function (event) {
    event.preventDefault();
    user.firstName = $('#nomePrimPerfil input').val();
    user.lastName = $('#nomeUltPerfil input').val();
    user.morada = $('#moradaPerfil input').val();
    user.contacto = $('#contactoPerfil input').val();
    user.nss = $('#nssPerfil input').val();
    user.cc = $('#ccPerfil input').val();
    user.mail = $('#emailPerfil input').val();
    actualizaPerfil();
    $('#popUpActualizaPerfil p').text("Os seus dados foram actualizados com sucesso");
    $('#popUpActualizaPerfil').show();
});

$('#popUpActualizaPerfil #buttonFecharpopUpActualizaPerfil').click(function (event) {
    $('#userName a').text(user.firstName + " " + user.lastName);
    $('#editarPerfil, #popUpActualizaPerfil').hide();
    $('#menuNavegacao, #sairSessao').show();

});



$('#localConsultasMédica').change(function () {
    var opcao = $('#localConsultasMédica option:selected').text();

    if (opcao === 'Hospital') {
        $('.med').hide();
        $('.hosp').show();
    } else {
        $('.hosp').hide();
        $('.med').show();
    }

});

$('#historicoActividade').click(function (event) {
    event.preventDefault();
    $('#listaHistoricoConsultas').hide();
    $('#listaHistoricoActividades').show();
});

$('#historicoConsultas').click(function (event) {
    event.preventDefault();
    $('#listaHistoricoConsultas').show();
    $('#listaHistoricoActividades').hide();
});

$('#adicianaEspeciliadade').select(function (event) {
    event.preventDefault();
    $(this).append('<input id="adicaEspeInput" placeholder="nome"/>');

});

$('#historicoConsultas').click(function (event) {
    event.preventDefault();
    $('#listaHistoricoActividades, #historicoMenu, #des').hide();
    $('#listaHistoricoConsultas').show();

});

$('#historicoActividade').click(function (event) {
    event.preventDefault();
    $('#listaHistoricoConsultas, #historicoMenu, #des').hide();
    $('#listaHistoricoActividades').show();

});

$('#buttonBackMenu').click(function (event) {
    event.preventDefault();
    $('#menuNavegacao, #sairSessao').show();
    $('#medic, #editarPerfil, #actFisica, #historico, \n\
#listaHistoricoActividades, #listaHistoricoConsultas').hide();

});

$('#sairSessao').click(function (event) {
    
    event.preventDefault();
    $('#entraApp').show();
    $('body').css("background-image", "url('Imagens/mockup-galaxyNovoCroped.png')");
    $('#medic, #editarPerfil, #actFisica, #historico, #menuNavegacao, #voltarTras,\n\
 #buttonBackMenu, #userName, #sairSessao').hide();

});

$('.linkdePartilhaActividades').click(function (event){
    event.preventDefault();
    $('#popUpPartilha').show();
    
});

$('#buttonConfirmaPartilha').click(function (event){
    $('#popUpPartilha').hide();
});