require "./spec_helper"
require "spec"
require "../src/stringUtility"

describe "StringUtility" do
  it "givenWordWithConsecutiveCharsAtStart_shouldMatch" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["WORK"], "WORKING")
    matchs.size.should eq 1
  end
  it "givenWordWithConsecutiveCharsAtEnd_shouldMatch" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["ING"], "WORKING")
    matchs.size.should eq 1
  end
  it "givenWordWithNonConsecutiveChars_shouldMatch" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["KNOW"], "WORKING")
    matchs.size.should eq 1
  end
  it "givenWordNoLettersMatchs_shouldNotMatch" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["FOO"], "WORKING")
    matchs.size.should eq 0
  end

  it "Should return all dictionary based matchs words" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["WORK", "KING", "ROW", "RING", "KNOW", "OK"], "WORKING")
    matchs.size.should eq 6
  end

  it "Should return all dictionary based matchs words but no that doesn't match" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["KINGKONG", "WORK"], "WORKING")
    matchs.size.should eq 1
  end
end
