#include <stdio.h>

int factorial(int n) {
    if (n == 0){
        return 1;
    }
    return factorial(n-1)*n;
}

int sumOfArray(int arr[], int size) {
    int sum = 0; // Initialize sum
    for (int i = 0; i < size; i++) {
        sum += arr[i]; // Add each element to sum
    }
    return sum; // Return the total sum
}


// Function to calculate the length of a string
int stringLength(const char* str) {
    int length = 0;
    while(str[length] != '\0') {
        length++;
    }
    return length;
}


int main(){
    int number = 10;

    printf("Factorial of %d = %d\n",number,factorial(number));

    int array[] = {1, 2, 3, 4, 5}; // Example array
    int size = sizeof(array) / sizeof(array[0]); // Calculate size of the array
    int totalSum = sumOfArray(array, size); // Calculate sum of the array

    printf("Sum of the array is: %d\n", totalSum); // Display the sum
    
    char myString[] = "Hello, world!";
    int length = stringLength(myString);
    printf("The length of the string \"%s\" is: %d\n", myString, length);
    return 0;
    

    
}