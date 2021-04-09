birds = %w(raven finch hawk eagle)


def group_items(arr)
  yield(raptors)
end

group_items(birds) { |_, _, *raptors| puts items}