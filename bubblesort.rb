class Bubblesort
  
  def cycle_sort(list)
	 cycle_times = 0
	 while cycle_times < (list.length - 1)
		order(list)
		cycle_times +=1
	 end
	 list 
  end

  def order(list)
	 current_index = 0
	 unsorted = list.length
	 while current_index < unsorted
		next_index = current_index + 1
		unless  list[current_index] == list.last	
		  if list[current_index] > list[next_index]
		  	list.insert(current_index, list.delete_at(next_index))
		  end
		end
		current_index += 1
	 end
	 unsorted -=1
	 list
  end
end
