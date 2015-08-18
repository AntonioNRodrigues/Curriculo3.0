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

    private List<Education> formSuperior;
    private List<Education> formacaoProg;
    private List<Education> formacaoDesp;

    public EducationOverall() {
        formSuperior = new ArrayList<>();
        formacaoDesp = new ArrayList<>();
        formacaoProg = new ArrayList<>();
    }
    /*método que recebe 4 argumentos e passa-os para a classe Education. 
     * Instancia esse classe criando uma objecto desse tipo e adiciona-o à 
     * Lista educ, que só recebe objectos desse tipo.  
     */
    public void addEducation(String d, String t, String pS, String nO) {
        defineListaInsercao(new Education(d, t, pS, nO));
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
