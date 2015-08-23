/*
 * classe que organiza os objectos do tipo Education e coloca-os num Map 
 * consoante a sua caracteristica
 */
package model.classe.education;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Antonio Rodrigues
 */
public class EducationOverall {

    private Map<Integer, Education> catEducation;

    public EducationOverall() {
        this.catEducation = new HashMap<>();
    }
    /* método que recebe 4 argumentos e passa-os para a classe Education. 
     * Instancia esse classe criando uma objecto desse tipo e adiciona-o à 
     * Lista educ, que só recebe objectos desse tipo.  
     */

    public void addEducation(String d, String t, String pS, String nO) {
        Education edu = factoryEducation(d, t, pS, nO);
        catEducation.put(edu.hashCode(), edu);
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
     * @param typeOfSort
     * @param typeOfOrder
     * @return
     */
    public Collection<Education> listaEducUniversity(String typeOfSort, String typeOfOrder) {
        List<Education> lista = new ArrayList<>();
        for (Education edu : catEducation.values()) {
            if (edu instanceof EductionUniversitary) {
                lista.add(edu);
            }
        }
        if (typeOfOrder.equals("DESC")) {
            Collections.sort(lista);
        } else {

            Collections.sort(lista, Collections.reverseOrder());
        }

        return lista;
    }

    /**
     *
     * @param typeOfSort
     * @param typeOfOrder
     * @return
     */
    public Collection<Education> listaFormCode(String typeOfSort, String typeOfOrder) {
        List<Education> lista = new ArrayList<>();
        for (Education edu : catEducation.values()) {
            if (edu instanceof CodeProfessionalTraining) {
                lista.add(edu);
            }
        }
        if (typeOfOrder.equals("DESC")) {
            Collections.sort(lista);
        } else {

            Collections.sort(lista, Collections.reverseOrder());
        }

        return lista;
    }

    /**
     *
     * @param typeOfSort
     * @param typeOfOrder
     * @return
     */
    public Collection<Education> listaFormSport(String typeOfSort, String typeOfOrder) {
        List<Education> lista = new ArrayList<>();
        for (Education edu : catEducation.values()) {
            if (edu instanceof SportProfessionalTraining) {
                lista.add(edu);
            }
        }
        if (typeOfOrder.equals("DESC")) {
            Collections.sort(lista);
        } else {

            Collections.sort(lista, Collections.reverseOrder());
        }

        return lista;
    }
    /**
     * 
     * @param lista
     * @param typeOfSort
     * @param typeOfOrder
     * @return
     * @throws NoSuchMethodException
     * @throws IllegalAccessException
     * @throws IllegalArgumentException
     * @throws InvocationTargetException 
     */
    public Collection<Education> getOrderedList(String lista, String typeOfSort, String typeOfOrder) throws NoSuchMethodException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method m = this.getClass().getMethod("lista" + lista, String.class, String.class);
        List<Education> l = (List<Education>) m.invoke(this, typeOfSort, typeOfOrder);

        return l;
    }

}
