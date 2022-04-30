require ('pry')
require ('anagram')

describe('Anagrams')do
  it('Create a new instance of an anagram object')do
    anagram = Anagrams.new("sit", "paw")
    expect(anagram.word1).to(eq("sit"))
    expect(anagram.word2).to(eq("paw"))
  end
  describe('Anagrams#anagram_checker?')do
    it('Returns a boolean wether or not it is an anagram')do
      anagram = Anagrams.new("listen","silent")
      not_anagram = Anagrams.new("listen", "hello")
      expect(anagram.anagram_checker?).to(eq(true))
      expect(not_anagram.anagram_checker?).to(eq(false))
    end
  end

  # describe('Anagrams#anti_gram_checker?')do
  #   it("Returns a boolean whether or not it is an anti_gram")do
  #     antigram = Angrams.new("dad", "mom")
  #     not_antigram = Anagrams.new("dad", "cat")
  #     expect(anti_gram.anti_gram_checker?).to(eq(true))
  #     expect(not_antigram.anti_gram_checker?).to(eq(false))
  #   end
  # end
end