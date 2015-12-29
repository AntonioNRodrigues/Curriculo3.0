/*
 * Classe que cria objectos do tipo Education com 4 atributos. 
 */
package model.classe.education;

/**
 * @author Antonio Rodrigues
 */
public class Education {

    private String date;
    private String title;
    private String principalSubjects;
    private String nameOrganisation;

    /**
     * construtor de classe que inicia oa atributos a null
     */
    public Education() {
        this.date = "";
        this.title = "";
        this.nameOrganisation = "";
        this.principalSubjects = "";
    }

    /**
     * construtor de classe que cria um novo objecto do tipo Education e
     * incializa os atributos com os valores provinientes dos parametros
     *
     * @param date date da Education
     * @param title title da Eudcation
     * @param principalSubjects da Education
     * @param nameOrganisation local onde realizado a Education
     */
    public Education(String date, String title, String principalSubjects, String nameOrganisation) {
        this.date = date;
        this.title = title;
        this.principalSubjects = principalSubjects;
        this.nameOrganisation = nameOrganisation;
    }

    /**
     * Getter da date
     *
     * @return date da education
     */
    public String getDate() {
        return date;
    }

    /**
     * Setter da date
     *
     * @param date date da education
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * Getter da NameOrganisation
     *
     * @return NameOrganisation da education
     */
    public String getNameOrganisation() {
        return nameOrganisation;
    }

    /**
     * Setter da NameOrganisation
     *
     * @param nameOrganisation da education
     */
    public void setNameOrganisation(String nameOrganisation) {
        this.nameOrganisation = nameOrganisation;
    }

    /**
     * Getter das PrincipalSubjects
     *
     * @return PrincipalSubjects
     */
    public String getPrincipalSubjects() {
        return principalSubjects;
    }

    /**
     * Setter da PrincipalSubjects
     *
     * @param principalSubjects da education
     */
    public void setPrincipalSubjects(String principalSubjects) {
        this.principalSubjects = principalSubjects;
    }

    /**
     * Getter do title da education
     *
     * @return title da education
     */
    public String getTitle() {
        return title;
    }

    /**
     * Setter do Title
     * @param title da education
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 
     * @return
     */
    @Override
    public String toString() {
        return "Date: " + date + ", Title: " + title + ", "
                + "PrincipalSubjects: " + principalSubjects + ", "
                + "NameOrganisation: " + nameOrganisation;
    }
}
