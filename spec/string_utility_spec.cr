require "./spec_helper"
require "spec"
require "../src/string_utility"

describe "StringUtility" do
  it "Given Nil dictionary should raise an Exception" do
    begin
      matchs = StringUtility.new.find_all_possible_contained_words([] of String, "working")
    rescue ex
      ex.to_s.should eq "dictionary cannot be empty"
    end
  end
  it "Given a word with consecutive chars at the beginning should match" do
    matchs = StringUtility.new.find_all_possible_contained_words(["work"], "working")
    matchs.size.should eq 1
  end
  it "Given a word with consecutive chars at the end should match" do
    matchs = StringUtility.new.find_all_possible_contained_words(["ing"], "working")
    matchs.size.should eq 1
  end
  it "Given a word with non consecutive chars should match" do
    matchs = StringUtility.new.find_all_possible_contained_words(["know"], "working")
    matchs.size.should eq 1
  end
  it "Given a word with no letters matchs should not match" do
    matchs = StringUtility.new.find_all_possible_contained_words(["foo"], "working")
    matchs.size.should eq 0
  end

  it "Should return all dictionary based matchs words" do
    matchs = StringUtility.new.find_all_possible_contained_words(["work", "king", "row", "ring", "know", "ok"], "working")
    matchs.size.should eq 6
  end

  it "Should return all dictionary based matchs words but no that doesn't match" do
    matchs = StringUtility.new.find_all_possible_contained_words(["kingkong", "work"], "working")
    matchs.size.should eq 1
  end
end
