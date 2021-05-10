class Robot
  @@used_names = []

  def initialize
    @name = ""
  end

  def name
    if @name.match(/^[A-Z]{2}\d{3}$/)
      return @name
    else
      @name = new_name
      @@used_names << @name
    end
    @name
  end

  def reset
    @@used_names.delete(@name)
    @name = ""
  end

  private

  def generate_name
    letters = ""
    numbers = ""
    2.times{ letters << [*'A'..'Z'].sample }
    3.times{ numbers << [*'0'..'9'].sample }
    name = letters + numbers
    name
  end

  def new_name
    temp_name = ""
    loop do
      temp_name = generate_name
      break unless @@used_names.include?(temp_name)
    end
    temp_name
  end
end