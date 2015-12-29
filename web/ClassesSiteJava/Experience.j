/*
 * Classe que cria objectos do tipo Experience com 4 atributos.
 */
package model.classe.experiences;

/**
 * @author Antonio Rodrigues
 * @version 1.0
 */
public class Experience {

    private String date;
    private String job;
    private String jobActivite;
    private String place;

    /**
     * construtor da classe que inicializa um objecto do tipo Experience
     * inicializando os atributos com os valores passados nos atributos
     *
     * @param date date da Experience
     * @param job job reletivo ah experiencie
     * @param jobActivite tipo de actividade realiazada
     * @param place local da experience
     */
    public Experience(String date, String job, String jobActivite, String place) {
        this.date = date;
        this.job = job;
        this.jobActivite = jobActivite;
        this.place = place;
    }

    /**
     * construtor default com os valores inicializadas a "".
     */
    public Experience() {
        this.date = "";
        this.job = "";
        this.jobActivite = "";
        this.place = "";
    }

    /**
     * Getter da date em questao
     *
     * @return date da Experience
     */
    public String getDate() {
        return date;
    }

    /**
     * setter da date da experience
     *
     * @param date value que irah inicializar a date
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * Getter do job
     *
     * @return job realizado
     */
    public String getJob() {
        return job;
    }

    /**
     * Setter do job
     *
     * @param job value que irah inicializar o job
     */
    public void setJob(String job) {
        this.job = job;
    }

    /**
     * Getter do jobActivite
     *
     * @return jobActivite realizada
     */
    public String getJobActivite() {
        return jobActivite;
    }

    /**
     * Setter da jobActivite
     *
     * @param jobActivite value que irah inicializar o jobActivite
     */
    public void setJobActivite(String jobActivite) {
        this.jobActivite = jobActivite;
    }

    /**
     * Getter da place onde foi realizada a experience
     *
     * @return place da experience
     */
    public String getPlace() {
        return place;
    }

    /**
     * Setter do place onde foi realizada a experience
     *
     * @param place value que irah inicializar o place
     */
    public void setPlace(String place) {
        this.place = place;
    }

    /**
     * Representação textual da experience
     *
     * @return representação textual da experience
     */
    @Override
    public String toString() {
        return "Date: " + date + ", " + "\n"
                + "Job: " + job + ", " + "\n"
                + "Job Activite: " + jobActivite + ", " + "\n"
                + "Place: " + place;
    }

}
