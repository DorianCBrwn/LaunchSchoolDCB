def step(s_point, e_point, step)

  yield()
end
p step(1, 10, 3) { |value| puts "value = #{value}" }