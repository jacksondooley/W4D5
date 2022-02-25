#Phase
def my_min(list)
  min = list.first
  list.each do |el1|
    list.each do |el2|
      if el2 < el1
        min = el1
      end
    end
  end
  min
end


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)

# #Phase 2
# def my_min(list)

#   min = list.first
#   list.
# end