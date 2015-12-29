import java.util.ArrayList;
import java.util.List;

/**
 * classe que simula uma impressora de acordo com a sua politica imprime de
 * diferentes formas
 * 
 * @author Antonio Rodrigues n40853
 * 
 */
public class Printer {
	private int capacity;
	private int policy;
	/**
	 * lista de PrinterTask que eh utilizada quando a impressora esta com
	 * politica 3
	 */
	private SLLQueue<PrinterTask> listaDefault;
	/**
	 * lista de lista de PinterTask que eh utilizada quando a impressora esta
	 * com politica 1 ou 2
	 */
	private List<SLLQueue<PrinterTask>> listasPrioridades;
	/**
	 * variavel de contagem para auxuliar a contagem de elementos com prioridade
	 * 2 que saem quando a impressora esta com politica 2
	 */
	private int contagem;

	/**
	 * construtor que incializa a impresora com determinada capacidade e
	 * politica. Consoante a sua politica inicializa o atributo listaDefault
	 * para a politica 3 ou o atributo listasPrioridades para a politica 2 ou 1
	 * 
	 * @param policy
	 *            politia da impressora
	 * @param capacity
	 *            capacidade da impressora
	 */
	public Printer(int policy, int capacity) {
		this.capacity = capacity;
		this.policy = policy;

		if (policy == 3) {
			listaDefault = new SLLQueue<PrinterTask>();
		} else {
			listasPrioridades = new ArrayList<SLLQueue<PrinterTask>>(3);
			for (int i = 0; i < 3; i++) {
				// coloca em cada uma das posicoes uma nova SLLQueue
				listasPrioridades.add(i, new SLLQueue<PrinterTask>());
			}
		}
	}

	/**
	 * metodo que verifica se existe espaco na impressa para imprimir determinda
	 * task se existe espaco e consoante a sua politica realiza a colocacao da
	 * task
	 * 
	 * @param task
	 *            task a ser colocada na printer
	 * @return se existe ou nao espaco na printer para a task
	 */
	public boolean enqueue(PrinterTask task) {

		boolean existeEspaco = false;

		if (availableSpace() - task.size() >= 0) {
			capacity -= task.size();

			if (policy == 3) {
				listaDefault.enqueue(task);
			}
			if (policy == 1 || policy == 2) {
				if (task.size() <= 64 || task.user().equals("admin")) {
					listasPrioridades.get(2).enqueue(task);
				} else if (task.size() >= 65 && task.size() <= 1024) {
					listasPrioridades.get(1).enqueue(task);
				} else if (task.size() >= 1025) {
					listasPrioridades.get(0).enqueue(task);
				}
			}

			existeEspaco = true;
		}

		return existeEspaco;

	}

	/**
	 * verifica de acordo com a politica se a printer nao tem ficheiro em espera
	 * 
	 * @return se a printer esta vazia ou nao
	 */
	public boolean isEmpty() {
		boolean estaVazia = false;

		if (policy == 3 && listaDefault.isEmpty()) {
			estaVazia = true;
		}
		if ((policy == 1 || policy == 2) && listasPrioridades.get(0).isEmpty()
				&& listasPrioridades.get(1).isEmpty()
				&& listasPrioridades.get(2).isEmpty()) {
			estaVazia = true;
		}
		return estaVazia;
	}

	/**
	 * metodo que simula o lancamento dos ficheiros para a impressao de acordo
	 * com a politica da printer
	 * 
	 * @return tarefa que serah impressa de seguida
	 */
	public PrinterTask takeNext() {
		PrinterTask tarefaAImprimir = null;

		// imprime os ficheiro pela ordem que foram colocados
		if (policy == 3) {
			tarefaAImprimir = listaDefault.front();
			listaDefault.dequeue();
		}

		if (policy == 1) {
			tarefaAImprimir = takeNextPolicy1();
		}

		if (policy == 2) {
			tarefaAImprimir = takeNextPolicy2();
		}
		return tarefaAImprimir;
	}

	/**
	 * metodo que simula o lancamento dos ficheiros para a impressao de acordo
	 * com a politica 1 da printer. Imprime os ficheiros da prioridade 2 1 0 por
	 * esta ordem
	 * 
	 * @return tarefa que serah impressa de seguida
	 */
	public PrinterTask takeNextPolicy1() {
		PrinterTask tarefaAImprimirPol1 = null;

		if (!listasPrioridades.get(2).isEmpty()) {
			tarefaAImprimirPol1 = listasPrioridades.get(2).front();
			listasPrioridades.get(2).dequeue();

		} else if (!listasPrioridades.get(1).isEmpty()) {
			tarefaAImprimirPol1 = listasPrioridades.get(1).front();
			listasPrioridades.get(1).dequeue();

		} else if (!listasPrioridades.get(0).isEmpty()) {
			tarefaAImprimirPol1 = listasPrioridades.get(0).front();
			listasPrioridades.get(0).dequeue();
		}
		return tarefaAImprimirPol1;
	}

	/**
	 * metodo que simula o lancamento dos ficheiros para a impressao de acordo
	 * com a politica 2 da printer. Imprimi dois ficheiros de prioridade 2, um
	 * de prioridade 1 e por fim quando nao houver ficheiros de prioridade 1 e 2
	 * imprime os de prioridade 0
	 * 
	 * @return tarefa que serah impressa de seguida
	 */
	public PrinterTask takeNextPolicy2() {
		PrinterTask tarefaAImprimirPol2 = null;

		if (listasPrioridades.get(1).isEmpty() && contagem <= 2) {
			contagem = 0;
		}
		if (!listasPrioridades.get(2).isEmpty() && contagem < 2) {
			tarefaAImprimirPol2 = listasPrioridades.get(2).front();
			listasPrioridades.get(2).dequeue();
			contagem++;

		} else if (!listasPrioridades.get(1).isEmpty() && contagem >= 2) {
			tarefaAImprimirPol2 = listasPrioridades.get(1).front();
			listasPrioridades.get(1).dequeue();
			contagem = 0;

		} else if (!listasPrioridades.get(0).isEmpty()) {
			tarefaAImprimirPol2 = listasPrioridades.get(0).front();
			listasPrioridades.get(0).dequeue();
		}

		return tarefaAImprimirPol2;
	}

	/**
	 * metodo que permite saber que espaco a printer tem disponivel
	 * 
	 * @return espaco disponivel
	 */
	public int availableSpace() {
		return capacity;
	}

	/**
	 * Representacao textual da impressora com o formato politica: capacidade:
	 * capDisponivel e de acordo com a politica a listaDefault ou a
	 * listaPrioridades
	 * 
	 * @return representacao textual da impressora
	 */
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("politica: ").append(policy).append(" capacidade: ")
				.append(capacity).append(" capDisponivel:")
				.append(availableSpace());
		if (policy == 3) {
			sb.append(listaDefault.toString());
		} else {
			sb.append(listasPrioridades.toString());
		}
		return sb.toString();
	}
}
