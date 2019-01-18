#
# Stochastic Generator
#
# Function that generates row-stochastic or column-stochastic vector or matrix, that is, whose sum of elements is 1.
# 
# Leonardo Franco de Godói
#
 
#------------------------------------------------------------------------------

# Importing package for scientific computing with Python
import numpy as np

# Function to generate stochastic array
# 1st parameter: number of rows
# 2nd parameter: number of columns
# 3rd parameter: row (0) or column (1) stochastic
def generateStochastic(nR, nC, kind):
    
    a = np.random.rand(nR,nC)
    
    # Row case
    if kind == 0:
        for i in range(nR):
            elements_sum = 0
            for j in range(nC):
                elements_sum += a[i,j]
            for j in range(nC):
                a[i,j] /= elements_sum
    
    # Column case            
    elif kind == 1:
        for i in range(nC):
            elements_sum = 0
            for j in range(nR):
                elements_sum += a[j,i]
            for j in range(nR):
                a[j,i] /= elements_sum
      
    # Invalid input            
    else:
        print("Invalid argument value for function 'generateStochastic'. Please inform 0 (row) or 1 (column).")
        return

    return a

# Testing function call    
row_stoch = generateStochastic(2,2,0)
col_stoch = generateStochastic(2,2,1)
print("Row stochastic:\n", row_stoch, "\n")
print("Column stochastic:\n", col_stoch)
