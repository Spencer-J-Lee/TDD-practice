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

    it "should return the unique elements in the order in which they first appeared" do
        array1 = %w(Y 3 Y Y E T E)
        array2 = [false, true, true, false]

        expect(my_uniq(array1)).to eq(%w(Y 3 E T))
        expect(my_uniq(array2)).to eq([false, true])
    end

    it "should raise an error if argument given is not an array" do
        error_message = "my_uniq must be given an array"
        
        expect { my_uniq( "string" ) }.to raise_error(error_message)
        expect { my_uniq( 42 ) }.to raise_error(error_message)
        expect { my_uniq( { A:0 } ) }.to raise_error(error_message)
    end
end