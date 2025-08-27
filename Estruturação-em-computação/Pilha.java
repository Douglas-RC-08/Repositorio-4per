import java.util.Scanner;
import java.util.Stack;

public class Pilha {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite a expressão matemática:");
        String expressao = sc.nextLine();

        if (estaBalanceada(expressao)) {
            System.out.println("Parênteses balanceados.");
        } else {
            System.out.println("Parênteses desbalanceados.");
        }

        sc.close();
    }

    public static boolean estaBalanceada(String expressao) {
        Stack<Character> pilha = new Stack<>();

        for (char c : expressao.toCharArray()) {
            if (c == '(') {
                pilha.push(c);
            } else if (c == ')') {
                if (pilha.isEmpty()) {
                    return false; // fecha sem abrir
                }
                pilha.pop();
            }
        }

        return pilha.isEmpty(); // se vazia, está balanceada
    }
}