# Write a function insertDash(num) that will insert dashes ('-') between each two odd numbers in num.
# For example: if num is 454793 the output should be 4547-9-3. Don't count zero as an odd number.


def insert_dash(num)
  string_split = num.to_s.split("")
  
  string_split.each_with_index do |num, i|
    if string_split[i].to_i.odd? == true && string_split[i+1].to_i.odd? == true
      string_split.insert(i+1, "-")
      i+=2
    end 
  end
  return string_split.join
 
end


puts insert_dash(454793)
puts "should return '4547-9-3'"

puts insert_dash(123456)
puts "should return '123456'"

puts insert_dash(1003567)
puts "should return '1003-567'"

puts insert_dash(24680)
puts "should return '24680'"

puts insert_dash(13579)
puts "should return '1-3-5-7-9'"


#Actually, it turns our ruby has a cheating method for solving this problem in 1 tiny line of code
def insert_dash(num)
  num.to_s.gsub(/(?<=[13579])([13579])/, '-\1')
end

