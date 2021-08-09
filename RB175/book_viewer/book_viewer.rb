require 'tilt/erubis'
require 'sinatra'
require 'sinatra/reloader'

before do
  @contents = File.readlines('data/toc.txt')
end

helpers do
  def in_paragraphs(text)
    text.split("\n\n").each_with_index.map do |line, index|
      "<p id=paragraph#{index}>#{line}</p>"
    end.join
  end
end

not_found do
  redirect '/'
end

get '/' do
  @title = 'The Adventures of Sherlock Holmes'

  erb :home
end

get '/chapters/:number' do
  number = params[:number].to_i
  chapter_name = @contents[number - 1]

  redirect '/' unless (1..@contents.size).cover? number

  @title = "Chapter #{number}: #{chapter_name}"
  @chapter = File.read("data/chp#{number}.txt")

  erb :chapter
end

# Creating a method to iterate over the list of chapters in the table of contents.
# Calls the block for each chapter, passing that chapter's number, name, and
# contents.
def each_chapter
  # Use each_with_index to iterate through the @contents array and use the index to identify the chapter number.
  @contents.each_with_index do |name, index|
    number = index + 1 # add 1 to the index because index starts at 0
    contents = File.read("data/chp#{number}.txt") # assign contents to the output of File.read
    yield number, name, contents # yield the parameters defined to block for further processing
  end
end

# This method returns an Array of Hashes representing chapters that match the
# specified query. Each Hash contain values for its :name and :number keys.
def chapters_matching(query)
  results = [] # define empty array to store hashes

  # guard clause to return an empty array if query is empty or nil
  return results unless query

  each_chapter do |number, name, contents| # Iterates through each chapter and checks for query
    matches = {}
    contents.split("\n\n").each_with_index do |paragraph, index|
      matches[index] = paragraph if paragraph.include?(query)
    end
    results << { number: number, name: name, paragraphs: matches } if matches.any?
  end

  results
end

get '/search' do
  @results = chapters_matching(params[:query])
  erb :search
end
