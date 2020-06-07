import random 
import numpy as np 
import matplotlib.pyplot as plt 
import math    
# Probability of a to move up or down 
prob_a = [0.05, 0.95]
# Probability of b to move up or down
prob_b = [0.35, 0.65]    
  
# statically defining the starting position of a 
start_a = 2  
position_a = [start_a]

# statically defining the starting position of b
start_b = 8
position_b = [start_b]
  
# creating the random points of a
rr_a = np.random.random(10) 
downp_a = rr_a < prob_a[0] 
upp_a = rr_a > prob_a[1]  

# creating the random points of b
rr_b = np.random.random(10)
downp_b = rr_b < prob_b[0]
upp_b = rr_b > prob_b[1]


for idownp_a, iupp_a in zip(downp_a, upp_a): 

    down = idownp_a and position_a[-1] > 1
    
    up = iupp_a and position_a[-1] < 4
    
    position_a.append(position_a[-1] - down + up) 
    
# print(position_a)


for idownp_b, iupp_b in zip(downp_b, upp_b): 
    
    down = idownp_b and position_b[-1] > 1
    
    up = iupp_b and position_b[-1] < 4
    
    position_b.append(position_b[-1] - down + up) 
    
print(position_b)
  
# # plotting down the graph of the random walk in 1D 
plt.plot(position_a)
plt.plot(position_b) 
plt.show() 



