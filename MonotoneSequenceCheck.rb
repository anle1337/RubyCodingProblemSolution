# Story

# Peter lives on a hill, and he always moans about the way to his home. 
# "It's always just up. I never get a rest". 
# But you're pretty sure that at least at one point Peter's altitude doesn't rise, but fall. 
# To get him, you use a nefarious plan: 
# you attach an altimeter to his backpack and you read the data from his way back at the next day.

# Task

# You're given a list of compareable elements:

# heights = [Integers or Floats]
# Your job is to check whether for any x all successors are greater or equal to x.

# is_monotone([1,2,3]) == True
# is_monotone([1,1,2]) == True
# is_monotone([1])     == True
# is_monotone([3,2,1]) == False
# is_monotone([3,2,2]) == False
# If the list is empty, Peter has probably removed your altimeter, so we cannot prove him wrong and he's still right:

# isMonotone([])     == True
# Such a sequence is also called monotone or monotonic sequence, hence the name isMonotone.


#My Correct Answer:
def is_monotone(heights)
  i=0

  if heights.empty? || heights.count == 1
    return true
  end
  
  while i < heights.length-1
    if heights[i] > heights[i+1]
      return false
    else
      return true
    end
    i+=1
  end
end


# TEST
is_monotone(Array(1..11))

is_monotone([5,5,5,5,5,5,5])

is_monotone([])

is_monotone([1])

# The best method is simply:
# O(n) though

def is_monotone(heights)
  heights == heights.sort
end


