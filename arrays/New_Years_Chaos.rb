# Function Description
#
# Complete the function minimumBribes in the editor below. It must print an integer representing the minimum number of bribes necessary, or Too chaotic if the line configuration is not possible.
#
# minimumBribes has the following parameter(s):
#
# q: an array of integers

##Pseudo
# bribes = 0
# create a sorted array for comparison
# take last non correct value, and return new array with correct location (up to 2 spots).
# take last index of that person minus new index of person and += to bribes count
# move up to next position and repeat
# if it doesn't match up at the end, print to chaotic
# otherwise print bribes



def minimumBribes(q)
  bribes = 0
  test_line = q.sort
  puts "original: #{q}"

  index = q.length
  index_needed = 0
  index_diff = 0
  while index >0
    index_needed = q.find_index( index )
    puts "\nstart of while, index: #{index}, index_needed: #{index_needed} "
    index_diff = (index - index_needed)
    if index_diff == 0
      puts "No change needed"
    elsif index_diff <= 2
      test_line.delete_at( test_line.find_index(index) )
      test_line.insert( index_needed - 1, index )
      bribes +=  ( index - index_needed ) - 1
    else
      test_line.delete_at( test_line.find_index(index) )
      test_line.insert( index - 3, index )
      bribes += 2
    end
    puts "test_line now: #{test_line}"
    index -= 1
    puts "bribes: #{bribes}"
  end
  test_line == q ? bribes : "Too Chaotic"
end

# [1, 2, 3, 4, 5]
# [2, 1, 5, 3, 4]
q = [2, 1, 5, 3, 4] # => 3
p minimumBribes(q)
