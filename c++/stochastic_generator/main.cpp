/******************************************************************************

Stochastic Generator

Function that generates row-stochastic or column-stochastic vector or matrix, that is, whose sum of elements is 1.

Leonardo Franco de GodC3i

*******************************************************************************/

#include <iostream>
#include <ctime>

using namespace std;

const int MAX_ROWS = 10;
const int MAX_COLS = 10;

/* Function to generate stochastic array
1st parameter: pointer to the array
2rd parameter: row (0) or column (1) stochastic */
void generateStochastic(float (*arr)[MAX_ROWS][MAX_COLS], bool bKind)
{
    // Counting rows and columns of 2D array
    int iRows = sizeof(*arr)/sizeof(*arr[0]);
    int iCols = sizeof(*arr[0])/sizeof(*arr[0][0]);
    
    // Generating random float values through a 2D array
    srand((unsigned)time(NULL));
    for(int i = 0; i < iRows; i++)
    {
        for(int j = 0; j < iCols; j++)
        {
            (*arr)[i][j] = (float) rand()/RAND_MAX;
        }
    }
    
    // Row case
    if(bKind == 0)
    {
        for(int i = 0; i < iRows; i++)
        {
            float fSum = 0.0;
            for(int j = 0; j < iCols; j++)
            {
                fSum += (*arr)[i][j];    
            }
            for(int j = 0; j < iCols; j++)
            {
                (*arr)[i][j] /= fSum;
            }
        } 
    }
    
    // Column case
    else if(bKind == 1)
    {
        for(int i = 0; i < iCols; i++)
        {
            float fSum = 0.0;
            for(int j = 0; j < iRows; j++)
            {
                fSum += (*arr)[j][i];
            }
            for(int j = 0; j < iRows; j++)
            {
                (*arr)[i][j] /= fSum;
            }
        }  
    }
    
    // Invalid input
    else
    {
        cout << "Invalid argument value for function 'generateStochastic'. Please inform 0 (row) or 1 (column)." << endl;
    }
    return;
}

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

int main()
{
    // Testing function call
    float arr[MAX_ROWS][MAX_COLS] = {{1.3,2.5},{1.9,2.1}};
    float (*p_arr)[MAX_ROWS][MAX_COLS] = &arr;
    generateStochastic(p_arr,0);
    printArray(arr,10,10);
}