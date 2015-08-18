/*
 * Classe composta com os objectos do tipo dos argumentos: PersonalInformation, 
 * WorkExperience, EducationOverall e PersonalSkillsCompetences. Pretende 
 * receber os objectos e inicializa o objecto do Curriculo com a informação 
 * jah completa.
 */
package model.classe;
import model.classe.education.EducationOverall;
import model.classe.experience.WorkExperience;
/**
 * @author Antonio Rodrigues
 * @version 1.5
 */
public class Curriculo {
    private PersonalInformation persInf;
    private WorkExperience workExp;
    private EducationOverall educ;
    private PersonalSkillsCompetences pesSkillComp;
    //private AddicionalInformation aInf;
    
    
    /**
     * construtor da classe com dois argumentos para inicializar o objecto do 
     * tipo Curriculo. 
     * @param persInf inicilização do argumento 
     * @param workExp inicilização do argumento 
     */
    public Curriculo(PersonalInformation persInf, WorkExperience workExp) {
        this.workExp = workExp;
        this.persInf = persInf;
    }
    
    /**
     * construtor da classe com tres argumentos para inicializar o objecto do 
     * tipo Curriculo. 
     * @param persInf inicilização do argumento 
     * @param workExp inicilização do argumento 
     * @param educ inicilização do argumento 
     */
    public Curriculo(PersonalInformation persInf, WorkExperience workExp, 
            EducationOverall educ) {
        this.persInf = persInf;
        this.workExp = workExp;
        this.educ = educ;
    }
    
/**
     * construtor da classe com quatro argumentos para inicializar o objecto do 
     * tipo Curriculo. 
     * @param persInf inicilização do argumento 
     * @param workExp inicilização do argumento 
     * @param educ inicilização do argumento 
     * @param pesSkillComp inicilização do argumento 
     */
    public Curriculo(PersonalInformation persInf, WorkExperience workExp, 
            EducationOverall educ, PersonalSkillsCompetences pesSkillComp) {
        this.persInf = persInf;
        this.workExp = workExp;
        this.educ = educ;
        this.pesSkillComp = pesSkillComp;
    }
 
    /**
     * Gets o objecto do tipo PersonalInformation
     * @return persInf do tipo PersonalInformation 
     */
    public PersonalInformation getPersInf() {
        return persInf;
    }
    /**
     * Sets o argumento persInf com o parametro do metodo
     * @param persInf - objecto do tipo PersonalInfomation
     */
    public void setPersInf(PersonalInformation persInf) {
        this.persInf = persInf;
    }
    /**
     * Gets o objecto do tipo WorkExperience 
     * @return workExp do tipo WorkExperience 
     */     
    public WorkExperience getWorkExp() {
        return workExp;
    }
    /**
     * Sets o argumento workExp com o parametro do metodo
     * @param workExp - objecto do tipo WorkExperience
     */
    public void setWorkExp(WorkExperience workExp) {
        this.workExp = workExp;
    }
    /**
     * Gets o objecto do tipo EducationOverall
     * @return educ do tipo EducationOverall
     */
    public EducationOverall getEduc() {
        return educ;
    }
    /**
     * Sets o argumento educ com o parametro do metodo
     * @param educ - objecto do tipo EducationOverall
     */
    public void setEduc(EducationOverall educ) {
        this.educ = educ;
    }
    /**
     * Gets o objecto do tipo PersonalSkillsCompetences
     * @return pesSkillComp do tipo PersonalSkillsCompetences
     */
    public PersonalSkillsCompetences getPesSkillComp() {
        return pesSkillComp;
    }
    /**
     * Sets o argumento pesSkillComp com o parametro do metodo
     * @param pesSkillComp - objecto do tipo PersonalSkillsCompetences
     */
    public void setPesSkillComp(PersonalSkillsCompetences pesSkillComp) {
        this.pesSkillComp = pesSkillComp;
    }
    
    
}
