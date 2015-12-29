import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/**
 * classe cliente da printer qua inicializa a printer com parametros que sao
 * passados pelo utilizador atraves do terminal. Recebe os ficheiros a serem
 * impressos coloca-os na printer e mostra a sequencia de saida da printer.
 * 
 * @author Antonio Rodrigues n40853
 * 
 */
public class RunPrinter {

	/**
	 * 
	 * @param args
	 *            informacao passada pelo utilizador atraves do terminal com
	 *            nome do args[0] nome do ficheiro a ser lido args[2] capacidade
	 *            da printer e args[1] politica da impressora
	 * 
	 */
	public static void main(String[] args) {
		Printer impressora = new Printer(Integer.parseInt(args[1]),
				Integer.parseInt(args[2]));
		try {
			BufferedReader in = new BufferedReader(new FileReader(args[0]));
			String line = null;

			while ((line = in.readLine()) != null) {
				String aux[] = line.split(" ");
				// se houver espaco na lista realiza o enqueue se nao imprime
				// mensagem
				if (impressora.enqueue(new PrinterTask(aux[0], Integer
						.parseInt(aux[1]), aux[2]))) {
				} else {
					System.out.println("o ficheiro " + aux[0] + " nao foi "
							+ "colocado em espera. Espaco disponivel: "
							+ impressora.availableSpace());
				}
			}
		} catch (IOException ioEx) {
			System.err.println(ioEx.getMessage());
		}

		System.out.println("Sequencia de impressao: ");
		while (!impressora.isEmpty()) {
			System.out.println(impressora.takeNext().toString());
		}

	}

}
