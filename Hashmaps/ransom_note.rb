# Function Description
#
# Complete the checkMagazine function in the editor below. It must print  if the note can be formed using the magazine, or .
#
# checkMagazine has the following parameters:
#
# magazine: an array of strings, each a word in the magazine
# note: an array of strings, each a word in the ransom note


def checkMagazine(magazine, note)
  note_arr = note.split
  magazine_arr = magazine.split
  p note_arr
  note_arr.each do |word|
    puts "word is: #{word}, magazine include?: #{magazine_arr.include?(word)}"
    if magazine_arr.include?(word)
      magazine_arr.delete(word)
    else
      return "No"
    end
  end
  return "Yes"
end

magazine = "two times three is not four"
note = "two times two is four"
p checkMagazine(magazine, note)

magazine = "give me one grand today night"
note = "give one grand today"
p checkMagazine(magazine, note)

#sample input:
  # two times three is not four
  # two times two is four
#sample output: => no
