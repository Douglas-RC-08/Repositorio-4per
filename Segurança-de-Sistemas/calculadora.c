#include <stdio.h>
#include <math.h>

long int num1, num2, num3;

int main(int argc, char **argv) {
    printf("Digite o numero1: ");
    scanf("%ld", &num1);

    printf("Digite o numero2: ");
    scanf("%ld", &num2);

    printf("Digite um numero para a operação: \n1.Soma \n2.Subtração \n3.Multiplicação \n4.Divisão \n5.Potência \n6.Raiz \n");
    scanf("%ld", &num3);
    
    if (num3 == 1){
        printf("A Soma é: %ld", num1 + num2);
    } else if (num3 == 2){
        printf("A Subtração é: %ld", num1 - num2);
    }else if (num3 == 3){
        printf("A Multiplicação é: %ld", num1 * num2);
    }else if (num3 == 4){
        printf("A Divisão é: %ld", num1 / num2);
    }else if (num3 == 5){
        printf("A Potencia é: %ld", pow(num1, num2));
    }else if (num3 == 6){
        printf("A Raiz do numero1 é: %ld \nE a Raiz do numero2 é: %ld", sqrt(num1), sqrt(num2));
    }else {
        printf("Digite um numero válido. 1-6");
    }
}
