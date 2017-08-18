def order(toppings)
	
	order_array = []

	#Creates an empty array to hold objects later called
	
	#Shuffles the names to create random picks, 
	#takes the results and slices out 2, 
	#puts them in an array of (2)
	#creating the pairs

	order_array.each do |value|
		#interates over each element in the array of names
		
			order_array << value.flatten!
			#if the number of names is 2, print the pair
		
	

	
	end
	
	order_array.map!{ |val1,val2,val3| "#{val1} " "#{val2} " "#{val3}"}.join"<br>"
	# map is kind of like each, runs through a block for each element. map! changes the original array.It "maps" a function to each item into an array.
	order_array
end