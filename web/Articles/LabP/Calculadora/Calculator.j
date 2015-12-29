
import java.io.BufferedWriter;
import java.io.IOException;

/**
 * Classe que implementa uma calculadora que avalia expressões escritas na
 * notação sufixa. Recebe os valores atraves de um ficheiro, manipula a pilha
 * consoante as operacaoes pretendidas e imprime-os para um ficheiro.
 *
 * @author Antonio Rodrigues n:40853
 *
 */
public class Calculator {

    private BufferedWriter out;
    private Stack<Integer> pilha;
    private int x;

    public Calculator(BufferedWriter out) {

        this.out = out;
        pilha = new ArrayStack<Integer>();

    }

    /**
     * Avalia cada linha e consoante o seu conteudo vai ser processada
     * realizando as respectivas operacoes e manipulando a pilha. Depois de
     * realizadas as operacoes imprime, atraves do argumento out, o conteudo do
     * topo da pilha.
     *
     * @param line linha que vai ser avaliada e processada
     * @throws IOException
     * @requires line != null
     */
    public void processLine(String line) throws IOException {

        if (line.charAt(0) != '-') {
            String[] aux = line.split(" ");
            for (String s : aux) {
                if (s.equals("+") || s.equals("-") || s.equals("/")
                        || s.equals("%") || s.equals("*")) {
                    int valor = pilha.peek();
                    pilha.pop();
                    int valor2 = pilha.peek();
                    pilha.pop();
                    realizaOperacao(valor2, valor, s);
                } else if (s.equals("drop")) {
                    pilha.pop();
                } else if (s.equals("dup")) {
                    pilha.push(pilha.peek());
                } else if (s.equals("swap")) {
                    int valor = pilha.peek();
                    pilha.pop();
                    int valor2 = pilha.peek();
                    pilha.pop();
                    pilha.push(valor);
                    pilha.push(valor2);
                } else if (s.equals("x")) {
                    pilha.push(x);
                } else if (s.equals("@x")) {
                    this.x = pilha.peek();
                    pilha.pop();
                } else if (s.equals(".")) {
                    out.write(pilha.peek() + "\n");
                    pilha.pop();
                } else {
                    pilha.push(Integer.parseInt(s));
                }
            }
        }
    }

    /**
     * Realiza as operacoes consoante o seu operador
     *
     * @param b um dos int sobre o qual se realiza a operacao
     * @param a um dos int sobre o qual se realiza a operacao
     * @param operador simbolo da operacao
     */
    private void realizaOperacao(int b, int a, String operador) {

        switch (operador) {
            case "+":
                pilha.push(b + a);
                break;
            case "-":
                pilha.push(b - a);
                break;
            case "/":
                pilha.push(b / a);
                break;
            case "%":
                pilha.push(b % a);
                break;
            case "*":
                pilha.push(b * a);
                break;
        }
    }
}
