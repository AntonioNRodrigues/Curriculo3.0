/*
 * 
 */
package model.classe;

import model.classe.education.EducationOverall;
import model.classe.experience.WorkExperience;

/**
 *
 * @author antonio
 */
public class FillCurriculo {

    private PersonalInformation pf;
    private EducationOverall edOverall;
    private WorkExperience wExperience;

    /**
     * method to get the personal information
     *
     * @return PersonalInformation object
     */
    public PersonalInformation getPF() {
        fillPinf();
        return pf;
    }

    /**
     * private class to automatic fill the personal information
     */
    private void fillPinf() {
        pf = new PersonalInformation("António", "Rodrigues", "António Rodrigues", "00000000",
                "antonio.n.rodrigues@gmail.com", "Português", "1981/03/06", "Male");
    }

    /**
     * method to get the education overall
     *
     * @return EducationOverall object
     */
    public EducationOverall getEd() {
        fillEducation();
        return edOverall;
    }

    /**
     * private method to fill the EducationOverall object
     *
     */
    private void fillEducation() {
        edOverall = new EducationOverall();

        edOverall.addEducation("2012",
                "Oracle Certified Expert, Java Platform, EE 6 Web Component Developer",
                "Exame de certificação (1Z0-899) ao nível do Java Enterprise Edition 6.",
                "Oracle Certified Expert");
        edOverall.addEducation("2012",
                "Oracle Certified Professional, Java SE 6 Programmer",
                "Exame de certificação (1Z0-851) ao nível do Java Standard Edition 6.",
                "Oracle Certified Professional");
        edOverall.addEducation("2012",
                "Business Component Development with EJB Technology, Java EE6",
                "Introduction to java EE, implementing session beans, accessing session beans, advanced session beans concepts, singleton session beans, developing java EE applications using messaging, developing message-driven beans, using timer services objectives, implementing interceptor classes and methods, implementing transactions, implementing security, using EJB technology best practices.",
                "Academia de Java/Rumos");
        edOverall.addEducation("2012",
                "Web Component Development with Servlet and JSP",
                "Introduction to java servlets, introduction to java server pages, implementing an MVC design, the servlet´s environment, container facilities for servlets and JSPs, more view facilities, development JSP pages, development JSP pages using custom tags, more controller facilities, more options for the model, asynchronous web applications, web application security.",
                "Academia de Java/Rumos");
        edOverall.addEducation("2012",
                "SL-275-SE6 Java Programming Language, Java SE 6",
                "Object-oriented programming, identifiers, keywords, and types, expressions and flow control, arrays, class design, advanced class features, exceptions and assertions, collections and generics framework, I/O fundamentals, console I/O and file I/O, building java GUI using the swing API, handling GUI-generated events, GUI-based applications, threads, networking.",
                "Academia de Java/Rumos");
        edOverall.addEducation("2012",
                "SL-110-SE6 - Fundamentals of the Java Programming Language, Java SE 6",
                "Explaining Java Technology,  Analyzing a Problem and Designing a Solution, Developing and testing a java technology program, declaring, initializing, and using variables, Creating  and using objects, using operators and decision constructs, using loop constructs, developing and using methods, implementing encapsulation and constructors, creating and using arrays, implementing inheritance.",
                "Academia de Java/Rumos");
        edOverall.addEducation("2012",
                "Curso Básico de Socorrismo",
                "Competências ao nível dos primeiros socorros.",
                "AMI");
        edOverall.addEducation("2011",
                "Curso de Programação em Java",
                "Introdução à programação em Java, Entrada e saída de dados, programação orientada a objectos, Applets para a web, Grafismo multimédia e movimento, Interactividade, Interface gráfico, Acesso a bases de dados. ",
                "Alta Lógica Instituto de Formação Profissional, Lda.");
        edOverall.addEducation("2010",
                "Acção de Formação – “Quadros interactivos Multimédia no Ensino/Aprendizagem das Artes e Expressões”",
                "Competências ao nível da interacção com os quadros interactivos, bem como, do software ActivInspire da Promethean.",
                "Centro de Formação de Escolas dos Concelho do Barreiro Moita");
        edOverall.addEducation("2009",
                "Acção de Formação – “A Dança nos Programas Nacionais de Educação Física: Danças Tradicionais Portuguesas – Nível Introdutório”",
                "Danças Tradicionais Portuguesas - Nível Introdutório",
                "Centro de Formação de Associações de Escolas da Zona Oriental do Concelho de Loures");
        edOverall.addEducation("2007",
                "Curso de Monitores de Desporto Aventura",
                "Arbitragem de jogos de paintball, bem como, todos os procedimentos necessários para pôr em prática este tipo de actividade. Técnica de manobras de cordas simples para a execução das actividades no parque como rappel, escalada, slide, pontes de cordas e simulação de salto com pára-quedas.",
                "Parque Aventura Sniper");

        edOverall.addEducation("2013 ", 
                "Licenciatura em Engenharia Informática (Frequência)", 
                "Introdução à Programação, Laboratórios de programação, Desenvolvimento Centrado em Objectos, "
                        + "Algoritmos e Estruturas de Dados, Sistemas de Informação e Bases de Dados, "
                        + "Princípios de Programação, Redes de Computadores, Introdução aos Sistemas Computacionais,"
                        + "Lógica de Primeira Ordem, Introdução Investigação Operacional, Física A, "
                        + "Introdução às Probabilidades e Estatística, Interfaces Pessoa-Máquina.", 
                "Faculdade de Ciências da Universidade de Lisboa");
        edOverall.addEducation("2006",
                "Pós-graduação – Envelhecimento: Actividade Física e Autonomia Funcional",
                "Programas de exercício – Treino da força, treino do equilíbrio, treino aquático, treino aeróbio. Avaliação da função neuromuscular, função cardio-respiratória, locomoção, comportamento postural, aptidão funcional, morfológica do idoso.\n"
                + "Concepção de programas de exercício.\n"
                + "Alterações da função neuromuscular; ostearticulares.",
                "Faculdade de Motricidade Humana da Universidade Técnica de Lisboa ");
        edOverall.addEducation("2000-2005",
                "Licenciatura em Ciências do Desporto e Educação Física",
                "Anatomia I, II, \n"
                + "Fisiologia geral I, geral II e do exercício, \n"
                + "Estudos Práticos – futebol, andebol, basquetebol, rugby, atletismo, ginástica aparelhos e de solo, natação I e II, canoagem, \n"
                + "Recreação I, II, III, \n"
                + "Métodos quantitativos I e II, \n"
                + "Controlo motor e aprendizagem, \n"
                + "Observação e análise pedagógica, \n"
                + "Ensino integrado, \n"
                + "Estágio pedagógico.",
                "Faculdade de Ciências do Desporto e Educação Física da Universidade de Coimbra");

    }

    /**
     * method to get the WorkExperiencie
     *
     * @return WorkExperience object
     */
    public WorkExperience getWorkExp() {
        fillWorkExp();
        return wExperience;
    }

    private void fillWorkExp() {
        wExperience = new WorkExperience();
        wExperience.addExperience("10/2012-07/2013",
                "Docente",
                "Leccionar a disciplina de Educação Física do 2º ao 4º ano de escolaridade (1ºCiclo).",
                "Escola N.º2 da Bobadela (Lisboa).");
        wExperience.addExperience("09/2010-02/2015",
                "Professor",
                "Lecionar aulas de natação",
                "Holmes Place - Dolce Vita Tejo (Amadora)");
        wExperience.addExperience("09/2010-08/2011",
                "Docente",
                "Leccionar a disciplina de Educação Física a 3 turmas do 3ºCiclo (9h por semana)",
                "Escola Básica Integrada Patrício Prazeres (Lisboa)");
        wExperience.addExperience("09/2009-08/2010",
                "Docente",
                "Leccionar a disciplina de Educação Física/ Área de Expressões a 5 turmas do Secundário - Cursos Profissionais /3.ºCiclo - Cursos de Educação e Formação; Treinador da equipa de Futsal Feminino no âmbito do Desporto Escolar (horário completo 22h + 2 horas extraordinárias).",
                "Escola Secundária da Moita (Moita).");
        wExperience.addExperience("10/2008-09/2009",
                "Docente",
                "Leccionar a disciplina de Educação Física/ Área Projecto a 4 turmas do 3ºCiclo (14h por semana)",
                "Escola EB2/3 Alto do Moinho (Catujal - Loures).");
        wExperience.addExperience("09/2008-10/2008",
                "Docente",
                "Leccionar a disciplina de Educação Física a 4 turmas do 1ºCiclo (12h por semana).",
                "Escola EB1 nº1 de Casal de Cambra.");
        wExperience.addExperience("09/2008-10/2008",
                "Docente",
                "Leccionar a disciplina de Educação Física a 4 turmas do 3ºCiclo ao Secundário (11h por semana).",
                "Colégio D. Filipa (Amadora)");
        wExperience.addExperience("07/2008-10/2008 (2 semanas)",
                "Coordenador de uma equipa de animação de praia",
                "Organização, implementação e arbitragem de torneios de futebol de praia, bitoque rugby e futebol 2x2.",
                "C.I Eventos, Leiriasport (praia do Pedrogão)");
        wExperience.addExperience("07/2008-07/2008 (1 semana)",
                "Animador/Monitor de Campos de Férias",
                "Monitor e animador de Campos de Férias com actividades de desporto aventura e de carácter recreativo.",
                "Sniper, Parque Aventura(Bucelas)");
        wExperience.addExperience("09/2007-06/2008",
                "Docente",
                "Leccionar a disciplina de Educação Física a 4 turmas do 3ºCiclo ao Secundário (10h por semana).",
                "Colégio D. Filipa (Amadora)");
        wExperience.addExperience("10/2007-06/2008",
                "Docente",
                "Leccionar a disciplina de Educação Física a 4 turmas do 1ºCiclo (8h por semana).",
                "Escola EB1 nº1 de Casal de Cambra");
        wExperience.addExperience("07/2007-07/2007 (2 semanas)",
                "Animador/Monitor de Campos de Férias",
                "Monitor e animador de Campos de Férias com actividades de desporto aventura e de carácter recreativo.",
                "Sniper, Parque Aventura(Bucelas)");
        wExperience.addExperience("05/2007-09/2013 (trabalho ocasional)",
                "Monitor de Desporto Aventura",
                "Monitorizar actividades como Pontes de Cordas, Rappel, Escalada, Slide, Simulação de Pára-quedas e Arbitrar Jogos de Paintball.",
                "Sniper, Parque Aventura (Bucelas)");
        wExperience.addExperience("10/2006-07/2007",
                "Docente",
                "Leccionar a disciplina de Educação Física a 5 turmas do 1ºCiclo (10h por semana).",
                "Escola EB1 nº1 de Casal de Cambra");
        wExperience.addExperience("09/2006-07/2007 ",
                "Docente",
                "Leccionar a disciplina de Educação Física a 5 turmas do 3ºCiclo ao Secundário (12h por semana).",
                "Colégio D. Filipa (Amadora)");
        wExperience.addExperience("09/2006-10/2006",
                "Docente",
                "Leccionar a disciplina de Educação Física a 4 turmas do 1ºCiclo (9h por semana).",
                "Escola D. Pedro V (Linda-a-Velha)");
        wExperience.addExperience("09/2005-07/2006",
                "Docente",
                "Leccionar a disciplina de Educação Física do 1º ao 4º ano de escolaridade (1ºCiclo).",
                "Centro Comunitário de Casal da Cambra – Solami (Sintra)");
        wExperience.addExperience("01/2006-03/2006",
                "Treinador Adjunto de Futebol 11", "Assistir o treinador principal na orientação e preparação da equipa de juvenis.",
                "Clube Desportivo dos Olivais e Moscavide (Lisboa)");
        wExperience.addExperience("09/2004-03/2005",
                "Docente Estagiário",
                "Leccionei a disciplina de Educação Física ao 9ºano de escolaridade.",
                "Escola Básica do 2º e 3º Ciclos de Anadia (Aveiro)");
        wExperience.addExperience("08/2003-08/2003 (1 semana)",
                "Monitor de Colónia de Férias / Actividades Desportivas",
                "Acompanhar e desenvolver actividades junto de um grupo de jovens que estava sobre a minha responsabilidade, durante o dia.",
                "Equinócio (Lisboa)");
        wExperience.addExperience("07/2003-07/2003 (2 semanas)",
                "Monitor de Colónia de Férias / Actividades Recreativas",
                "Acompanhar e desenvolver actividades junto de um grupo de jovens que estava sobre a minha responsabilidade, durante vários dias consecutivos.",
                "Junta de Freguesia de Famões (Odivelas)");
        wExperience.addExperience("07/2002-07/2002 (2 semanas)",
                "Monitor de Colónia de Férias / Actividades Recreativas",
                "Acompanhar e desenvolver actividades junto de um grupo de jovens que estava sobre a minha responsabilidade, durante vários dias consecutivos.",
                "Junta de Freguesia de Famões (Odivelas)");
    }
}
