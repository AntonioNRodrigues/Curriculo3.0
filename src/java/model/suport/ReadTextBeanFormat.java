/*
 * Classe que permite ler o conteudo da pasta no path definido 
 * pelo AboutMe.jsp através do @Override do init(). 
 * Nesse momento é criada uma instancia da classe ReadTextDefinePath.
 * Essa informação da classe ReadTextDefinePath serve para iniciar 
 * os argumentos path.
 */
package model.suport;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * @author Antonio Rodrigues
 * @version 3.0
 */
public class ReadTextBeanFormat{
    private int index;
    private File folder;
    public String  Path;
    private ArrayList listaTXT;
    private StringBuilder textTxtInListTXT;

  
    
    /**
     * 
     */
    public ReadTextBeanFormat() {
      setPath(ReadTextDefinePath.getListaPaths().get(0));
      textTxtInListTXT = new StringBuilder();
      setListaTXT(listaTXT);
      setTextTxtInListTXT(textTxtInListTXT);
      
    }
    public String getPath(){
        return Path;
    }
    
    public void setPath(String Path2){
        this.Path = Path2;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public StringBuilder getTextTxtInListTXT() {
        return textTxtInListTXT;
    }
    
    /*
     * metodo que le cada elemento da listaTxt e passa o seu conteudo 
     * para uma StringBuilder.
     */
    public void setTextTxtInListTXT(StringBuilder textTxtInListTXT) {
            String temp3 = null;
            List lista = getListaTXT();
            BufferedReader ler;
            
            for(Object o : lista){
                try {
                    String temp = (String)o;
                    File ficheiros = new File(folder, temp);           
                    ler = new BufferedReader(new FileReader(ficheiros));
                    while((temp3=ler.readLine())!= null){
                        textTxtInListTXT.append(temp3 + "\n");
                    }
                } catch (IOException ex) {
                    Logger.getLogger(ReadTextBeanFormat.class.getName()).log(Level.SEVERE, null, ex);
                } 
                }
          this.textTxtInListTXT = textTxtInListTXT;   
    }

    public ArrayList getListaTXT() {
        return listaTXT;
    }

    /*
     * metodo que le os ficheiros da pasta definida em path com a 
     * terminação .txt.
     * Adiciona-os posteriormente a listaTxt.
     */
    public void setListaTXT(ArrayList listaTXT) {
         try{
           
            folder= new File(getPath());
            String [] sArray= folder.list();
            listaTXT= new ArrayList();
            
            String ext2= ".txt";
          
            for(int i=0; i<sArray.length; i++){
                if(sArray[i].endsWith(ext2)){
                    listaTXT.add(sArray[i]);
                    }
                }
        }catch(Exception e){
            Logger.getLogger(ReadTextBeanFormat.class.getName()).log(Level.SEVERE, null, e);
        }
        this.listaTXT = listaTXT;
    }
}
