class StringUtility
  def findAllPossibleContainedWords(dictionary : Array, word : String)
    matchs = Set(String).new

    permutations = findPermutations(word)

    permutations.each do |value|
      if dictionary.includes? value
        matchs << value
      end
    end

    return matchs
  end

  def findPermutations(word : String)
    wordCharArray = word.upcase.chars
    return findPermutations(wordCharArray, "", Set(Int32).new)
  end

  def findPermutations(wordCharArray : Array(Char), current : String, currentIndexes : Set(Int32))
    result = Set(String).new

    i = 0
    while i < wordCharArray.size
      if !currentIndexes.includes? i
        nextIndexes = Set(Int32).new.concat(currentIndexes)

        m = current + wordCharArray[i]
        result << m
        nextIndexes << i

        result.concat(findPermutations(wordCharArray, m, nextIndexes))
      end
      i += 1
    end
    return result
  end

  def getComplexity(word : String)
    wordSize = word.size
    complexity = 0
    i = wordSize

    while i >= 1
      complexity += factorial(wordSize) / factorial(wordSize - i)
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
