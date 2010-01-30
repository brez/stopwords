require 'spec/spec_helper'

describe Stopwords do
  describe '.is?' do
    it "should return true if a given token is stopword" do
      Stopwords.is?('and').should be(true)
    end
    it "should return false if a given token is not stopword" do
      Stopwords.is?('red').should be(false)    
    end
  end
  describe '.valid?' do
    it "should return true if a given token is a valid word and not a stopword" do
      Stopwords.valid?('vector').should be(true)
    end
    it "should return true if a given token is has got extra characters" do
      Stopwords.valid?('@#2-+~}v').should be(false)    
    end
    it "should return false if a given token is stopword" do
      Stopwords.valid?('and').should be(false)
    end
    it "should return false if a given token is just nonsense" do
      Stopwords.valid?('@#2-+~}v').should be(false)    
    end
    it "should return false if a given token is blank" do
      Stopwords.valid?('').should be(false)    
    end
  end
end