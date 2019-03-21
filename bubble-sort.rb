#!/usr/bin/ruby

def bubble_sort (array)
  swapped = true 
  while swapped
    swapped = false
    (array.length - 1).times do |i|
      if array[i] > array[i + 1] 
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
  end
end

def bubble_sort_by(array)
swapped = true
while swapped
swapped = false
(array.length - 1).times do |i|
if yield(array[i], array[i + 1]) > 0
array[i], array[i + 1] = array[i + 1], array[i]
swapped = true
end
end
end
end



# tests


a = ["hi","hello","hey", "lkjsdf'", "lkjsdklfjsldjfklsjdlfjslkdf", "klfsdjklfjskldjflkjskldfklsjdklfj"]
b = [1, 234,4324 ,992, 2345234,9875982739]
bubble_sort_by(a) do |left,right|
  left.length - right.length
end


p a


bubble_sort(b)
p b