/*
 * 
 */
package model.classe.experience;

/**
 *
 * @author Antonio Rodrigues
 * @date 2015/07/29
 *
 */
public class ExperienceSports extends Experience {

    private String job;

    public ExperienceSports(String date, String job, String jobActivite, String place) {
        super(date, jobActivite, place);
        this.job = job;
    }

    @Override
    public String getJob() {
        return job;
    }

    @Override
    public void setJob(String job) {
        this.job = job;
    }

  


}
