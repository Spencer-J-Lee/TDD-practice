def my_transpose(array)
    unless array.is_a?(Array) && array.all? { |el| el.is_a?(Array) }
        raise ArgumentError.new "my_transpose must be given a 2D-array" 
    end

    transposed_array = Array.new(array.length) { Array.new }

    array.each do |subarr|
        subarr.each_with_index do |el, i|
            transposed_array[i] << el
        end
    end
            
    transposed_array     
end