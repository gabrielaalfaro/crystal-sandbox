## My first crystal sandbox utility string

### How it works

This component is a string based dictionary utility, which in his first version has the ability to find all of the Dictionary based words in a given unordered String.

Based on a permutation like algorithm it finds all possible permutations of a given word in all its different lengths. For example, if you are given the word WORKING, you can easily find WORK and KING, but ROW, RING and KNOW are also in there. It returns all possible combinations, as well all the english valid words.

Assumptions

Utility doesn't have access to the dictionary whole content, just a method isEnglishWord that return if it's contained into the dictionary.
Matcher uses a permutation like algorithm which its complexity time is exponential.
Matcher doesn't have a max complexity limitation, so as more length more time consuming.

## Run Unit Tests

crystal spec

## Run Sample Command Line

crystal src/main.cr

## Contributors

- [Gabriela Alfaro](https://github.com/your-github-user) - creator and maintainer
