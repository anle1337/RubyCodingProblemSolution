
# Description:

# Pirates have notorious difficulty with enunciating. They tend to blur all the letters together and scream at people.

# At long last, we need a way to unscramble what these pirates are saying.

# Write a function that will accept a jumble of letters as well as a dictionary, and output a list of words that the pirate might have meant.

# For example:

# grabscrab "ortsp", ["sport", "parrot", "ports", "matey"]
# Should return ["sport", "ports"].

# Good luck!

# The kata tests are the same as the sample fixtures.

# Return an empty array if there are no matches.

# For best results, return matches in the same order as in the dictionary.


# Test cases
Test.expect(grabscrab("trisf", ["first"]) == ["first"], "Should have found 'first'")
Test.expect(grabscrab("oob", ["bob", "baobab"]) == [], "Should not have found anything")
Test.expect(grabscrab("ainstuomn", ["mountains", "hills", "mesa"]) == ["mountains"], "Should have found 'mountains'")
Test.expect(grabscrab("oolp", ["donkey", "pool", "horse", "loop"]) == ["pool", "loop"], "Should have found 'pool' and 'loop'")
Test.expect(grabscrab("ortsp", ["sport", "parrot", "ports", "matey"]) == ["sport", "ports"], "Should have found 'sport' and 'ports'")
Test.expect(grabscrab("ourf", ["one","two","three"]) == [], "Should not have found anything")



# My Answer

def grabscrab anagram, dictionary
output = []
  dictionary.each do |x|
    if dictionary.include?(x)
      if x.split("").sort.join == anagram.split("").sort.join
        output << x
      end
    end
  end
  output
end


# Best Answer

def grabscrab anagram, dictionary
  dictionary.select{|w| anagram.chars.sort == w.chars.sort}
end