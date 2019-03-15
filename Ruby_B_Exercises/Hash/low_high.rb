numbers = {
  high:   100,
  medium: 50,
  low:    10
}

p low_numbers = numbers.select {|k,v| v < 25}
