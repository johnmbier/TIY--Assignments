def make_acronym(phrase)
  phrase.split(" ").map{|word| word[0].upcase}.join
  
end
