def to_zero(start)
  puts start
  to_zero(start - 1) if start > 0
end

to_zero(10)
to_zero(20)
to_zero(- 3)

