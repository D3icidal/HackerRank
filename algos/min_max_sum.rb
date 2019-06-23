# Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.
# Sample Input
#
# 1 2 3 4 5
# Sample Output
#
# 10 14


input = [1, 2, 3, 4, 5]

  #first method:
  min =  arr.sort.select.with_index { |el, index| index < 4 }.sum
  max =  arr.sort.select.with_index { |el, index| index > 0 }.sum
  puts "#{min} #{max}"

  #second method
