/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.classe.education;

/**
 *
 * @author antonio
 */
public class CodeProfessionalTraining extends Education{

    public CodeProfessionalTraining(String d, String title, String principalSubjects, String nameOrganisation) {
        super(d, title, principalSubjects, nameOrganisation);
    }

    @Override
    public int compare(Education o1, Education o2) {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
}
