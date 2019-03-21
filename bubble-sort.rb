#!/usr/bin/ruby

def bubble_sort(array)
    swapped = true
    while swapped
        j = 0
        swapped = false
        while j < array.length - 1
            if array[j] > array[j + 1]
                array[j], array[j + 1] = array[j + 1], array[j]
                swapped = true
            end
            j += 1
        end
    end
end

def bubble_sort_by(array)
    swapped = true
    while swapped
        i = 0
        swapped = false
        while i < array.length - 1
            if yield(array[i], array[i + 1]) > 0
                array[i], array[i + 1] = array[i+1], array[i]
                swapped = true
            end
            i += 1
        end
    end
end