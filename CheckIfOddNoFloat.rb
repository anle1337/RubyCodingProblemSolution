# Description:

# Create a function that checks if a number is odd.

# Expect negative and decimal numbers too. For negative numbers, return true if its absolute value is odd. For decimal numbers, return true only if the number is equal to its integer part and the integer part is odd.

# Examples

Example:
is_odd(2)--> false
is_odd(5)--> true
is_odd(4)--> false
is_odd(-17)--> true
is_odd(-7.0)--> true
is_odd(-7.1)--> false
is_odd(4.23)--> false
is_odd(5.0)--> true
is_odd(5.23)--> false


# My correct answer:
def is_odd(n)
	n % 2 == 1 ? true : false
end

