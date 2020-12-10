# TODO: Write documentation for `StringUtility`
require "./stringUtility"

module Main
  # Given a word, search all possible dictionary based word using a strategy.

  print "Enter WORD \n"
  word = gets.not_nil!

  dictionary = ["WORK", "KING", "ROW", "RING", "KNOW", "OK"]

  stringUtility = StringUtility.new

  matchs = stringUtility.findAllPossibleContainedWords(dictionary, word)

  puts "English valid words included in dictionary: #{matchs.join(" ")}"
end
