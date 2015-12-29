import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 * Classe que analisa a frequencia de letras em texto bem como o numero de 
 * palavras repetidas num dado texto.
 * @author Antonio Rodrigues n:40853
 *
 */
public class Analista {
	
	private String [] listaFrases;
	
	/**
	 * construtor que inicializa o objecto do tipo Analista 
	 * @param nomeFile nome do ficheiro que vai ser lido 
	 * @throws IOException
	 */
	public Analista(String nomeFile) throws IOException {
		this.listaFrases = setListaFrases(nomeFile);
	}
	
	/**
	 * getter do argumento listaFrases 
	 * @return array de strings 
	 */
	public String[] getListaFrases() {
		return listaFrases;
	}
	
	/**
	 * metodo que vai ler o ficheiro e inicializar o argumento listaFrases,
	 * com uma palavra por cada indice do array, sem os caracteres 
	 * alfa-numericos.
	 * @param nomeFile nome do ficheiro que vai ser lido 
	 * @return array de Strings com uma palavra por indice 
	 * @throws IOException 
	 */
	private String [] setListaFrases(String nomeFile) throws IOException {
		BufferedReader in = new BufferedReader(new FileReader(nomeFile));
		StringBuilder sb = new StringBuilder();
		String line = " ";
		
		while((line = in.readLine()) != null){
			sb.append(line.toLowerCase());
		}
		
		String [] aux = sb.toString().split(("\\s*[ .,()]\\s*"));
		return aux;
	}
	
	/**
	 * Verifica o numero de palavras do texto em o argumento c ocorre i vezes, 
	 * de 0 a 4 e mais do que 5 vezes. 
	 * @param c letra a ser analisada no texto
	 * @return array de int com o numero de ocorrencias do parametro c em cada 
	 * palavra
	 */
	public int [] quantasOcorrencias(char c){
		int [] numOcorrencias = new int [6];
		String [] copyListaStrings = getListaFrases();
		
		for(String frase: copyListaStrings){
			int count =0;
			for (int i = 0; i < frase.length(); i++) {
				if(frase.toLowerCase().charAt(i) == c ){
					count++;
				}
			}
			switch (count) {
			case 0:
				numOcorrencias[0]++;
				break;
			case 1:
				numOcorrencias[1]++;
				break;
			case 2:
				numOcorrencias[2]++;
				break;
			case 3:
				numOcorrencias[3]++;
				break;
			case 4:
				numOcorrencias[4]++;
				break;
			default:
				numOcorrencias[5]++;
				break;
			}
		}
		return numOcorrencias;
	}
	
	/**
	 * meto que escreve no ficheiro a lista de todas as palavras comecadas pela
	 * letra c e do numero de ocorrencias de cada uma dessas palavaras no texto 
	 * @param c letra a ser analisada no texto
	 * @param ficheiro nome do ficheiro em que vai ser escrita a informacao
	 * @throws IOException 
	 */
	public void listaPalavras(char c , String ficheiro) throws IOException {
		String [] copyListaStrings = getListaFrases();
		BufferedWriter out = new BufferedWriter(new FileWriter(ficheiro));
		StringBuilder sb = new StringBuilder();
		String encontrou;
		
		for (int i = 0; i < copyListaStrings.length; i++) {
			int count = 0;
			if(copyListaStrings[i].charAt(0) == c){
				encontrou = copyListaStrings[i];
				for (int j = i; j < copyListaStrings.length; j++) {
					if(copyListaStrings[j].equals(encontrou)){
						count++;
						copyListaStrings[j] = " ";
					}
				}
				sb.append(encontrou.toUpperCase()).append(" ");
				sb.append(count).append("\n");
			}
			
		}
		out.write(sb.toString());
		out.close();
	}
}
