/******************************************************************************

Stochastic Generator

Function that generates row-stochastic or column-stochastic vector or matrix, that is, whose sum of elements is 1.

Leonardo Franco de Godói

*******************************************************************************/

#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

/* Function to generate stochastic array
1st parameter: number of rows
2nd parameter: number of columns
3rd parameter: row (0) or column (1) stochastic */
float generateStochastic(unsigned int nR, unsigned int nC, bool kind)
{
    float fA[nR][nC];
    float fSum = 0.0;
    for(int r = 0; r < nR; r++)
    {
        for(int c = 0; c < nC; c++) 
        {
            srand(time(NULL));
            fA[r][c] = float(rand()) / (float(RAND_MAX) + 1.0);  
        }    
    }
    
    // Row case
    if(kind == 0)
    {
        for(int i = 0; i < nR; i++)
        {
            for(int j = 0; j < nC; j++)
            {
                fSum += fA[i][j];
            }
            for(int j = 0; j < nC; j++)
            {
                fA[i][j] /= fSum;
            }
        }
    }
    
    // Column case            
    else if(kind == 1)
    {
        for(int i = 0; i < nC; i++)
        {
            for(int j = 0; j < nR; j++)
            {
                fSum += fA[j][i];
            }
            for(int j = 0; j < nR; j++)
            {
                fA[j][i] /= fSum;
            }
        }
    }
      
    // Invalid input            
    else
    {
        cout << "Invalid argument value for function 'generateStochastic'. Please inform 0 (row) or 1 (column).";
        return 0;
    }
    return fA[nR][nC];
}

int main()
{
    // Testing function call 
    unsigned int nR = 2, nC = 2; 
    float fRowStoch[2][2] = {generateStochastic(nR,nC,0)};
    float fColStoch[2][2] = {generateStochastic(nR,nC,1)};
    cout << "Row stochastic:" << endl << fRowStoch[0][0] << endl;
    cout << "Column stochastic: " << endl << fColStoch[0][0];

    return 0;
}