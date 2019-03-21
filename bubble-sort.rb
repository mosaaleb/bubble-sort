def bubble_sort (array)
    n = array.length
    i = 0
    while i < n
        j = 0
        while j < n - 1
            if array[j] > array[j+1] 
                array[j], array[j+1] = array[j+1], array[j]
            end
            j += 1
        end
        i += 1
    end
    return array
end


a = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 ]

bubble_sort(a)
p a
