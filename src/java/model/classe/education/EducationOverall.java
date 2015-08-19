/*
 * classe que organiza os objectos do tipo Education e coloca-os num Map 
 * consoante a sua caracteristica
 */
package model.classe.education;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Antonio Rodrigues
 */
public class EducationOverall {

    private Map<Integer, Education> catEducaion;

    public EducationOverall() {
        this.catEducaion = new HashMap<>();
    }
    /* método que recebe 4 argumentos e passa-os para a classe Education. 
     * Instancia esse classe criando uma objecto desse tipo e adiciona-o à 
     * Lista educ, que só recebe objectos desse tipo.  
     */

    public void addEducation(String d, String t, String pS, String nO) {
        Education edu = factoryEducation(d, t, pS, nO);
        catEducaion.put(edu.hashCode(), edu);
    }

    /**
     *
     * @param d
     * @param t
     * @param pS
     * @param nO
     * @return
     */
    private Education factoryEducation(String d, String t, String pS, String nO) {

        if (t.startsWith("Licenciatura") || t.startsWith("Pós-graduação")) {
            return new EductionUniversitary(d, t, pS, nO);
        } else if (nO.startsWith("Academia") || nO.startsWith("Alta") || t.startsWith("Oracle")) {
            return new CodeProfessionalTraining(d, t, pS, nO);
        } else {
            return new SportProfessionalTraining(d, t, pS, nO);
        }

    }
    /**
     * 
     * @return 
     */
    public Collection<Education> listaEducUniversitary() {
        Collection<Education> col = new ArrayList<>();
        for (Education edu : catEducaion.values()) {
            if (edu instanceof EductionUniversitary) {
                col.add(edu);
            }
        }
        return col;
    }
    /**
     * 
     * @return 
     */
    public Collection<Education> listaFormCode() {
        Collection<Education> col = new ArrayList<>();
        for (Education edu : catEducaion.values()) {
            if (edu instanceof CodeProfessionalTraining) {
                col.add(edu);
            }
        }
        return col;
    }
       /**
        * 
        * @return 
        */
    public Collection<Education> listaSportForm(){
        Collection <Education> col = new ArrayList<>();
        for(Education edu : catEducaion.values()){
            if(edu instanceof EductionUniversitary){
                col.add(edu);
            }
        }
        return  col;
    }

}
