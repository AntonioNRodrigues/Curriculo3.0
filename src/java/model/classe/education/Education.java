/*
 * Classe que cria objectos do tipo Education com 4 atributos. 
 */
package model.classe.education;

import java.util.Comparator;
import java.util.Objects;
import model.classe.date.Date;
import model.classe.date.DateFactory;

/**
 * @author Antonio Rodrigues
 * @version 2.0
 * @date 2015/02/06
 */
public abstract class Education implements Comparable<Education>, Comparator<Education> {

    private Date dateStart;
    private Date dateEnd;
    private String title;
    private String principalSubjects;
    private String nameOrganisation;

    /**
     * construtor de classe que cria um novo objecto do tipo Education e
     * incializa os atributos com os valores provinientes dos parametros
     *
     * @param d dateStart da Education
     * @param title title da Eudcation
     * @param principalSubjects da Education
     * @param nameOrganisation local onde realizado a Education
     */
    public Education(String d, String title, String principalSubjects, String nameOrganisation) {
        String[] a = d.split("-", 2);
        this.dateStart = DateFactory.factoryDates(a[0]);
        this.dateEnd = DateFactory.factoryDates(a[0]);
        this.title = title;
        this.principalSubjects = principalSubjects;
        this.nameOrganisation = nameOrganisation;
    }

    public Date getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(Date dateEnd) {
        this.dateEnd = dateEnd;
    }

    /**
     * Getter da dateStart
     *
     * @return dateStart da education
     */
    public Date getDateStart() {
        return dateStart;
    }

    /**
     * Setter da dateStart
     *
     * @param dateStart dateStart da education
     */
    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
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
     *
     * @param title da education
     */
    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 89 * hash + Objects.hashCode(this.dateStart);
        hash = 89 * hash + Objects.hashCode(this.dateEnd);
        hash = 89 * hash + Objects.hashCode(this.title);
        hash = 89 * hash + Objects.hashCode(this.principalSubjects);
        hash = 89 * hash + Objects.hashCode(this.nameOrganisation);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Education other = (Education) obj;
        if (!Objects.equals(this.dateStart, other.dateStart)) {
            return false;
        }
        if (!Objects.equals(this.dateEnd, other.dateEnd)) {
            return false;
        }
        if (!Objects.equals(this.title, other.title)) {
            return false;
        }
        if (!Objects.equals(this.principalSubjects, other.principalSubjects)) {
            return false;
        }
        if (!Objects.equals(this.nameOrganisation, other.nameOrganisation)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Education{" + "dateStart=" + dateStart + ", "
                + "dateEnd=" + dateEnd + ", title=" + title + ", "
                + "principalSubjects=" + principalSubjects + ", "
                + "nameOrganisation=" + nameOrganisation + '}';
    }

    @Override
    public int compareTo(Education education) {
        Integer aux = this.dateStart.getYear();
        Integer edu = education.getDateStart().getYear();
        return aux.compareTo(edu);

    }
}
