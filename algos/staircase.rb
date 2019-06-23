# Consider a staircase of size :
#
#    #
#   ##
#  ###
# ####
# Observe that its base and height are both equal to , and the image is drawn using # symbols and spaces. The last line is not preceded by any spaces.
#
# Write a program that prints a staircase of size .
#
# Function Description
#
# Complete the staircase function in the editor below. It should print a staircase as described above.
#
# staircase has the following parameter(s):
#
# n: an integer
# Input Format
#
# A single integer, , denoting the size of the staircase.
#
# Constraints
#
#  .
#
# Output Format
#
# Print a staircase of size  using # symbols and spaces.
#
# Note: The last line must have  spaces in it.
#
# Sample Input
#
# 6
# Sample Output
#
#      #
#     ##
#    ###
#   ####
#  #####
# ######


#Pseudo:
# set a range for 1 .. input
#   for each element in the range (1 . . input)
# =>  print out string with input - current element + 1 number of spaces followed by
        # current elements nubmer of hashtags
input = 6
(1..input.to_i).each do |level|
  line =  " " * (input - level)
  line += "#" * level
  puts line
end
