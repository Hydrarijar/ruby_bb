def caesar_cipher(str, shift)
	convert = ""
	str.split('').each do |char|
		char_shift = char.ord - shift
		if (char =~ /\w/ && char != '_' && char.upcase == char)
			if (char_shift < "A".ord)
				convert << ("Z".ord - ("A".ord - char_shift)).chr
			else
				convert << char_shift.chr
			end
		elsif (char =~ /\w/ && char != '_' && char.downcase == char)
			if (char_shift < "a".ord)
				convert << ("z".ord - ("a".ord - char_shift)).chr
			else
				convert << char_shift.chr
			end
		else
			convert << char
		end
	end
	convert
end

done = false
while !done
	puts "Sentence:"
	sent = gets.chomp

	if sent == 'exit'
		done = true
	else	
		puts "Shift:"
		shift = gets.chomp.to_i
		p caesar_cipher(sent, shift)
	end
end
