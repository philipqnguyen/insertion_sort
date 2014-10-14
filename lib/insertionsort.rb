# Insertion sort
class InsertionSort
  def sort(unsorted_array)
    @unsorted = unsorted_array

    @unsorted.each_with_index do |num, index|
      next if index == 0

      iterate_down_until_proper_position(num, index)
    end
    @unsorted
  end

  private

  def iterate_down_until_proper_position(num, index, i = 1)
    while i <= index
      reached_front = index - i == 0
      if num > @unsorted[index - i] && !reached_front
        insert_into_new_position(i, num, index)
        break
      elsif reached_front
        insert_into_front_of_array(i, num, index)
      end
      i += 1
    end
  end

  def insert_into_new_position(i, num, index)
    new_position = index - i + 1

    @unsorted.delete_at(index)
    @unsorted.insert(new_position, num)
  end

  def insert_into_front_of_array(i, num, index)
    front = index - i

    @unsorted.delete_at(index)
    @unsorted.insert(front, num)
  end
end
