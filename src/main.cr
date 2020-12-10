# TODO: Write documentation for `StringUtility`
require "./string_utility"

module Main
  # Given a word, search all possible dictionary based word using a strategy.

  print "[English Words Finder]\n\n"

  dictionary_content = File.read("./src/resources/custom_english_dictionary.txt")

  dictionary = dictionary_content.split("\n")

  print "English Dictionary: #{dictionary.size} words loaded \n"

  print "Enter the word to search all possible char combinations contained in an english dictionary \n"

  word = gets.not_nil!

  matchs = StringUtility.new.find_all_possible_contained_words(dictionary, word)

  puts "Found #{matchs.size} valid words contained in dictionary.\n #{matchs}"
end
