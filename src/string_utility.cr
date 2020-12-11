class StringUtility
  def find_all_possible_contained_words(dictionary : Set(String), word : String)
    if dictionary.size == 0
      raise "dictionary cannot be empty"
    end

    a = word.chars
    permutations = Set(String).new
    i = 1

    while (i < a.size)
      a.each_permutation(i) { |p| permutations << p.join }
      i += 1
    end

    return permutations & dictionary
  end
end
