#include <stdio.h>

int main(){
    int num1,num2,sum;

    printf("Enter first number: ");
    scanf("%d", &num1);

    printf("Enter second number: ");
    scanf("%d", &num2);

    sum = num1 + num2;

    printf("The sum of %d and %d is %d\n",num1,num2,sum);

    return 0;
}

// clang -S -O0 -o main.s main.c -> to assembly

// clang -c main.s -o main.o -> to object

// clang main.o -o main -> to executable
