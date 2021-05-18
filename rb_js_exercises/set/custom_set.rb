class CustomSet
  attr_reader :container
  def initialize(container = [])
    @container = container
  end

  def empty?
    container.empty?
  end

  def contains?(element)
    container.include?(element)
  end

  def subset?(second_set)

    container.each do |item|
     if second_set.contains?(item)
       next
     else
       return false
     end
    end
    true
  end

  def disjoint?(second_set)
    container.each do |item|
      if !second_set.contains?(item)
        next
      else
        return false
      end
    end
    true
  end

  def eql?(second_set)
    return false if self.class != second_set.class

    container.each do |item|
      if second_set.contains?(item)
        next
      else
        return false
      end
    end

    second_set.container.each do |item|
      if container.include?(item)
        next
      else
        return false
      end
    end
    true
  end

  def ==(other_set)
    container == other_set.container
  end


  def add(element)
    container << element unless container.include?(element)
    CustomSet.new(container)
  end

  def intersection(other_set)
    new_array = container.intersection(other_set.container)
    CustomSet.new(new_array)
  end

end
