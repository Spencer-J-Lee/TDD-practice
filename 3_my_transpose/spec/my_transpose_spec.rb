require 'rspec'
require 'my_transpose'

# My Transpose
# To represent a matrix, or two-dimensional grid of numbers, we can write an array containing arrays which represent rows:

# rows = [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ]

# row1 = rows[0]
# row2 = rows[1]
# row3 = rows[2]
# We could equivalently have stored the matrix as an array of columns:

# cols = [
#     [0, 3, 6],
#     [1, 4, 7],
#     [2, 5, 8]
#   ]
# Write a method, my_transpose, which will convert between the row-oriented and column-oriented representations. 
# You may assume square matrices for simplicity's sake. 
# Usage will look like the following:

# my_transpose([
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ])
#  # => [[0, 3, 6],
#  #    [1, 4, 7],
#  #    [2, 5, 8]]

describe 'my_transpose' do
    subject(:array) { 
            [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
        ]
    }

    it "returns a 2D-array in which rows and columns are swapped" do
        transposed_array = [
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
        ]

        expect(my_transpose(array)).to eq(transposed_array)
    end

    it "raises an error if argument given is not a 2D-array" do
        error_message = "my_transpose must be given a 2D-array"
        
        expect { my_transpose( "string" ) }.to raise_error(error_message)
        expect { my_transpose( 42 ) }.to raise_error(error_message)
        expect { my_transpose( { A:0 } ) }.to raise_error(error_message)
        expect { my_transpose( [1,[2],3] ) }.to raise_error(error_message)
    end
end