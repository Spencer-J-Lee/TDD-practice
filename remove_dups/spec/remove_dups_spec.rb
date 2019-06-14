require 'rspec'
require 'remove_dups'
# Remove dups
# Array has a uniq method that removes duplicates from an array. 
# It returns the unique elements in the order in which they first appeared:

# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# Write your own version of this method called my_uniq; it should take in an Array and return a new array.

describe 'my_uniq' do
    subject(:array) { [1,2,1,3,3] }

    it "should remove duplicate elements from an array" do
        expect(my_uniq(array)).to eq([1,2,3])
    end
end