#include <stdio.h>

unsigned long long fib(int n) {
    if (n < 2){
        return n;
    }

    unsigned long long prev = 0, current = 1, next = 0;

    for (int i = 2; i <= n; i++){
        next = prev + current;
        prev = current;
        current = next;
    }

    return current;
}

int main(){
    int n;
    printf("Enter the Fibonacci position: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("Please provide a non-negative integer.\n");
        return 1;
    }

    unsigned long long fibonacci = fib(n);

    printf("Fibonacci number at position %d is: %llu\n", n, fibonacci);

    return 0;
    
}