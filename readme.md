# MATH 300 Final Project
#### Ali Hamza | Maham Shoaib | Hassan Naseem


Tasks
=====

Task 1
------

In this section we made a function
$task1(steps,start,leftprob,stopprob)$. The function takes steps using
an algorithm that makes use of an algorithm that can be explained using
the following diagram.

![alt text](https://github.com/hurryingauto3/ProbabilityProject/blob/master/Report/task1prob.png)

Let us assume

-   The red region is the probability of not moving

-   The green region is the probability of moving left

-   The blue region is the probability of moving right

The algorithm simply checks if the randomly generated numbers
$0\leq n \leq 1$ lies within a certain region and makes movement
accordingly.\
\
Running the algorithm on multiple steps the following graphs were
obtained. To find the expected average distance at a certain step the we
ran multiple simulations of the code and calculated an average step at
each step. This rendered the following random walk that is made up of
average steps. This is then an expected random walk.

Task 2
------

In task 2 we took a similar approach as task 1. The only difference was
that we simulated a random walk for two particles on the same graph.
However, the same issues of randomness arose and it was impossible to
predict the average step at which the two particles met.\
\
Similar, to task 1 we simulated multiple random walks of the two
particles and calculated the average step at which the particles were
meeting for a certain number of steps and distance. The data of each
intercepting step was recorded into an array and the average was
calculated to find an expected intercepting step.\
\
We also plotted the average random walks of the the two particles and
the result of that was as follows: It is worth noting, however, that
this graph is also subject to change based on different parameters.
However, it seems to be stable on multiple executions. There is some
deviation though.

Task 3
------

Task 4
------

Task 5
------

Task 7
------

Task 8
------

Bibliography
============
1.  <https://www.mathworks.com/help/matlab/math/multidimensional-arrays.html>
2.  <https://www.mit.edu/~kardar/teaching/projects/chemotaxis(AndreaSchmidt)/random.html>

Extras
======

1.  Simulation video of random walk in 2D:
    <https://youtu.be/99tQ8SE9IXw>
