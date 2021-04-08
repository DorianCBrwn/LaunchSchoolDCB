def step(s_point, e_point, step)
  i = s_point
  while i < (e_point + step)
    yield(i)
    i += step
  end
  nil
end
p step(1, 10, 3) { |value| puts "value = #{value}" }