# input
#   11 2 4
#   4 5 6
#   10 8 -12
#
# output
#   15 because | (11 + 5 - 12) - (10 + 5 + 4) |
#
#

input = [[11,2,4],[4,5,6],[10,8,-12] ]
col_index_addition = 0
primary_diag_sum = 0
secondary_diag_sum = 0
input.each_with_index do | row, row_index |
  print row[row_index].to_s + ", "
  primary_diag_sum += row[row_index]
  puts row[ (row.length - 1) - row_index ]
  secondary_diag_sum += row[ (row.length - 1) - row_index ]
end

puts primary_diag_sum
puts secondary_diag_sum
puts (primary_diag_sum - secondary_diag_sum).abs


 #
 # row_index    [array]       return needed
 #    0         [11,2,4]      2
 #    1         [4,5,6]       1
 #    2         [10,8,-12]    0
