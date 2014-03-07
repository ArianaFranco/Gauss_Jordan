Gauss_Jordan
============
This file contents Gauss_Jordan project information.
The Gauss Jordan method can be used to solve systems of linear equations involving two ormore variables. However, 
the system must be changed to an augmented array.
An Augmented Matrix is used to solve a system of linear equations.
                        a1 x + b1 y + c1 z = d1 
 System of Equations ⎯→ a2 x + b2 y + c2 z = d2 
                        a3 x + b3 y + c3 z = d3
                        
                      [a1 b1 c1 | d1]
 Augmented Matrix ⎯→  [a2 b2 c2 | d2]
                      [a3 b3 c3 | d3]
                      [a4 b4 c4 | d4]

-When given a system of equations, to write in augmented matrix form, the coefficients of each variable must be 
taken and put in a matrix.

-There are three different operations known as Elementary Row Operations used when solving or reducing a matrix, 
using Gauss-Jordan elimination method.
1. Interchanging two rows.
2. Add one row to another row, or multiply one row first and then adding it
to another.
3. Multiplying a row by any constant greater than zero.

Identity Matrix-is the final result obtained when a matrix is reduced. This matrix consists of ones in the diagonal 
starting with the first number.
-The numbers in the last column are the answers to the system of equations.
[1 0 0 | 3]
[0 1 0 | 2]
[0 0 1 | 5]

----Compile the erlang files and test the project----.
This example shows the project commands can be used for obtain a good result.
*Locate the directory of the project in console.

First compile the project in console with "make compile".
$ make compile
erlc -I include/ -o ebin/ gauss.erl
erlc -I include/ -o ebin/ inicia_gauss.erl
erlc -I include/ -o ebin/ proce_gauss.erl
erlc -I include/ -o ebin/ tam_gauss.erl

With "make start" to start the erlang console.
$ make start
erl -pa ebin/
Erlang R16B03-1 (erts-5.10.4) [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Eshell V5.10.4  (abort with ^G)
>

In the erlang console is necessary to use the "gauss" module and use the "main" function to initialize  the 
algorithm made in erlang that resolve the array or systems of linear equations.
It receives a list that represents the array, for example:
For the next systems of linear equations:
[ 3  2 -1  | 3 ]
[ 1 -1  2  | 4 ]
[ 2  3 -1  | 3 ]
The enter of the function must be:
1> gauss:main([[3,2,-1,3],[1,-1,2,4],[2,3,-1,3]]).

And the project return the solution:
Matriz de 3 x 3
[[1,0,0,1],[0,1,0,1],[0,0,1,2]]

or from another point of view.
 [1 0 0 | 1]
 [0 1 0 | 1]
 [0 0 1 | 2]
 
If array is not a quadratic array it show a error message.
2> gauss:main([[3,2,-1,3,-2],[1,-1,2,4],[2,3,-1,3]]).
Error
ok


And finally "make clear" to delete all the .beam files created by the compilation. 
