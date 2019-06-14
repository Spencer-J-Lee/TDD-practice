def my_transpose(array)
    transposed_array = Array.new(array.length) { Array.new }

    array.each do |subarr|
        subarr.each_with_index do |el, i|
            transposed_array[i] << el
        end
    end
            
    transposed_array     
end