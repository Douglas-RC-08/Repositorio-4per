#include <stdio.h>
#include <math.h>

long int num1, num2, num3, operacao;

int main(int argc, char **argv) {
    while(operacao == 0){
        printf("Digite os lados do triangulo.\n");
    
        printf("Numero1:");
        scanf("%ld", &num1);
        
        printf("Numero2:");
        scanf("%ld", &num2);
        
        printf("Numero3:");
        scanf("%ld", &num3);
        
        if (num1 == num2 && num1 == num3){
            printf("O triângulo é equilátero.");
        }else if (num1 != num2 && num1 != num3 && num2 != num3){
            printf("O triângulo é escaleno.");
        }else if (num1 == num2 || num1 == num3 || num2 == num3){
            printf("O triângulo é isóceles.");
        }else{
            printf("utilize numeros, inteiros e validos");
        }
        printf("\nDigite 0 para continuar e qualquer outro numero para continuar.\n");
        scanf("%ld", &operacao);
    }
}
