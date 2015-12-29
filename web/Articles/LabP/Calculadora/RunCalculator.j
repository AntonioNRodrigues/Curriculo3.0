
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 * Classe cliente da Calculator que manda cada linha do ficheiro para a
 * Calculadora para ser avaliada.
 *
 * @author Antonio Rodrigues n:40853
 *
 */
public class RunCalculator {

    public static void main(String[] args) throws IOException {

        BufferedReader data = new BufferedReader(new FileReader("data.txt"));
        BufferedWriter out = new BufferedWriter(new FileWriter("result2.txt"));

        Calculator ex = new Calculator(out);

        String line;
        while ((line = data.readLine()) != null) {
            ex.processLine(line);
        }

        data.close();
        out.close();
    }
}
