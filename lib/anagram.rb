require('pry')

# 5 Rules to consider

# 1. Check if two words are anagrams if they are they return "These words are anagrams"
# 2. Account for possibility of cases (still are anagrams)
# 3. To check if the inputs are words ex: pkm is not a word
# 4. If they are anagrams it should check to see if it is antigram
# 5. Account for two sentences being compared as anagrams or antigrams (spaces/punctuation do not count(remove))


class Anagrams
  attr_reader :word1, :word2
  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end
  
  def compare_length?()
    if @word1.length == @word2.length
      true
    else
      false
    end
  end
  
  def check_vowels?()
    vowels = ['a','e','i','o','u','y'] 
    @word1.each do |letter|   
      if vowels.include?(letter)
        return true
      end
    end
    return false    
  end
  
  def anagram_checker?()
    if check_vowels?() == false
      "There is no real words detected!"
    elsif compare_length == true && check_vowels == true && @word1 == @word2
    "Results is Anagram!"
    elsif is_antigram?() == true
    "Results is Antigram!"
    else
    "There is no Anagram detected!"
    end
  end

  def anti_gram_checker? 
    @word1.each do |letter|      
      if @word2.include?(letter)
        return false
      end
    end
    return true
  end

end



