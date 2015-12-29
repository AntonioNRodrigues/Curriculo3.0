import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

/**
 * Classe cliente de Analista que pede ao utilizador o que deseja realizar
 * @author Antonio Rodrigues nº40853
 *
 */
public class RunAnalista {
	private static final String EXT1 = ".txt";
	private static final String EXT2 = ".out";
	
	/**
	 * @param args 
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		BufferedWriter out; 
		Scanner sc = new Scanner(System.in);
		String str = " ";
		
		System.out.println("Introduza o nome do ficheiro: ");
		str = sc.nextLine();
		Analista a = new Analista(str + EXT1);
		
		
		while(!(str.equals("terminar"))){
			System.out.println("Opção desejada: ");
			str = sc.nextLine();
			
			if(str.startsWith("letra")){
				StringBuilder sb = new StringBuilder();
				char caracterAvaliar = selecionarCaracter(str);
				out = new BufferedWriter
						(new FileWriter(caracterAvaliar + EXT2));
				int [] qtasOcorrencias = a.quantasOcorrencias(caracterAvaliar);
				
				for (int i = 0; i < qtasOcorrencias.length; i++) {
					if(i <= 4){
						sb.append(i).append(" ").append(qtasOcorrencias[i])
						.append("\n");
					}else{
						sb.append(i).append("+ ").append(qtasOcorrencias[i])
						.append("\n");
					}	
				}
				
				out.write(sb.toString());
				out.close();
				System.out.println("Ficheiro "+ caracterAvaliar + EXT2 
						+" gravado com sucesso.");
			}
			
			if(str.startsWith("ficheiro")){
				String nomeFile = selecionarNomeFile(str);
				char caracterAvaliar = selecionarCaracter(str); 
				a.listaPalavras(caracterAvaliar, nomeFile+EXT2);
				System.out.println("Ficheiro "+ nomeFile 
						+" gravado com sucesso.");
			}
		}
	}
		
	/**
	 * metodo auxiliar para isolar a letra que vai ser comparada nos metodos
	 * @param str String introduzida pelo utilizador
	 * @return char com letra a ser avaliada
	 * @requires str.equals("****** letraASerIsolada ****") || 
	 * str.equals("****** letraASerIsolada); 
	 */
	private static char selecionarCaracter(String str){
		int i = 0;
		
		while(str.charAt(i) != ' '){
			i++;
		}
		
		return str.charAt(i+1);
	}
	/**
	 * metodo auxiliar para isolar o nome do ficheiro 
	 * @param str String introduzida pelo utilizador
	 * @return string com nome do ficheiro
	 * @requires str.equals("***** letra nomeFile")
	 */
	private static String selecionarNomeFile(String str){
		int i = str.length()-1;
		
		while(str.charAt(i)!= ' '){
			i--;
		}
		
		return str.substring(i,str.length());
	}
}
