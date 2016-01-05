# Description:

# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.

# The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

# Examples:

 weirdcase( "String" )#=> returns "StRiNg"
 weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"



# my correct answer:

def weirdcase(string)
  string = string.split(" ")
  
  string.each do |word|
    word.chars.each_with_index do |letter, index| 
      if index % 2 == 0
        word[index] =  word[index].upcase
      end
    end
  end
  string.join(" ")
end




#the best answer
#gsub is such a great tool.
def weirdcase string
  string.gsub(/(\w{1,2})/) { |s| $1.capitalize }
end