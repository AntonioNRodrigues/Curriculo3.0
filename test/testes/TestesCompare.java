/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testes;

import java.util.List;
import model.classe.FillCurriculo;
import model.classe.education.Education;
import model.classe.experiencesOLD.Experience;

/**
 *
 * @author antonio
 */
public class TestesCompare {

    public static void main(String[] args) {

        FillCurriculo fc = new FillCurriculo();
        List<Education> edu = fc.getEd().getFormSuperior();
     //   List<Experience> exp = fc.getWorkExp().getExperMonitor();
       /*  edu.stream().forEach((edu1) -> {
            System.out.println(edu1.getDate());
        });
  

        edu.stream().forEach((edu1) -> {
            System.out.println(edu1.getDate());
        });

    //   exp.sort(new Experience().comparatorPerDateOderByEndDate);
        
        exp.stream().forEach((exp1)->{
            System.out.println(exp1.getJob());
        });
        System.out.println("------------------------");

        //exp.sort(new Experience().comparatorPerDateOderByStartDate);
        
        exp.stream().forEach((exp1)->{
            System.out.println(exp1.getJob());
        });
*/
      
    }

}
