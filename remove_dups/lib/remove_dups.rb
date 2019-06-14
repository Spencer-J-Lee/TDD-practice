def my_uniq(array)
    uniq_array = []
    array.each { |el| uniq_array << el unless uniq_array.include?(el) }
    uniq_array
end