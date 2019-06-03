
/******************************************************************************
C++ Pointers
Basic example of pointer operations in C++.

Some important considerations:
<type> *<pointer_name> : Create a pointer.
&<variable>            : Returns variable address.
*<pointer_name>        : Return value of pointed variable.
<pointer_name>         : Returns address of pointed variable.

Leonardo Franco de Godói

*******************************************************************************/

#include <iostream>

using namespace std;

int main()
{
    // Declaring a variable
    int x = 10;
    
    // Creating a pointer
    int *address;
    
    // Storing variable address in pointer
    address = &x;
    
    // print value and address of the variable through its pointer
    cout << "Value of variable in address " << address << ": " << *address << endl;

    return 0;
}
