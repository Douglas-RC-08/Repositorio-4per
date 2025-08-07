class Main {
    public static void main(String[] args){
        System.out.println("Olá Mundo");

        Cachorro c1 = new Cachorro("pretinha", "vira-lata");
        c1.latir();

    }
}

class Cachorro {
    private String nome;
    private String raca;

    public Cachorro (String nome, String raca){
        this.nome = nome;
        this.raca = raca;
    }

    public void latir(){
        System.out.println("Auau!!  O cachorro: " + this.nome + " da raca: " + this.raca + " está latindo!");
    }
}