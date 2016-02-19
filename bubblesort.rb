class Bubblesort
  
  def find_length(array_to_sort)
	bubblength = array_to_sort.length
	bubblength
  end


  # def order(array_to_sort)
	 # array_to_sort.each_cons(2) do |num, next_num|  
		# if num > next_num
			# current_order = num, next_num 
			# current_order.reverse!
		# end
		# current_order
	 # end
	 # array_to_sort.insert(0, current_order).pop(2)
	 # array_to_sort.flatten!
  # end

  def order(array_to_sort)
	 current_index = 0
	 while current_index < array_to_sort.length
		next_index = current_index + 1
		unless  array_to_sort.at(current_index) == array_to_sort[-1]	
		  if array_to_sort.at(current_index) > array_to_sort.at(next_index)
		  array_to_sort.insert(current_index, array_to_sort.delete_at(current_index + 1))
		  end
		end
		current_index += 1
	 end
	 array_to_sort
  end
end
