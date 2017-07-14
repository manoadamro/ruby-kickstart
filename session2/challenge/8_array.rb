# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false


def got_three?(array)
  (0..array.length-3).each do |i|
    if array[i+1] == array[i] && array[i+2] == array[i] then return true end
  end
  return false
end
