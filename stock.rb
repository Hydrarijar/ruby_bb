def stock_picker(arr)
	
	greatest_diff = 0
	floor = 0
	
	arr.each do |main|
		ceiling = floor
		arr.drop(floor).each do |compare|
			if greatest_diff < compare - main
				greatest_diff = compare - main
				storage = []
				storage.push(floor, ceiling)
				puts "Storage: #{storage} // Greatest diff: #{greatest_diff}"
			end
			ceiling += 1
		end
		floor += 1
	end
	return storage
end

nums = [17,3,6,9,15,8,6,1,10]

puts "#{stock_picker(nums)}"