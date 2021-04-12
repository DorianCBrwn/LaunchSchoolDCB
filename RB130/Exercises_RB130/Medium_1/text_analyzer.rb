class TextAnalyzer
  def process
    lines = File.open("sample.txt") { |file| file.read}
    yield lines

  end
end

analyzer = TextAnalyzer.new
analyzer.process{ |lines| puts lines.scan(/\w\b/).size.to_s + " words"}
analyzer.process{ |lines| puts lines.scan(/^[A-Z]\w+ /).size.to_s + " paragraphs"}
analyzer.process{ |lines| puts ( 1 + lines.scan(/\n/).size).to_s + " lines"}
