require "byebug"

def windowed_max_range(array, window_size)
  i = 0
  j = window_size - 1
  diff = 0
  # debugger
  until j >= array.length
    max_el = array[i..j].max
    min_el = array[i..j].min
    num = max_el - min_el
    diff = num if num > diff
    i += 1
    j += 1
  end
  diff
end

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8