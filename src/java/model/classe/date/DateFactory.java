/*
 */
package model.classe.date;

/**
 *
 * @author antonio
 */
public class DateFactory {

    public static Date factoryDates(String str) {
        String[] a = refactorSring(str);

        Date data = null;
        for (String a1 : a) {
            String trim = a1.trim();
        }
        System.out.println(a[0]);
        if (a.length == 1) {
            data = new DateAno(Integer.parseInt(a[0]));

        } else if (a.length == 2) {
            data = new DateAnoMes(Integer.parseInt(a[0]), Integer.parseInt(a[1]));
        } else {

            throw new UnsupportedOperationException(
                    "You are passing a date that is correspond to the requisites");
        }
        return data;
    }

    private static String[] refactorSring(String str) {
        String str2 = null;
        if (str.length() > 8) {
            str2 = str.substring(0, 7);
        } else {
            str2 = str;
        }
        return str2.split("/", 2);
    }
}
