class Bottles
  def verse(verseCount)
    "#{count_bottles(verseCount).capitalize} of beer on the wall, #{count_bottles(verseCount)} of beer.\n#{construct_final_verse(verseCount)}\n"
  end

  def count_bottles(verseCount)
    case verseCount
    when 0 
      "no more bottles"
    when 1
      "#{verseCount} bottle"
    else
      "#{verseCount} bottles"
    end
  end

  def construct_final_verse(verseCount)
    case verseCount
    when 0 
      "Go to the store and buy some more, #{count_bottles(99)} of beer on the wall."
    when 1
      "Take it down and pass it around, #{count_bottles(verseCount - 1)} of beer on the wall."
    else
      "Take one down and pass it around, #{count_bottles(verseCount - 1)} of beer on the wall."
    end
  end

  def verses(startVerse, endVerse)
    verseList = ""
    (startVerse.downto(endVerse)).each do |currentVerse|
      verseList = (verseList.length > 0) ? "#{verseList}\n#{verse(currentVerse)}" : "#{verse(currentVerse)}"
    end
    return verseList
  end

  def song()
    verses(99, 0)
  end
end