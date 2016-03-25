# Description:

# Haskell has some useful functions for dealing with lists:

# $ ghci
# GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
# λ head [1,2,3,4,5]
# 1
# λ tail [1,2,3,4,5]
# [2,3,4,5]
# λ init [1,2,3,4,5]
# [1,2,3,4]
# λ last [1,2,3,4,5]
# 5
# Your job is to implement these functions in your given language. Make sure it doesn't edit the array; that would cause problems! Here's a cheat sheet:

# | HEAD | <----------- TAIL ------------> |
# [  1,  2,  3,  4,  5,  6,  7,  8,  9,  10]
# | <----------- INIT ------------> | LAST |

# head [x] = x
# tail [x] = []
# init [x] = []
# last [x] = x
# Here's how I expect the functions to be called in your language:

# head [1,2,3,4,5] => 1
# tail [1,2,3,4,5] => [2,3,4,5]
# Most tests consist of 100 randomly generated arrays, each with four tests, one for each operation. There are 400 tests overall. No empty arrays will be given. Haskell has QuickCheck tests

# My answer and best answer:
def head(array)
  array.first
end

def tail(array)
  array.slice(1..-1)
end

def init(array)
  array.slice(0..-2)
end

def last(array)
  array.last
end




# Test cases

def randArray
  res = [(51*rand).floor]
  while rand < 0.85
    res << (51*rand).floor()
  end
  res
end

100.times do |n|
  subject = randArray
  Test.describe("Test number #{n+1}: #{subject}") do
    Test.assert_equals head(subject), subject[0], "Head failed."
    Test.assert_equals tail(subject), subject.last(subject.length-1), "Tail failed."
    Test.assert_equals init(subject), subject.length == 1 ? [] : subject[0..(subject.length-2)], "Init failed."
    Test.assert_equals last(subject), subject[subject.length-1], "Last failed."
  end
end
