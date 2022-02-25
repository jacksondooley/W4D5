




def bad_two_sum?(arr, target_sum)
    arr.each.with_index do |el1, i|
      arr.each.with_index do |el2, j|
        return true if j > i && el1 + el2 == target_sum
      end
    end
    false
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr, target_sum)
  arr = arr.sort
  i = 0
  j = arr.length - 1
  while i != j
    case arr[i] + arr[j] <=> target_sum
    when 0
      return true
    when 1
      j -= 1
    when -1
      i += 1
    end
  end
  false
end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false

def linear_two_sum?(arr, target)
  hash = Hash.new(false)
  arr.each do |el|
    i = target - el
    return true if hash[i] == true
    hash[el] = true
  end
  
  false
  
end

arr = [0, 1, 5, 7]
# p linear_two_sum?(arr, 6) # => should be true
# p linear_two_sum?(arr, 10) # => should be false