class Bubblesort
  
  def find_length(array_to_sort)
	bubblength = array_to_sort.length
	bubblength
  end

  # def sorted(array_to_sort)
	 # truly_sorted = array_to_sort.each do |num|
		# order = ((num <=> num.next)  == -1)
		# puts order
		# if order
		  # true
		# else
		  # false
		# end
	# end
	# truly_sorted
  # end

  def swap!(array_to_sort)
	 array_to_sort[0], array_to_sort[1] = array_to_sort[1], array_to_sort[0]
	 array_to_sort
  end

  def order(array_to_sort)
	 swap!(array_to_sort)
  end
end
