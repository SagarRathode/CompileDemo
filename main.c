#include <stdio.h>
#include "function.h"

int main() {
    // Using function from function.c
    greetUser("Sagar");

    int x = 5, y = 7;
    int result = addNumbers(x, y);
    printf("The sum of %d and %d is %d.\n", x, y, result);

    return 0;
}

