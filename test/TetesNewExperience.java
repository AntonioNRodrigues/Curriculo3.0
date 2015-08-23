

import model.classe.experience.WorkExperience;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author antonio
 */
public class TetesNewExperience {

    public static void main(String[] a) {
        WorkExperience wExperience = new WorkExperience();
        wExperience.addExperience("De Outubro 2012 a Junho de 2013",
                "Docente",
                "Leccionar a disciplina de Educação Física do 2º ao 4º ano de escolaridade (1ºCiclo).",
                "Escola N.º2 da Bobadela (Lisboa).");
    
        System.out.println("Lista Experiences teatcher");
        System.out.println(wExperience.listaExpTeaching("",""));
        
        System.out.println("Lista Experiences Sports");

        System.out.println(wExperience.listaExpSport("",""));
        
      
    }

}
