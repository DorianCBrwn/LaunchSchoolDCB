def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

#rolling_buffer1 uses << which modifies the original array whereas
#rolling_buffer2 uses + (#concat) which is adding to arrays to create a 3rd new array
#leaving the original input_array unmodified

