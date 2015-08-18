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
class DateAnoMes extends Date {

    public DateAnoMes(int month, int year) {
        super(month, year);
    }

    @Override
    public int compareTo(Date date) {
        int resulCompare = 0;
        if (!(date instanceof DateAnoMes)) {
            throw new UnsupportedOperationException(
                    "You are comparing a DateAnoMes instance with someting that "
                    + "is not ");
        } else {
            Integer ano = this.getYear();
            Integer anoDate = date.getYear();
            resulCompare = ano.compareTo(anoDate);
            if (resulCompare == 0) {
                Integer mes = this.getMonth();
                Integer mesDate = date.getMonth();
                resulCompare = mes.compareTo(mesDate);
            }
        }
        return resulCompare;
    }
    
    
    @Override
    public String toString() {
        return this.getMonth()+"/"+ this.getYear();
    }

}
