/*
 * 
 */
package model.classe.experience;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
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
     * @param typeOfSort
     * @param typeOfOrder
     * @return list
     */
    public Collection<Experience> listaExpTeaching(String typeOfSort, String typeOfOrder) {

        List<Experience> lista = new ArrayList<>();
        for (Experience exp : catExperiencies.values()) {
            if (exp instanceof ExperienceTeacher) {
                lista.add(exp);
            }
        }

        if (typeOfOrder.equals("DESC")) {
            Collections.sort(lista, chooseComp(typeOfSort));
        } else {
            Collections.sort(lista, Collections.reverseOrder(chooseComp(typeOfSort)));
        }

        return lista;
    }

    /**
     * list of experiences which are of subtype ExperienceTeacher
     *
     * @param typeOfSort
     * @param typeOfOrder
     * @return list
     */
    public Collection<Experience> listaExpSport(String typeOfSort, String typeOfOrder) {

        List<Experience> lista = new ArrayList<>();
        for (Experience exp : catExperiencies.values()) {
            if (exp instanceof ExperienceSports) {
                lista.add(exp);
            }
        }
        if (typeOfOrder.equals("DESC")) {
            Collections.sort(lista, chooseComp(typeOfSort));
        } else {
            Collections.sort(lista, Collections.reverseOrder(chooseComp(typeOfSort)));
        }
        return lista;
    }

    public Collection<Experience> getOrderedList(String lista, String typeOfSort, String typeOfOrder) throws NoSuchMethodException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method m = this.getClass().getMethod("lista" + lista, String.class, String.class);
        List<Experience> l = (List<Experience>) m.invoke(this, typeOfSort, typeOfOrder);

        return l;
    }

    private Comparator<Experience> chooseComp(String typeOfSort) {

        switch (typeOfSort) {
            case "dateStart":
                return new Experience.compDateInicio();
            case "dateLeft":
                return new Experience.compDateFim();
            case "dateInterval":
                return new Experience.compDifBigExperience();
        }
        return null;
    }
}
