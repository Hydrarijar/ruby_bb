def substrings(str, dict)

	storage = Hash.new

	dict.each do |entry|
		occurence = str.downcase.scan(entry.downcase).count
		storage[entry] = occurence if occurence > 0
	end
	storage
end

dictionary = %w{below down go going horn how howdy it i low own part partner sit}
puts substrings("Howdy partner, sit down! How's it going?", dictionary)