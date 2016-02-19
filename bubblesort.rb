class Bubblesort
  
  def cycle_sort(list)
	 cycle_times = 0
	 unsorted = list.length
	 while cycle_times < unsorted
		order(list)
		cycle_times +=1
	 	unsorted -= 1
	 end
	 list 
  end

  def order(list)
	 current_index = 0
	 while current_index < list.length
		next_index = current_index + 1
		unless  list[current_index] == list.last	
		  if list[current_index] > list[next_index]
		  	list.insert(current_index, list.delete_at(next_index))
		  end
		end
		current_index += 1
	 end
	 list
  end
end
