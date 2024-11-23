require 'test/unit'
require_relative 'array_shift'

class ArrayShiftTest < Test::Unit::TestCase
  def test_array_shift_one
    arr = [1, 2, 3, 4, 5]
    array_shift(arr, 1)
    assert_equal [2, 3, 4, 5, 1], arr
  end

  def test_array_shift_multiple_times
    arr = [1, 2, 3, 4, 5]
    array_shift(arr, 2)
    assert_equal [3, 4, 5, 1, 2], arr
  end

  def test_array_shift_no_change
    arr = [1, 2, 3]
    array_shift(arr, 3)
    assert_equal [1, 2, 3], arr
  end

  def test_array_shift_large_shifts
    arr = [1, 2, 3, 4, 5]
    array_shift(arr, 6)
    assert_equal [2, 3, 4, 5, 1], arr
  end

  def test_single_element_array
    arr = [1]
    array_shift(arr, 1)
    assert_equal [1], arr
  end

  def test_empty_array
    arr = []
    array_shift(arr, 3)
    assert_equal [], arr
  end

  def test_array_shifting_larger_than_the_array
    arr = [1, 2, 3]
    array_shift(arr, 5)
    assert_equal [3, 1, 2], arr
  end
end
