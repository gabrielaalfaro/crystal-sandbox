# TODO: Write documentation for `StringUtility`
require "./stringUtility"

module Main
  # Given a word, search all possible dictionary based word using a strategy.

  print "[English Words Finder]\n\n"

  dictionaryContent = File.read("./src/resources/englishDictionary.txt")

  dictionary = dictionaryContent.split("\n")

  print "English Dictionary: #{dictionary.size} words loaded \n"

  print "Enter the word to search all possible char combinations contained in an english dictionary \n"

  word = gets.not_nil!

  matchs = StringUtility.new.findAllPossibleContainedWords(dictionary, word)

  puts "Found #{matchs.size} valid words contained in dictionary.\n #{matchs}"
end
