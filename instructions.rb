
My Transpose
To represent a matrix, or two-dimensional grid of numbers, we can write an array containing arrays which represent rows:

rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

row1 = rows[0]
row2 = rows[1]
row3 = rows[2]
We could equivalently have stored the matrix as an array of columns:

cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]
Write a method, my_transpose, which will convert between the row-oriented and column-oriented representations. You may assume square matrices for simplicity's sake. Usage will look like the following:

my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ])
 # => [[0, 3, 6],
 #    [1, 4, 7],
 #    [2, 5, 8]]
Stock Picker
Write a method that takes an array of stock prices (prices on days 0, 1, ...), and outputs the most profitable pair of days on which to first buy the stock and then sell the stock. Remember, you can't sell stock before you buy it!

Towers of Hanoi
Write a Towers of Hanoi game.

Keep three arrays, which represents the piles of discs. Pick a representation of the discs to store in the arrays; maybe just a number representing their size. Don't worry too much about making the user interface pretty.

In a loop, prompt the user (using gets) and ask what pile to select a disc from, and where to put it.

After each move, check to see if they have succeeded in moving all the discs, to the final pile. If so, they win!

Note: don't worry about testing the UI. Testing console I/O is tricky (don't bother checking gets or puts). Focus on:

#move
#won?
