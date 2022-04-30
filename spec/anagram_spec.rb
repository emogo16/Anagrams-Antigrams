require ('pry')
require ('anagram')

describe('Anagrams')do
  describe('Anagrams#intialize')do
    it('Create a new instance of an anagram object')do
      anagram = Anagrams.new("sit", "paw")
      anagram_sentence =Anagrams.new("Hello World!","Goodbye World?")
      expect(anagram.word1).to(eq(["i", "s", "t"]))
      expect(anagram.word2).to(eq(["a", "p", "w"]))
      expect(anagram_sentence.word1).to(eq(["d","e","h","l","l","l","o","o","r","w"]))
      expect(anagram_sentence.word2).to(eq(["b","d","d","e","g","l","o","o","o","r","w","y"]))
    end
  end
  describe('Anagrams#anagram_checker?')do
    it('Returns a messege wether or not it is an anagram')do
      anagram = Anagrams.new("listen","silent")
      not_anagram = Anagrams.new("listen", "hello")
      no_vowels = Anagrams.new("pkm", "fgh")
      expect(anagram.anagram_checker?).to(eq('Results is Anagram!'))
      expect(not_anagram.anagram_checker?).to(eq('There is no Anagram detected!'))
      expect(no_vowels.anagram_checker?).to(eq('There is no real words detected!'))
    end
  end

  describe('Anagrams#anti_gram_checker?')do
    it("Returns a boolean whether or not it is an anti_gram")do
      antigram = Anagrams.new("dad", "mom")
      not_antigram = Anagrams.new("dad", "cat")
      expect(antigram.anti_gram_checker?).to(eq(true))
      expect(not_antigram.anti_gram_checker?).to(eq(false))
    end
  end
end