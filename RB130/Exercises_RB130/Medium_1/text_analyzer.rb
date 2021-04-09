class TextAnalyzer
  def process
    lines = File.open("sample.txt") { |file| file.read}
    yield lines

  end
end

analyzer = TextAnalyzer.new
analyzer.process{ |lines| p lines}