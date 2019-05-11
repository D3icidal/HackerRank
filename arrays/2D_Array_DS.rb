# Function Description
#
# Complete the function hourglassSum in the editor below. It should return an integer, the maximum hourglass sum in the array.
#
# hourglassSum has the following parameter(s):
#
# arr: an array of integers

##Pseudo
#Input:
#[[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 0, 2, 4, 4, 0], [0, 0, 0, 2, 0, 0], [0, 0, 1, 2, 4, 0]]
# AKA
    # 1 1 1 0 0 0
    # 0 1 0 0 0 0
    # 1 1 1 0 0 0
    # 0 0 2 4 4 0
    # 0 0 0 2 0 0
    # 0 0 1 2 4 0
#output: 19
#
#(Hardcoded pseudo assuming 6x6 never changes)
# ANSWER VAR: hourglasses = {}
# row = 0, col = 0
#   while row > 0 && row < 3
#     4.times
# =>    new_hourglass = []
#       new_hourglass.add(input[row][col])
#       new_hourglass.add(input[row][col+1])
#       new_hourglass.add(input[row][col+2])

#       new_hourglass.add(input[row+1][col+1])

# =>    new_hourglass.add(input[row+2][col])
#       new_hourglass.add(input[row+2][col+1])
#       new_hourglass.add(input[row+2][col+2])
#       hourglasses << {new_hourglass.sum, new_hourglass}
# =>    col ++
#
# =>   row ++
#
def hourglassSum(arr)
  hourglasses = {}
  row = 0
  col = 0
  4.times do #first 4 rows
    col = 0 #start col from top left of hourglass
    4.times do #4 hourglasses per row
        new_hourglass = []

        new_hourglass.add(input[row][col])
        new_hourglass.add(input[row][col+1])
        new_hourglass.add(input[row][col+2])

        new_hourglass.add(input[row+1][col+1]) #hourglass cinch / middle

        new_hourglass.add(input[row+2][col])
        new_hourglass.add(input[row+2][col+1])
        new_hourglass.add(input[row+2][col+2])

        hourglasses.add( {new_hourglass.sum => new_hourglass} )
        p new_hourglass
        col += 1
      end
    row += 1 #start hourglass at next row
  end
p hourglasses
end
