long int contador () {
    static long int a = 0;
    a++;
    return a;
}
long int main() {
    long int x;
    contador();
    contador();
    contador();
    contador();
    x = contador();
    return x;
}