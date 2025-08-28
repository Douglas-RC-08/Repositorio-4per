// Classe Nó (cada elemento da lista)
class No {
    int valor;
    No prox;

    No(int valor) {
        this.valor = valor;
        this.prox = null;
    }
}

// Classe Lista Encadeada
class ListaEncadeada {
    private No inicio;

    // Construtor: lista começa vazia
    public ListaEncadeada() {
        this.inicio = null;
    }

    // Verificar se está vazia
    public boolean estaVazia() {
        return inicio == null;
    }

    // Inserção no início
    public void inserirInicio(int valor) {
        No novo = new No(valor);
        novo.prox = inicio;
        inicio = novo;
    }

    // Inserção no final
    public void inserirFim(int valor) {
        No novo = new No(valor);
        if (estaVazia()) {
            inicio = novo;
        } else {
            No temp = inicio;
            while (temp.prox != null) {
                temp = temp.prox;
            }
            temp.prox = novo;
        }
    }

    // Inserção em posição específica (0 = início)
    public void inserirPosicao(int valor, int pos) {
        if (pos == 0) {
            inserirInicio(valor);
            return;
        }
        No novo = new No(valor);
        No temp = inicio;
        for (int i = 0; i < pos - 1 && temp != null; i++) {
            temp = temp.prox;
        }
        if (temp == null) {
            System.out.println("Posição inválida!");
        } else {
            novo.prox = temp.prox;
            temp.prox = novo;
        }
    }

    // Remoção no início
    public void removerInicio() {
        if (estaVazia()) {
            System.out.println("Lista vazia!");
        } else {
            inicio = inicio.prox;
        }
    }

    // Remoção no final
    public void removerFim() {
        if (estaVazia()) {
            System.out.println("Lista vazia!");
            return;
        }
        if (inicio.prox == null) {
            inicio = null;
            return;
        }
        No temp = inicio;
        while (temp.prox.prox != null) {
            temp = temp.prox;
        }
        temp.prox = null;
    }

        // Remoção em posição específica
        public void removerPosicao(int pos) {
            if (estaVazia()) {
                System.out.println("Lista vazia!");
                return;
            }
            if (pos == 0) {
                removerInicio();
                return;
            }
            No temp = inicio;
            for (int i = 0; i < pos - 1 && temp != null; i++) {
                temp = temp.prox;
            }
            if (temp == null || temp.prox == null) {
                System.out.println("Posição inválida!");
            } else {
                temp.prox = temp.prox.prox;
            }
        }

    // Imprimir lista
    public void imprimir() {
        if (estaVazia()) {
            System.out.println("Lista vazia!");
            return;
        }
        No temp = inicio;
        while (temp != null) {
            System.out.print(temp.valor + " -> ");
            temp = temp.prox;
        }
        System.out.println("null");
    }
}

// Classe principal para testar
public class Lista {
    public static void main(String[] args) {
        ListaEncadeada lista = new ListaEncadeada();

        lista.inserirInicio(10);
        lista.inserirFim(20);
        lista.inserirFim(30);
        lista.inserirPosicao(15, 1);

        lista.imprimir(); // 10 -> 15 -> 20 -> 30 -> null

        lista.removerInicio();
        lista.imprimir(); // 15 -> 20 -> 30 -> null

        lista.removerFim();
        lista.imprimir(); // 15 -> 20 -> null

        lista.removerPosicao(0);
        lista.imprimir(); // 20 -> null
    }
}