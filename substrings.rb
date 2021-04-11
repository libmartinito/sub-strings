def substrings(word, dictionary)
  substring_hash = Hash.new
  i = 0
  while i <= dictionary.length - 1 do
    if word.downcase.include?(dictionary[i])
      dict_word_length = dictionary[i].length
      k = 0
      included_count = 0
      while k <= word.length - dict_word_length do
        included_count += 1 if word[0 + k, dict_word_length].downcase == dictionary[i]
        k += 1
      end
      substring_hash[dictionary[i]] = included_count
    end
    i += 1
  end
  puts substring_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy, partner, sit down! How's it going?", dictionary)