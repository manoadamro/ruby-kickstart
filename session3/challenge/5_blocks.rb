# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access(array2d, &block)

  if array2d.length * array2d[0].length == 0 then return end

  i = 0

  x = 0
  x_dir = 1

  y = 0
  y_dir = 0

  t = 0
  while true do

    if t == (array2d.length * array2d[0].length) then break end

    block.call array2d[y][x]

    if x_dir > 0 then
       x += 1
       if x >= array2d.length - i  then

         x = array2d.length - i - 1
         y += 1

         x_dir = 0
         y_dir = 1
       end

    elsif x_dir < 0 then
       x -= 1
       if x < i then
         x = i
         y -= 1

         x_dir = 0
         y_dir = -1
       end

    elsif y_dir > 0 then
       y += 1
       if y >= array2d[0].length - i then

         y = array2d[0].length - i - 1
         x -= 1

         x_dir = -1
         y_dir = 0
       end

    elsif  y_dir < 0 then
       y -= 1
       if y <= i  then

         i += 1

         y = i
         x += 1

         x_dir = 1
         y_dir = 0
       end
    end
    t += 1
  end
end
