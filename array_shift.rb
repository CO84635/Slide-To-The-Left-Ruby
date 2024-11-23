def array_shift(arr, shifts)
  return arr if arr.empty?
  shifts = shifts % arr.length
  shifts.times do
    first_element = arr.shift
    arr.push(first_element)
  end
end