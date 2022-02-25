def first_anagram?(s1, s2)
  arr = s1.chars.permutation.to_a
  arr.include?(s2.chars)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(s1, s2)
  s1.each_char do |char|
    if s2.chars.include?(char)
      i = s2.chars.find_index(char)
      s2[i] = ""
    end
  end

  s2.chars.empty?
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(s1, s2)
  s1.chars.sort == s2.chars.sort
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(s1, s2)
  hash = Hash.new(0)
  s1.each_char { |char| hash[char] += 1}
  s2.each_char { |char| hash[char] -= 1}
  hash.values.all? { |v| v == 0 }
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true