/*
 * Classe que define Objectos do Tipo ReadTextDefinePath
 * Classe auxiliar que captura as paths definidas em Work_in_Java_NewVersion, 
 * colocando-as em argumentos para ser mais facil coloca-los na classe 
 * ReadingSimpleWay.java
 */
package model.suport;

import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author Antonio Rodrigues
 */
public class ReadTextDefinePath {

    //arrayList com as paths geradas automaticamente, através do @Override do init() 
    //no file Work_in_JavaNewVersion
    private static ArrayList<String> listaPaths;

    /**
     * Construtor da classe com numero de parametros indefinido
     *
     * @param paths array de paths
     * @requires paths.lenght>0
     */
    public ReadTextDefinePath(String... paths) {
        listaPaths = new ArrayList<>(Arrays.asList(paths));
    }

    /**
     * Getter do parametro listaPaths
     *
     * @return lista de paths das varias pastas
     * @requires listaPaths.length >0;
     */
    public static ArrayList<String> getListaPaths() {
        return listaPaths;
    }

    /**
     * Sets do argumento listaPaths ah custa do parametro do metodo
     *
     * @param listaPaths
     */
    public static void setListaPaths(ArrayList<String> listaPaths) {
        ReadTextDefinePath.listaPaths = listaPaths;
    }

}
