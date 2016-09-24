# "*" splat makes all the arguments in the test an array. then we set
# numbers as the variable for that array
def add(*numbers)
	# we set sum to equal 0
	sum = 0
	# numbers is the object and each is the method
	# telling it to do .each will go through every number in the 
	# now defined array (defined by the splat)
	# |number| will be the variable given to each element in the array
	numbers.each do |number|
		# now we set sum for the next go around to what it currently is
		# plus the number (variable)
		sum = sum + number
		end
		sum
end