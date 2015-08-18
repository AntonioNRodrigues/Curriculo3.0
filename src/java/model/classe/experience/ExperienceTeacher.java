/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.classe.experience;

/**
 *
 * @author Antonio Rodrigues
 * @date 2015/07/29
 */
public class ExperienceTeacher extends Experience {

    private String job;

    public ExperienceTeacher(String date, String jobActivite, String place) {
        super(date, jobActivite, place);
        this.job = "Docente";
    }

    @Override
    public String getJob() {
        return this.job;
    }

    @Override
    public void setJob(String job) {
        this.job = job;
    }
     

}
