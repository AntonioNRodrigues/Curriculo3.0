/*
 * 
 */
package model.classe.experience;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Antonio Rodrigues
 * @date 2015/07/29
 */
public class WorkExperience {

    private Map<Integer, Experience> catExperiencies;

    public WorkExperience() {
        this.catExperiencies = new HashMap<>();
    }

    public void addExperience(String d, String j, String jAct, String place) {
        
        Experience exp = factoryExperiences(d, j, jAct, place);
        catExperiencies.put(exp.hashCode(), exp);
    }

    /**
     * factory of Experiences. Depending of the job its construed Experiences
     * opf subtype ExperiencesTeacher or ExperienceSports
     *
     * @param d date of Experience
     * @param j type of job of the Experience
     * @param jAct job Activity of the Experience
     * @param place place of the Experience
     * @return a new Experience
     */
    private Experience factoryExperiences(String d, String j, String jAct, String place) {
        if (j.startsWith("Docente")) {
            return new ExperienceTeacher(d, jAct, place);
        } else {
            return new ExperienceSports(d, j, jAct, place);
        }
    }

    /**
     * list of experiences which are of subtype ExperienceTeacher
     *
     * @return list
     */
    public List<Experience> listaExpDocencia() {

        ArrayList<Experience> lista = new ArrayList<>();
        for (Experience exp : catExperiencies.values()) {
            if (exp instanceof ExperienceTeacher) {
                lista.add(exp);
                System.out.println(exp.toString());
            }
        }
        return lista;
    }

    /**
     * list of experiences which are of subtype ExperienceTeacher
     *
     * @return list
     */

    public List<Experience> listaExpSports() {

        ArrayList<Experience> lista = new ArrayList<>();
        for (Experience exp : catExperiencies.values()) {
            if (exp instanceof ExperienceSports) {
                lista.add(exp);
                
            }
        }
        return lista;
    }
}
