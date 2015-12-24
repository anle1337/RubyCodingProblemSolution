# Given few numbers, you need to print out the digits that are not being used.

# Example:

# unused_digits(12, 34, 56, 78) # "09"
# unused_digits(2015, 8, 26) # "3479"
# Note:

# Result string should be sorted
# The test case won't pass Integer with leading zero


#first attempt! 114ms to solve
def unused_digits(*a)
  numbers = [*a].join.split("")
  digits_left = (0..9).to_a

  digits_left.length.times do |num|
    if numbers.include?(num.to_s) == true
      digits_left.delete(num)
    end
  end

  return digits_left.join

end

#second attempt! 60ms to solve. DOUBLE THE SPEED BABY
def unused_digits(*args)
  numbers = *args.join.split("")
  digits = (0..9).to_a.map(&:to_s)
  
  (digits - numbers).join
  
end


(unused_digits(12, 34, 56, 78)
puts "returns '09'"

(unused_digits(2015, 8, 26)
puts "returns '3479'"

