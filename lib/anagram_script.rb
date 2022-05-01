#!/usr/bin/ruby
require './lib/anagram.rb'

puts ""
puts "Hi how are you?"
puts "Want to play a little game? 1=yes or 2=no"
play = gets.chomp()
if play == "1"
  puts "If you win then you  survive if you lose well then you can make your assumptions."
  puts "Bwahahaha..."
  puts "Okay all jokes aside if manage to make an anagram then you win"
  puts "Enter the first word"
  sentence1 = gets.chomp()
  puts "Okay kid give me another word"
  sentence2 = gets.chomp()
  puts "Okay now you have to let me think"
  puts "..."
  puts "Your results are..."
  answer = Anagrams.new("#{sentence1}","#{sentence2}")
  puts answer.anagram_checker?
else
  puts "you can not click no because if you do then automatically loose....BWAHAHAHHA"
end
