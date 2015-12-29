/*
 * Classe que pertende organizar as personal Skills e competencias 
 * -->CLASSE NAO UTILIZADA NESTE SITE<--
 */
package model.classe;

/**
 * @author Antonio Rodrigues
 */
public class PersonalSkillsCompetences {
    private String firstLanguage;
    private String otherLanguages;
    private String socialSkills;
    private String organisationlSkills;
    private String computerSkills;
    private String driverLicense;


    /**
     * 
     * @param firstLanguage
     * @param otherLanguages
     * @param socialSkills
     * @param organisationlSkills
     * @param computerSkills
     * @param driverLicense 
     */
    public PersonalSkillsCompetences(String firstLanguage, String otherLanguages, 
        String socialSkills, String organisationlSkills, String computerSkills, String driverLicense) {
        this.firstLanguage = firstLanguage;
        this.otherLanguages = otherLanguages;
        this.socialSkills = socialSkills;
        this.organisationlSkills = organisationlSkills;
        this.computerSkills = computerSkills;
        this.driverLicense = driverLicense;
    }
    /**
     * 
     * @return 
     */
    public String getComputerSkills() {
        return computerSkills;
    }
    /**
     * 
     * @param computerSkills 
     */
    public void setComputerSkills(String computerSkills) {
        this.computerSkills = computerSkills;
    }
    /**
     * 
     * @return 
     */
    public String getDriverLicense() {
        return driverLicense;
    }
    /**
     * 
     * @param driverLicense 
     */
    public void setDriverLicense(String driverLicense) {
        this.driverLicense = driverLicense;
    }
    /**
     * 
     * @return 
     */
    public String getFirstLanguage() {
        return firstLanguage;
    }
    /**
     * 
     * @param firstLanguage 
     */
    public void setFirstLanguage(String firstLanguage) {
        this.firstLanguage = firstLanguage;
    }
    /**
     * 
     * @return 
     */
    public String getOrganisationlSkills() {
        return organisationlSkills;
    }
    /**
     * 
     * @param organisationlSkills 
     */
    public void setOrganisationlSkills(String organisationlSkills) {
        this.organisationlSkills = organisationlSkills;
    }
    /**
     * 
     * @return 
     */
    public String getOtherLanguages() {
        return otherLanguages;
    }
    /**
     * 
     * @param otherLanguages 
     */
    public void setOtherLanguages(String otherLanguages) {
        this.otherLanguages = otherLanguages;
    }
    /**
     * 
     * @return 
     */
    public String getSocialSkills() {
        return socialSkills;
    }
    /**
     * 
     * @param socialSkills 
     */
    public void setSocialSkills(String socialSkills) {
        this.socialSkills = socialSkills;
    }
    /**
     * 
     * @return 
     */
    @Override
    public String toString() {
        return "PersonalSkillsCompetences{" + "firstLanguage=" + firstLanguage 
                + ", " + "otherLanguages=" + otherLanguages + ", socialSkills=" 
                + socialSkills + ", "+ "organisationlSkills=" 
                + organisationlSkills + ", computerSkills=" + computerSkills + 
                ", "+ "driverLicense=" + driverLicense + '}';
    }
    
    
}
