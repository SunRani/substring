def substrings(word, dictionary)
  words = Hash.new
  strings = word.split(/[' ,]/)
  strings = strings.map { | word | word.downcase }
  dictionary = dictionary.map { | word | word.downcase}
   dictionary.select do | substring |
    strings.select do | sub |
      if sub.include?(substring)
      words[substring] =+ 1
      p words[substring]
      end
    end
    
    
  end 
  puts words
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)