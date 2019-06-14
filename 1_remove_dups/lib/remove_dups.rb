def my_uniq(array)
    raise ArgumentError.new "my_uniq must be given an array" unless array.is_a?(Array)

    uniq_array = []
    array.each { |el| uniq_array << el unless uniq_array.include?(el) }
    uniq_array
end