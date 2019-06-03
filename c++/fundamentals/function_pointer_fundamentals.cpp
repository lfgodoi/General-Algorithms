
/******************************************************************************
C++ Pointers in function
Basic example of how to pass pointer to functions C++.

The call by pointer method of passing arguments to a function copies the 
address of an argument into the formal parameter. Inside the function, 
the address is used to access the actual argument used in the call. This 
means that changes made to the parameter affect the passed argument.

Leonardo Franco de Godói

*******************************************************************************/

#include <iostream>
#include <ctime>

using namespace std;

// Function for random summation
void summation(int a, int b, double *c, int n)
{
    // set the seed
    srand((unsigned)time(NULL));
    
    // Performing summation
    for(int i = 0; i < n; i++)
    {
        *c += rand() % (b - a) + a;
    }
}

int main()
{
    // Declaring a variable
    int a = 1;
    int b = 12;
    double c = 0;
    int n = 10;
    
    // Passing variable address as parameter
    summation(a, b, &c, n);
    
    // Printing the variable modified by the function
    cout << "Result of random summation with " << n <<" iterations and "
            "interval of " << a << " to " << b << ": " << c;

    return 0;
}
