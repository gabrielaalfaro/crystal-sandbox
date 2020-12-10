class StringUtility
  def find_all_possible_contained_words(dictionary : Array, word : String)
    if dictionary.size == 0
      raise "dictionary cannot be empty"
    end

    matchs = Set(String).new

    permutations = find_permutations(word)

    permutations.each do |value|
      if dictionary.includes? value
        matchs << value
      end
    end

    return matchs
  end

  def find_permutations(word : String)
    if !word
      raise "word cannot be nil"
    end

    word_char_array = word.downcase.chars
    return find_permutations(word_char_array, "", Set(Int32).new)
  end

  def find_permutations(word_char_array : Array(Char), current : String, current_indexes : Set(Int32))
    result = Set(String).new

    i = 0
    while i < word_char_array.size
      if !current_indexes.includes? i
        next_indexes = Set(Int32).new.concat(current_indexes)

        m = current + word_char_array[i]
        result << m
        next_indexes << i

        result.concat(find_permutations(word_char_array, m, next_indexes))
      end
      i += 1
    end
    return result
  end

  def getComplexity(word : String)
    word_size = word.size
    complexity = 0
    i = word_size

    while i >= 1
      complexity += factorial(word_size) / factorial(word_size - i)
      i -= 1
    end
    return complexity
  end

  def factorial(size)
    if size < 1
      return 1
    elsif size == 1
      return 1
    else
      return size * (factorial(size - 1))
    end
  end
end
