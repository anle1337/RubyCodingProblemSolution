def count_vowels(string)
	vowels = ["a","e", "i", "o", "u"]
	count = Hash.new(0)

	string.chars.each do |letter|
		if vowels.include?(letter)
			count[letter] +=1
		end
	end
	puts count
end



count_vowels("hello")
puts "should return {'e' => 1}, {'o' => 1}"
count_vowels("fishfillet")
puts "should return {'i' => 2}, {'e' => 1}"
count_vowels("rubyisawesome")
puts "should return {'u' => 1 }, {'i' => 1}, {'a' => 1}, {'e' => 2}, {'o' => 1'}"
