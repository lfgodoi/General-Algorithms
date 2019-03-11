#include <iostream>
#include "print_array.h"

using namespace std;

const int MAX_ROWS = 10;
const int MAX_COLS = 10;

void printArray(float fArr[MAX_ROWS][MAX_COLS], int iRows, int iCols)
{
    for(int i = 0; i < iRows; i++)
    {
        for(int j =0; j < iCols; j++)
        {
            cout << " " << fArr[i][j] << " ";
        }
        cout << "\n";
    }
    return;
}