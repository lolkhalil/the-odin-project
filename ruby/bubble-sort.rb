def bubble_sort(array)
  array.each do # Loop the maximum amount of times it needs
    array.each_with_index do |num, index|
      if (index != 0)
        previous_num = array[index - 1]
        if (previous_num > num)
          # Swap the numbers
          array[index - 1] = num
          array[index] = previous_num
        end
      end
    end
  end

  return array
end

print bubble_sort([4,3,78,2,0,2])