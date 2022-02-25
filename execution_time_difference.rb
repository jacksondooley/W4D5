#Phase
def my_min(list)
  min = list.first
  list.each do |el1|
    list.each do |el2|
      if min > el1
        min = el1
      end
    end
  end
  min
end





#Phase 2
def my_min_2(list)
  
  min = list.first
  list.each do |el|
    min = el if el < min
  end

  return min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_2(list)




# def largest_contiguous_subsum(list)
#   arr = [] if array was just sum = 0

#   (0...list.length).each do |idx1|
#     (idx1...list.length).each do |idx2|
#       arr << list[idx1..idx2]
#     end
#   end
#   sum = 0
  
#   arr.each do |el|
#     sum = el.sum if el.sum > sum
#   end
#   sum
# end
require "byebug"
def largest_contiguous_subsum(list)
  sum = list.first
  largest_sum = list.first

  i = 0
  j = list.length - 1

  while i < list.length - 1
    # debugger
    sum = list[i..j].sum
    largest_sum = sum if sum > largest_sum
    if i == j
      j = list.length
      i += 1
    end
    j -= 1
  end
  largest_sum  
end

list = [-5, -1, -3]  
p largest_contiguous_subsum(list) # => 8
    # possible sub-sums
    # [5]           # => 5
    # [5, 3]        # => 8 --> we want this one
    # [5, 3, -7]    # => 1 
    # [3]           # => 3
    # [3, -7]       # => -4
    # [-7]          # => -7