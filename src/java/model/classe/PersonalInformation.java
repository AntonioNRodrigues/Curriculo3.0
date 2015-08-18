/*
 * Classe que cria objectos do tipo PersonalInformation com as 
 * caracteristicas visiveis.
 */
package model.classe;

/**
 *
 * @author Antonio Rodrigues
 * @version: 1.0
 */
public class PersonalInformation {

    private String firstName;
    private String lastName;
    private String fullName;
    private String Mobilephone;
    private String email;
    private String nationality;
    private String birthDate;
    private String gender;
    private String endTwitter;
    private String endFacebook;
    private String endLinkedin;

    /**
     * construtor da classe com oito argumentos para inicializar o objecto do
     * tipo PersonalInformation.
     *
     * @param firstName - primeiro nome
     * @param lastName - ultimo nome
     * @param fullName - nome completo
     * @param Mobilephone - numero de telemovel
     * @param email - endereco de email
     * @param nationality - nacionalidade
     * @param birthDate - data de nascimento
     * @param gender - genero
     */
    public PersonalInformation(String firstName, String lastName,
            String fullName, String Mobilephone, String email,
            String nationality, String birthDate, String gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.fullName = fullName;
        this.Mobilephone = Mobilephone;
        this.email = email;
        this.nationality = nationality;
        this.birthDate = birthDate;
        this.gender = gender;
        this.endFacebook = "http://www.facebook.com/antonio.rodrigues.3150";
        this.endLinkedin = "http://www.linkedin.com/pub/ant%C3%B3nio-rodrigues/31/552/163";
        this.endTwitter = "https://twitter.com/#!/Antonio_N_R";
    }

    /**
     * construtor da classe sem argumentos que inicializa o argumento firstName.
     */
    public PersonalInformation() {
        setFirstName("António");
    }

    /**
     * getter do argumento mobilePhone
     * @return Mobilephone argumento
     */
    public String getMobilephone() {
        return Mobilephone;
    }

    /**
     * Setter do argumento Mobilephone
     * @param Mobilephone
     */
    public void setMobilephone(String Mobilephone) {
        this.Mobilephone = Mobilephone;
    }

    /**
     * getter do argumento BirthDate
     * @return BirthDate argumento
     */
    public String getBirthDate() {
        return birthDate;
    }

    /**
     * setter do birthDate argumento
     * @param birthDate
     */
    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    /**
     * getter do email argumento
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * setter do argumento email
     * @param email 
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * getter do firstName argumento
     * @return fistName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * setter do argumento firstName
     * @param firstName
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * getter do argumento fullName
     * @return fullName
     */
    public String getFullName() {
        return fullName;
    }

    /**
     * setter do fullName
     * @param fullName
     */
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    /**
     * getter do gender argument
     * @return gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * setter do argument gender
     * @param gender
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * getter of lastName argument
     * @return lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * setter of lasName
     * @param lastName
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * getter of nationality
     * @return nationality
     */
    public String getNationality() {
        return nationality;
    }

    /**
     * setter of nationality
     * @param nationality
     */
    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    /**
     *
     * @return
     */
    public String getEndFacebook() {
        return endFacebook;
    }

    /**
     *
     * @param endFacebook
     */
    public void setEndFacebook(String endFacebook) {
        this.endFacebook = endFacebook;
    }

    /**
     *
     * @return
     */
    public String getEndLinkedin() {
        return endLinkedin;
    }

    /**
     *
     * @param endLinkedin
     */
    public void setEndLinkedin(String endLinkedin) {
        this.endLinkedin = endLinkedin;
    }

    /**
     *
     * @return
     */
    public String getEndTwitter() {
        return endTwitter;
    }

    /**
     *
     * @param endTwitter
     */
    public void setEndTwitter(String endTwitter) {
        this.endTwitter = endTwitter;
    }

    /**
     * representation textual do object personalInfomartion
     * @return string representation of presonalInformation
     */
    @Override
    public String toString() {
        return "PersonalInformation { " + "firstName= " + firstName + ", lastName= "
                + lastName + ", fullName= " + fullName + ", Mobilephone= " + Mobilephone
                + ", email= " + email + ", nationality= " + nationality + ", birthDate= "
                + birthDate + ", gender= " + gender + ", endTwitter= " + endTwitter + ", "
                + "endFacebook= " + endFacebook + ", endLinkedin= " + endLinkedin + '}';
    }

}
