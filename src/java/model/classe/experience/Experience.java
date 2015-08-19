/*
 */
package model.classe.experience;

import java.util.Comparator;
import model.classe.date.Date;
import java.util.Objects;
import model.classe.date.DateFactory;

/**
 *
 * @author Antonio Rodrigues
 * @date 2015/07/29
 */
public abstract class Experience implements Comparable<Experience> {

    private Date dateStart;
    private Date dateLeft;
    private String jobActivite;
    private String place;

    /**
     * construtor da classe que inicializa um objecto do tipo Experience
     * inicializando os atributos com os valores passados nos atributos
     *
     * @param d dateBuilder da Experience
     * @param jobActivite tipo de actividade realiazada
     * @param place local da experience
     */
    public Experience(String d, String jobActivite, String place) {
        String[] a = d.split("-", 2);
        this.dateStart = DateFactory.factoryDates(a[0].trim());
        this.dateLeft = DateFactory.factoryDates(a[1].trim());
        this.jobActivite = jobActivite;
        this.place = place;
    }

    /**
     * Getter da dateBuilder em questao
     *
     * @return dateBuilder da Experience
     */
    public Date getDateStart() {
        return dateStart;
    }

    /**
     * setter da dateBuilder da experience
     *
     * @param dateStart value que irah inicializar a dateBuilder
     */
    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    /**
     * Getter do job
     *
     * @return job realizado
     */
    public abstract String getJob();

    /**
     * Setter do job
     *
     * @param job value que irah inicializar o job
     */
    public abstract void setJob(String job);

    /**
     * Getter do jobActivite
     *
     * @return jobActivite realizada
     */
    public String getJobActivite() {
        return jobActivite;
    }

    /**
     * Setter da jobActivite
     *
     * @param jobActivite value que irah inicializar o jobActivite
     */
    public void setJobActivite(String jobActivite) {
        this.jobActivite = jobActivite;
    }

    /**
     * Getter da place onde foi realizada a experience
     *
     * @return place da experience
     */
    public String getPlace() {
        return place;
    }

    /**
     * Setter do place onde foi realizada a experience
     *
     * @param place value que irah inicializar o place
     */
    public void setPlace(String place) {
        this.place = place;
    }

    public Date getDateLeft() {
        return dateLeft;
    }

    public void setDateLeft(Date dateLeft) {
        this.dateLeft = dateLeft;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 67 * hash + Objects.hashCode(this.dateStart);
        hash = 67 * hash + Objects.hashCode(this.dateLeft);
        hash = 67 * hash + Objects.hashCode(this.jobActivite);
        hash = 67 * hash + Objects.hashCode(this.place);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Experience other = (Experience) obj;
        if (!Objects.equals(this.dateStart, other.dateStart)) {
            return false;
        }
        if (!Objects.equals(this.dateLeft, other.dateLeft)) {
            return false;
        }
        if (!Objects.equals(this.jobActivite, other.jobActivite)) {
            return false;
        }
        if (!Objects.equals(this.place, other.place)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Experience{" + "dateStart=" + dateStart + ", dateLeft="
                + dateLeft + ", jobActivite=" + jobActivite + ","
                + "place=" + place + '}';
    }

    /**
     *
     */
    static class compDateInicio implements Comparator<Experience> {

        @Override
        public int compare(Experience exp1, Experience exp2) {
            return exp1.getDateStart().compareTo(exp2.getDateStart());
        }

    }

    /**
     *
     */
    static class compDateFim implements Comparator<Experience> {

        @Override
        public int compare(Experience exp1, Experience exp2) {
            return exp1.getDateLeft().compareTo(exp2.getDateLeft());
        }

    }

    /**
     * comparator AINDA POR FAZER
     */
    static class compDifBigExperience implements Comparator<Experience> {

        @Override
        public int compare(Experience exp1, Experience exp2) {

            return 0;
        }

    }

    private int calcTempo() {
        int tempo = 0;
        tempo = this.dateLeft.getYear() - this.dateStart.getYear() * 365;
        //FALTA CALCULAR OS MESES----------------------
        return tempo;
    }

    /**
     *
     * @param exp
     * @return
     */
    @Override
    public int compareTo(Experience exp) {
        return this.dateStart.compareTo(exp.dateStart);
    }

    /**
     * Comparator que compara duas experiencias consoante a diferenca de tempo
     * entre o inicio do trabalho até ao fim. Qunto maior e diferença maoir eh
     * essa Experience /* public Comparator<Experience>
     * ComparatorPerDateOrderByDifTime = (exp1, exp2) -> {
     *
     * throw new UnsupportedOperationException("TODO"); };
     *
     * /**
     * Comparator que compara duas experiencias consoante as datas de fim da
     * experience. Quanto maior é a data de fim maior é experience.
     *
     * public Comparator<Experience> comparatorPerDateOderByEndDate = (exp1,
     * exp2) -> {
     *
     * int compareValue = 0; List<String> listExp1 = exp1.changeDate(p ->
     * Arrays.asList(p.getDate())); List<String> listExp2 = exp2.changeDate(p ->
     * Arrays.asList(p.getDate()));
     *
     * int valueMesExp1 = translateMonth(listExp1.get(2)).getValue(); int
     * valueMesExp2 = translateMonth(listExp2.get(2)).getValue(); int
     * valueAnoExp1 = Integer.parseInt(listExp1.get(3)); int valueAnoExp2 =
     * Integer.parseInt(listExp2.get(3));
     *
     * if (valueAnoExp1 > valueAnoExp2) { compareValue = 1; } else if
     * (valueAnoExp1 < valueAnoExp2) {
     * compareValue = -1;
     * }
     * else if (valueAnoExp1 == valueAnoExp2) {
     * if (valueMesExp1 > valueMesExp2) { compareValue = 1; } else if
     * (valueMesExp1 < valueMesExp2) { compareValue = -1; } else if
     * (valueMesExp1 == valueMesExp2) { compareValue = 0; } } return
     * compareValue; };
     *
     */
    /**
     * Comparator que compara duas experiencias consoante as datas de fim da
     * experiencie. Quanto maior é a data de fim maior é experiencie.
     *
     * public Comparator<Experience> comparatorPerDateOderByStartDate = (exp1,
     * exp2) -> {
     *
     * int compareValue = 0; List<String> listExp1 = exp1.changeDate(p ->
     * Arrays.asList(p.getDate())); List<String> listExp2 = exp2.changeDate(p ->
     * Arrays.asList(p.getDate()));
     *
     * int valueMesExp1 = translateMonth(listExp1.get(0)).getValue(); int
     * valueMesExp2 = translateMonth(listExp2.get(0)).getValue(); int
     * valueAnoExp1 = Integer.parseInt(listExp1.get(1)); int valueAnoExp2 =
     * Integer.parseInt(listExp2.get(1));
     *
     * if (valueAnoExp1 < valueAnoExp2) {
     * compareValue = 1;
     * }
     * else if (valueAnoExp1 > valueAnoExp2) { compareValue = -1; } else if
     * (valueAnoExp1 == valueAnoExp2) { if (valueMesExp1 < valueMesExp2) {
     * compareValue = 1;
     * }
     * else if (valueMesExp1 > valueMesExp2) { compareValue = -1; } else if
     * (valueMesExp1 == valueMesExp2) { compareValue = 0; } } return
     * compareValue; };
     *
     */
    /**
     * metodo que permite modificar o atributo de classe date para possa ser
     * comparado. Retira.se a data do ano e o mes
     *
     * @param f funcao passa a parametro date
     * @return a funcao aplicada ao parametro
     *
     * public List<String> changeDate(Function<Experience, List<String>> f) {
     * List<String> list = Arrays.asList(this.getDate().split(" ")) .stream()
     * .filter(p -> Character.isDigit(p.charAt(0)) || isMonth(p))
     * .collect(Collectors.toList()); return list; } / /** metodo que avalia se
     * a palavra corresponde a um mes ou nao
     *
     * @param m palavra a ser avaliada
     * @return false se nao eh mes e true se eh mes
     */
    /*
     public boolean isMonth(String m) {
     return (translateMonth(m) != null);
     }
     */
    /**
     * metodo que permite traduzir de portugues para ingles os nomes do meses
     * Assim com este traducao uiliza-se o Enum Month do java se 8
     *
     * @param m palavra a ser avaliada
     * @return o mes correspondente em english
     */
    /*
     private Month translateMonth(String m) {
     Month mes;
     switch (m.toLowerCase()) {
     case "janeiro":
     mes = Month.JANUARY;
     break;
     case "fevereiro":
     mes = Month.FEBRUARY;
     break;
     case "março":
     mes = Month.MARCH;
     break;
     case "abril":
     mes = Month.APRIL;
     break;
     case "maio":
     mes = Month.MAY;
     break;
     case "junho":
     mes = Month.JUNE;
     break;
     case "julho":
     mes = Month.JULY;
     break;
     case "agosto":
     mes = Month.AUGUST;
     break;
     case "setembro":
     mes = Month.SEPTEMBER;
     break;
     case "outubro":
     mes = Month.OCTOBER;
     break;
     case "novembro":
     mes = Month.NOVEMBER;
     break;
     case "dezembro":
     mes = Month.DECEMBER;
     break;
     default:
     mes = null;
     }
     return mes;
     }
     */
}
