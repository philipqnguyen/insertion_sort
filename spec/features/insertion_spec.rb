require 'spec_helper'
require 'InsertionSort'

describe 'Insertion sort' do
  before do
    @insertion = InsertionSort.new
  end

  it 'should sort an unordered array' do
    sample = [7, 3, 2, 9, 1, 6, 5, 8, 4]

    @insertion.sort(sample).must_equal [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  it 'should sort a completely reversed array' do
    sample = [9, 8, 7, 6, 5, 4, 3, 2, 1]

    @insertion.sort(sample).must_equal [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end
