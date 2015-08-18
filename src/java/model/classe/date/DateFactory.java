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
public class DateFactory {

    public Dateable<Date> factoryDates(int... a) {
        Dateable<Date> data = null;
        if (a.length == 1) {
            data = new DateAno(a[0]);
        }
        if (a.length == 2) {
            data = new DateAnoMes(a[0], a[1]);
        } else {
            throw new UnsupportedOperationException(
                "You are passing a date that is correspond to the requisites");
        }
        return data;
    }
}
