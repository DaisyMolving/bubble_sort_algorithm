class Bubblesort
  
  def cycle_sort(list)
	 unsorted = list.length
	 while 0 < unsorted
		order(list)
	 	unsorted -= 1
	 end
	 list 
  end

  def order(list)
	 current_index = 0
	 while current_index < list.length
		next_index = current_index + 1
		if list[current_index] != list.last && list[current_index] > list[next_index]
			list.insert(current_index, list.delete_at(next_index))
		end
		current_index += 1
	 end
	 list
  end
end
