/*
 * classe que organiza os objectos do tipo Education e coloca-os numa Lista 
 * consoante a sua caracteristica
 */
package model.classe.education;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Antonio Rodrigues
 */
public class EducationOverall {

    private Education educ;
    private List<Education> formSuperior;
    private List<Education> formacaoProg;
    private List<Education> formacaoDesp;

    public EducationOverall() {
        formSuperior = new ArrayList<Education>();
        formacaoDesp = new ArrayList<Education>();
        formacaoProg = new ArrayList<Education>();
    }

    public EducationOverall(Education education) {
        this.educ = education;
        formSuperior = new ArrayList<Education>();
        formacaoDesp = new ArrayList<Education>();
        formacaoProg = new ArrayList<Education>();
    }

    /*método que recebe 4 argumentos e passa-os para a classe Education. 
     * Instancia esse classe criando uma objecto desse tipo e adiciona-o à 
     * Lista educ, que só recebe objectos desse tipo.  
     */
    public void addEducation(String d, String t, String pS, String nO) {
        educ = new Education(d, t, pS, nO);
        defineListaInsercao(educ);
    }
    /**
     * 
     * @return 
     */
    public Education getEduc() {
        return educ;
    }
    /**
     * 
     * @param educ 
     */
    public void setEduc(Education educ) {
        this.educ = educ;
    }
    /**
     * 
     * @return 
     */
    @Override
    public String toString() {
        return "EducationOverall{" + "educ=" + educ + '}';
    }
    /**
     * 
     * @param educ 
     */
    private void defineListaInsercao(Education educ) {

        if (educ.getTitle().startsWith("Licenciatura")
                || educ.getTitle().startsWith("Pós-graduação")) {
            formSuperior.add(educ);

        } else if (educ.getNameOrganisation().startsWith("Academia de Java/Rumos")
                || educ.getNameOrganisation().startsWith("Alta")
                || educ.getNameOrganisation().startsWith("Oracle")) {
            formacaoProg.add(educ);

        } else {
            formacaoDesp.add(educ);

        }

    }
    /**
     * 
     * @return 
     */
    public List<Education> getFormSuperior() {
        return formSuperior;
    }
    /**
     * 
     * @param formSuperior 
     */
    public void setFormSuperior(List<Education> formSuperior) {
        this.formSuperior = formSuperior;
    }
    /**
     * 
     * @return 
     */
    public List<Education> getFormacaoProg() {
        return formacaoProg;
    }
    /**
     * 
     * @param formacaoProg 
     */
    public void setFormacaoProg(List<Education> formacaoProg) {
        this.formacaoProg = formacaoProg;
    }
    /**
     * 
     * @return 
     */
    public List<Education> getFormacaoDesp() {
        return formacaoDesp;
    }
    /**
     * 
     * @param formacaoDesp 
     */
    public void setFormacaoDesp(List<Education> formacaoDesp) {
        this.formacaoDesp = formacaoDesp;
    }

}
