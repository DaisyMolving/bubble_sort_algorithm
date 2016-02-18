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

  # it 'should return true if array is sorted' do
	 # bubblesort = Bubblesort.new
	 # result = bubblesort.sorted([1,2,3,7,8])
	 # expect(result).to eq true
  # end

  # it 'should return false if array is not sorted' do
	 # bubblesort = Bubblesort.new
	 # result = bubblesort.sorted([6,3,1,4,7])
	 # expect(result).to eq false
  # end

  it 'should swap numbers in array [5,3] to be in ascending order' do
	 bubblesort = Bubblesort.new
	 result = bubblesort.swap!([5,3])
	 expect(result).to eq [3,5]
  end

  it 'should swap numbers in array [7,2] to be in ascending order' do
	 bubblesort = Bubblesort.new
	 result = bubblesort.swap!([7,2])
	 expect(result).to eq [2,7]
  end

  it 'should swap numbers in array if not in ascending order' do
	 bubblesort = Bubblesort.new
	 result = bubblesort.order([7,2])
	 expect(result).to eq [2,7]
  end
end
