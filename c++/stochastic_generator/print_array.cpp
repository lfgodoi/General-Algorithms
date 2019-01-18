#include <iostream>
#include "print_array.h"

using namespace std;

float printArray(float fArr[MAX_ROWS][MAX_COLS], int iRows, int iCols)
{
    for(int i=0; i<iRows; i++)
    {
        for(int j=0; j<iCols; j++)
        {
            cout << " " << fArr[i][j] << " ";
        }
        cout << "\n";
    }
    return 0;
}

int main()
{
    float fArr[MAX_ROWS][MAX_COLS] = {{1.3,2.5},{1.9,2.1}};
    printArray(fArr, 2, 2);
}