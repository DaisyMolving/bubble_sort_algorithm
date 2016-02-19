require_relative './bubblesort'
describe Bubblesort do


  it 'finds the length of the array [1,2,3]' do
	 bubblesort = Bubblesort.new
	 result = bubblesort.find_length([1,2,3])
	 expect(result).to eq 3
  end

  it 'finds the length of array [1,7,8,9,6]' do
	 bubblesort = Bubblesort.new
	 result = bubblesort.find_length([1,7,8,9,6])
	 expect(result).to eq 5
  end

  it 'should swap numbers in array if not in ascending order' do
	 bubblesort = Bubblesort.new
	 result = bubblesort.order([7,2])
	 expect(result).to eq [2,7]
  end

  it 'should not swap numbers in array if they are already in ascending order' do
	 bubblesort = Bubblesort.new
	 result = bubblesort.order([2,3])
	 expect(result).to eq [2,3]
  end

  it 'should swap numbers [2,1,3] to be in ascending order of [1,2,3]' do
	 bubblesort = Bubblesort.new
	 result = bubblesort.order([2,1,3])
	 expect(result).to eq [1,2,3]
  end

  it 'should swap numbers [1,3,2] to be in ascending order of [1,2,3]' do
	 bubblesort = Bubblesort.new
	 result = bubblesort.order([1,3,2])
	 expect(result).to eq [1,2,3]
  end

  it 'should swap numbers [3,2,1] to be in ascending order of [1,2,3]' do
	 bubblesort = Bubblesort.new
	 result = bubblesort.cycle_sort([3,2,1])
	 expect(result).to eq [1,2,3]
  end
end
