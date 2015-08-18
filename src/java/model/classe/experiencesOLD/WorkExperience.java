/*
 * Classe que organiza os objectos do tipo Experience e coloca-os numa Lista
 */
package model.classe.experiencesOLD;

import java.util.ArrayList;
import java.util.List;

/*
 * @author Antonio Rodrigues
 */
public class WorkExperience {

    /**
     * lista que contem Objectos do tipo Experience mas que são referentes ah
     * experiencia em educação fisica.
     */
    private List<Experience> experEdFisica;

    /**
     * lista que contem Objectos do tipo Experience mas que são referentes ah
     * experiencia em natacao.
     */
    private List<Experience> experNatacao;

    /**
     * lista que contem Objectos do tipo Experience mas que são referentes ah
     * experiencia em monitor e outras.
     */
    private List<Experience> experMonitor;
  
    /**
     *
     */
    public WorkExperience() {
        experEdFisica = new ArrayList<>();
        experMonitor = new ArrayList<>();
        experNatacao = new ArrayList<>();
    }

    /*
     * metodo que recebe 4 argumentos e passa-os para a classe Experience. 
     * Instancia esse classe criando uma objecto desse tipo e adiciona-o à 
     * Lista exp, que só recebe objectos desse tipo.  
     */
    /**
     *
     * @param date
     * @param job
     * @param jobActivite
     * @param place
     */
    public void addExperience(String date, String job, String jobActivite, String place) {
        defineListaInsercao(new Experience(date, job, jobActivite, place));

    }

    /**
     * metodo auxiliar de classe que adiciona a experiencia a determinada lista
     * consoante a sua job
     *
     * @param exp experiencie que irah ser adicionada a uma lista
     */
    private void defineListaInsercao(Experience exp) {

        if (exp.getJob().equalsIgnoreCase("Professor")) {
            experNatacao.add(exp);
        }

        if (exp.getJob().contains("Docente")) {
            experEdFisica.add(exp);

        } else {
            experMonitor.add(exp);
        }
    }

    /**
     *
     * @return
     */
    public List getExperEdFisica() {
        return experEdFisica;
    }

    /**
     *
     * @param experEdFisica
     */
    public void setExperEdFisica(List experEdFisica) {
        this.experEdFisica = experEdFisica;
    }

    /**
     *
     * @return
     */
    public List getExperNatacao() {
        return experNatacao;
    }

    /**
     *
     * @param experNatacao
     */
    public void setExperNatacao(List experNatacao) {
        this.experNatacao = experNatacao;
    }

    /**
     *
     * @return
     */
    public List getExperMonitor() {
        return experMonitor;
    }

    /**
     *
     * @param experMonitor
     */
    public void setExperMonitor(List experMonitor) {
        this.experMonitor = experMonitor;
    }

}
