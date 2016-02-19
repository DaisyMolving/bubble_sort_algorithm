class Bubblesort
  
  def find_length(array_to_sort)
	bubblength = array_to_sort.length
	bubblength
  end

  def cycle_sort(array_to_sort)
	 cycle_times = 0
	 while cycle_times < (array_to_sort.length - 1)
		order(array_to_sort)
		cycle_times +=1
	 end
	 array_to_sort
  end

  def order(array_to_sort)
	 current_index = 0
	 unsorted = array_to_sort.length
	 while current_index < unsorted
		next_index = current_index + 1
		unless  array_to_sort.at(current_index) == array_to_sort[-1]	
		  if array_to_sort.at(current_index) > array_to_sort.at(next_index)
		  array_to_sort.insert(current_index, array_to_sort.delete_at(current_index + 1))
		  end
		end
		current_index += 1
	 end
	 unsorted -=1
	 array_to_sort
  end
  
end
