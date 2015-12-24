# You are going to be given a word. Your job will be to make sure that each character in that word has the exact same number of occurrences.
# You will return true if it is valid, or false if it is not.

# For example:

# "abcabc" is a valid word because 'a' appears twice, 'b' appears twice, and'c' appears twice.
# "abcabcd" is NOT a valid word because 'a' appears twice, 'b' appears twice, 'c' appears twice, but 'd' only appears once!
# "123abc!" is a valid word because all of the characters only appear once in the word.

# For this kata, capitals are considered the same as lowercase letters. Therefore: 'A' == 'a' .

# Input

# A string (no spaces) containing [a-z],[A-Z],[0-9] and common symbols. The length will be 0 < string < 100.

# Output

# true if the word is a valid word, or false if the word is not valid.

def validate_word(word)
  split_string = word.downcase.split("")
  letter_present = Hash.new(0)
  
  split_string.each {|letter| letter_present[letter] += 1}
  
  letter_present.values.each_with_index do |count, i |
    if i == (letter_present.length-1)
      return true
    elsif letter_present.values[i] != letter_present.values[i+1]
      return false
    end
  end
end


  	

puts validate_word("abcabc")
puts "should return true"

puts validate_word("Abcabc")
puts "should return true"

puts validate_word("AbcabcC")
puts "should return false"

puts validate_word("AbcCBa")
puts "should return true"

puts validate_word("pippi")
puts "should return false"

puts validate_word("?!?!?!")
puts "should return true"

puts validate_word("abc123")
puts "should return true"

puts validate_word("abcabcd")
puts "should return false"

puts validate_word("abc!abc!")
puts "should return true"

puts validate_word("abc:abc")
puts "should return false"



#best method is this:
#i wish i knew about the .count() method! Ruby makes things so easy, I'm still living in C syntax days.
def validate_word(word)
  count = 0
  s = word.downcase
  s.each_char do |c|
    if count == 0
      count = s.count(c)
    elsif count != s.count(c)
      return false
    end
  end
  true
end
