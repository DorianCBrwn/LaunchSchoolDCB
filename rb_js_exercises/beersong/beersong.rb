class BeerSong
  def self.verse(int)
    verse = ""
    case
      when int > 2
      verse << "#{int} bottles of beer on the wall, #{int} bottles of beer.\n" \
                "Take one down and pass it around, #{int - 1} bottles of beer on the wall.\n"
      when int  ==  2
     verse <<  "#{int} bottles of beer on the wall, #{int} bottles of beer.\n" \
          "Take one down and pass it around, #{int -1} bottle of beer on the wall.\n"
      when int  ==  1
      verse << "#{int} bottle of beer on the wall, #{int} bottle of beer.\n" \
                 "Take it down and pass it around, no more bottles of beer on the wall.\n"
     else
      verse = "No more bottles of beer on the wall, no more bottles of beer.\n" \
                  "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end

    verse
  end

  def self.verses(st_point, end_point)
    verses = []
    st_point.downto(end_point) do |num|
     verses << BeerSong.verse(num)
    end
    verses.join("\n")
  end

  def self.lyrics
   BeerSong.verses(99, 0)
  end
end
