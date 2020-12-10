require "./spec_helper"
require "spec"
require "../src/stringUtility"

describe "StringUtility" do
  it "givenNilDictionary_shouldRaiseException" do
    begin
      matchs = StringUtility.new.findAllPossibleContainedWords([] of String, "working")
    rescue ex
      ex.to_s.should eq "dictionary cannot be empty"
    end
  end
  it "givenWordWithConsecutiveCharsAtStart_shouldMatch" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["work"], "working")
    matchs.size.should eq 1
  end
  it "givenWordWithConsecutiveCharsAtEnd_shouldMatch" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["ing"], "working")
    matchs.size.should eq 1
  end
  it "givenWordWithNonConsecutiveChars_shouldMatch" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["know"], "working")
    matchs.size.should eq 1
  end
  it "givenWordNoLettersMatchs_shouldNotMatch" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["foo"], "working")
    matchs.size.should eq 0
  end

  it "Should return all dictionary based matchs words" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["work", "king", "row", "ring", "know", "ok"], "working")
    matchs.size.should eq 6
  end

  it "Should return all dictionary based matchs words but no that doesn't match" do
    matchs = StringUtility.new.findAllPossibleContainedWords(["kingkong", "work"], "working")
    matchs.size.should eq 1
  end
end
