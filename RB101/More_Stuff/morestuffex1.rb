words = ["laboratory","experiment","Pans Labyrinth","elaborate","polar bear"]

def find_lab(arr)
arr.each do |word|
    if word =~ /lab/
      puts word
    end
  end
end

find_lab(words)

