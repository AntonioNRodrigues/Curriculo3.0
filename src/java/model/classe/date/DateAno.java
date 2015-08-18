/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.classe.date;

/**
 *
 * @author antonio
 */
public class DateAno extends Date {

    public DateAno(int ano) {
        super(ano);
    }

    @Override
    public int compareTo(Date o) {
        int resulCompare = 0;
        if (!(o instanceof DateAno)) {
            throw new UnsupportedOperationException(
                    "You are comparing a DateAno instance with someting that "
                    + "is not ");
        } else {
            Integer i = this.getYear();
            Integer ii = o.getYear();
            resulCompare = i.compareTo(ii);
        }
        return resulCompare;
    }

}
