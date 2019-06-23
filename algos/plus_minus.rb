# Given an array of integers, calculate the fractions of its elements that are positive, negative, and are zeros. Print the decimal value of each fraction on a new line.
#
# Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.
#
# For example, given the array  there are  elements, two positive, two negative and one zero. Their ratios would be ,  and . It should be printed as
#
# input
#   -4 3 -9 0 4 1
# output
#   0.500000 (positive)
#   0.333333  negative
#   0.166667  zeros
# 3/6 are postive, 2/6 are negative, 1/6 are zeros

# make hash to hold counts of each catagory: positive, negative, zero
# use a function (select or map) to gather the corrosponding elements and add that new length to the hash counts
# print value of each hash count
#
#
input = [-4,3,-9,0,4,1]
counts = {}
counts["positive"] = input.select{ |e| e > 0 }.length
counts["negative"] = input.select{ |e| e < 0 }.length
counts["zero"] = input.select{ |e| e == 0 }.length

counts.each { |key, value| counts[key] = (value.to_f.round(6) / input.length).round(6)}

p counts
p counts.values
