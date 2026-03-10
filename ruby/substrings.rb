def substrings(thing, dict)
  list = Hash.new(0) # Default value of 0 for each new key
  
  thing.split.each do |word|
    dict.each do |string|
      if (word.downcase.include?(string))
        list[string] += 1
      end
    end
  end
  return list
end

dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dict)