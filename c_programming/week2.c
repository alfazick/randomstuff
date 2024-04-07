
#include <stdio.h>
#include <stdbool.h>

bool isArraySorted(int arr[], int n);
int findMaximum(int arr[], int n);
int linearSearch(int arr[],int n, int value);
void reverseArray(int arr[], int n);

int main() {
    int arr[] = {1,3,5,7,9};
    int n = sizeof(arr) / sizeof(arr[0]);
    int searchValue = 7;

    if  (isArraySorted(arr,n)) {
        printf("The array is sorted.\n");
    } else {
        printf("The array is not sorted.\n");
    }

    int max = findMaximum(arr,n);
    printf("The maximum element in the array is: %d\n",max);

    int index = linearSearch(arr, n, searchValue);
    if (index != -1) {
        printf("Element %d found at index: %d\n", searchValue, index);
    } else {
        printf("Element %d not found in the array.\n", searchValue);
    }


    reverseArray(arr, n);
    printf("The reversed array: ");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}

bool isArraySorted(int arr[], int n) {
    for (int i = 0; i < n-1;i++){
        if (arr[i] > arr[i+1]){
            return false;
        }
    }
    return true;
}

int findMaximum(int arr[], int n) {
    int max = arr[0];
    for (int i = 1;i < n;i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
    }
    return max;
}

int linearSearch(int arr[], int n, int value) {
    for (int i = 0; i < n; i++) {
        if (arr[i] == value) {
            return i;
        }
    }
    return -1;
}

void reverseArray(int arr[], int n) {
    for (int i = 0; i < n/2; i++) {
        int temp = arr[i];
        arr[i] = arr[n-i-1];
        arr[n-i-1] = temp;
    }
}
