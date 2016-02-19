require_relative './bubblesort'
describe Bubblesort do

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

  it 'should swap numbers [7,9,1,6,2,4,3,8,5] to be in ascending order [1,2,3,4,5,6,7,8,9]' do
	 bubblesort = Bubblesort.new
	 result = bubblesort.cycle_sort([7,9,1,6,2,4,3,8,5])
	 expect(result).to eq [1,2,3,4,5,6,7,8,9]
  end
end
