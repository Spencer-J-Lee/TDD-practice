def two_sum(array)
    raise ArgumentError.new "two_sum must be given an array" unless array.is_a?(Array)

    zero_pairs = []

    array.each_with_index do |num1, idx1|
        array.each_with_index do |num2, idx2|
            zero_pairs << [idx1, idx2] if idx2 > idx1 && (num1 + num2).zero?
        end
    end

    zero_pairs
end