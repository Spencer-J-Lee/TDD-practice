require 'two_sum'
require 'rspec'

# Two sum
# Write a new Array#two_sum method that finds all pairs of positions where the elements at those positions sum to zero.

# NB: ordering matters. We want each of the pairs to be sorted smaller index before bigger index. 
# We want the array of pairs to be sorted "dictionary-wise":

# [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
# [0, 2] before [2, 1] (smaller first elements come first)
# [0, 1] before [0, 2] (then smaller second elements come first)

describe 'two_sum' do
    subject(:nums_array) { [-2, -1, 0, 1, 2]}

    it "should find all pairs of indices where the elements at those indices sum to zero" do
        expect(two_sum(nums_array)).to eq([[0,4], [1,3]])
    end
end