/*
 * Classe que permite ler o conteudo das pastas nos paths definidos 
 * pelo Work_in_JavaNewVersion.jsp através do @Override do init(). 
 * Nesse momento é criada uma instancia da classe ReadTextDefinePath. 
 * Essa informação da classe ReadTextDefinePath serve para iniciar 
 * os argumentos pathAUTO, pathAUTOClassesSite e pathAUTOFcul. 
 * Cada um dos atributos, através do respectivo metodo set, 
 * passa pelo metodo lerConteudoPasta ou pelo metodo 
 * lerConteudoFicheiro para que as respectivas listas sejam preenchidas.
 */
package model.suport;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author António Rodrigues
 * @version 3.0
 */
public final class ReadingSimpleWay {

    /**
     * ArrayList com as paths dos pastas a ler
     */
    private ArrayList<String> listaPaths;
    /**
     * lista de listas que contem os nomes dos ficheiros que estao presentes na
     * pasta
     */
    private ArrayList<ArrayList<String>> listaNomesFicheirosDeCadaPasta;
    /**
     * lista de listas que contem o conteudo de cada ficheiro que esta presente
     * na pasta
     */
    private ArrayList<ArrayList<StringBuilder>> listaConteudoFicheiroDeCadaPasta;

    /**
     * Inicialização de todos os atributos bem como dos respectivos set de cada
     * um. inicializa também as atributos path, pathOther e pathFcul através da
     * classe ReadTextDefinePath.
     */
    public ReadingSimpleWay() {
        listaPaths = ReadTextDefinePath.getListaPaths();
        setListaConteudoFicheiroDeCadaPasta(new ArrayList<ArrayList<StringBuilder>>());
        setListaNomesFicheirosDeCadaPasta(new ArrayList<ArrayList<String>>());
        populateLista();

    }

    /**
     * Getter dio parametro NomesFicheirosDeCadaPasta
     *
     * @return NomesFicheirosDeCadaPasta
     */
    public ArrayList<ArrayList<String>> getListaNomesFicheirosDeCadaPasta() {
        return listaNomesFicheirosDeCadaPasta;
    }

    /**
     * Getter do parametro ListaConteudoFicheiroDeCadaPasta
     *
     * @return ListaConteudoFicheiroDeCadaPasta
     */
    public ArrayList<ArrayList<StringBuilder>> getListaConteudoFicheiroDeCadaPasta() {
        return listaConteudoFicheiroDeCadaPasta;
    }

    /**
     * Setter do parametro listaNomesFicheirosDeCadaPasta
     *
     * @param listaNomesFicheirosDeCadaPasta
     */
    public void setListaNomesFicheirosDeCadaPasta(
            ArrayList<ArrayList<String>> listaNomesFicheirosDeCadaPasta) {
        this.listaNomesFicheirosDeCadaPasta = listaNomesFicheirosDeCadaPasta;
    }

    /**
     * Setter do parametro listaConteudoFicheiroDeCadaPasta
     *
     * @param listaConteudoFicheiroDeCadaPasta
     */
    public void setListaConteudoFicheiroDeCadaPasta(
            ArrayList<ArrayList<StringBuilder>> listaConteudoFicheiroDeCadaPasta) {
        this.listaConteudoFicheiroDeCadaPasta = listaConteudoFicheiroDeCadaPasta;
    }

    /**
     * metodo auxiliar que itera sobre a array de paths, adiciona a cada lista
     * de listas dos argumentos preenche as repectivas listas
     */
    private void populateLista() {
        for (int i = 0; i < listaPaths.size(); i++) {
            listaNomesFicheirosDeCadaPasta.add(
                    lerConteudoPasta(new ArrayList(), listaPaths.get(i)));
            listaConteudoFicheiroDeCadaPasta.add(lerConteudoFicheiro(
                    listaNomesFicheirosDeCadaPasta.get(i), listaPaths.get(i)));
        }
    }

    /**
     * Metodo que le o conteudo da pasta com a path definida no parametro path,
     * consoante a string controlo e coloca esses elementos na lista
     * aSerPreenchida
     *
     * @param aSerPreenchida - lista que recebe os elemento lidos
     * @param path - path para o file que irá ser lido
     * @param controlo - string de controlo para controlar o que irah constar na
     * Lista
     * @return Lista preenchida com os elementos correctos
     */
    private ArrayList lerConteudoPasta(ArrayList aSerPreenchida,
            String path) {

        try {
            File folder = new File(path);
            String [] sArray = folder.list();
            aSerPreenchida = new ArrayList();
            String ext1 = ".j";
            String ext2 = ".jspage";

            for (String str : sArray) {
                if (str.endsWith(ext1)) {
                    aSerPreenchida.add(str);
                }
                if (str.endsWith(ext2)) {
                    aSerPreenchida.add(str);
                }
            }

        } catch (Exception e) {
            Logger.getLogger(ReadTextBeanFormat.class.getName()).log(Level.SEVERE, null, e);
        }
        return aSerPreenchida;
    }

    /**
     * metodo que le o conteudo e cada elemento da lista
     *
     * @param listaPreenchida - lista preenchida com todos os elementos que vao
     * ser lidos
     * @param path - path onde estao os lemento que vao ser lidos
     * @return lista com os elementos foram lidos
     */
    private ArrayList<StringBuilder> lerConteudoFicheiro(
            ArrayList listaPreenchida, String path) {

        ArrayList<StringBuilder> listaSerDevolvida
                = new ArrayList<StringBuilder>();
        String temp1;
        BufferedReader ler;

        for (Object object : listaPreenchida) {
            StringBuilder sb = new StringBuilder();
            try {
                String temp = (String) object;
                File ficheiros = new File(path, temp);
                ler = new BufferedReader(new FileReader(ficheiros));

                while ((temp1 = ler.readLine()) != null) {
                    sb.append(temp1).append("\n");
                }
                ler.close();
            } catch (IOException ex) {
                Logger.getLogger(ReadTextBeanFormat.class.getName())
                        .log(Level.SEVERE, null, ex);
            }
            listaSerDevolvida.add(sb);
        }
        return listaSerDevolvida;
    }

}
