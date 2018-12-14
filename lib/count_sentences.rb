require 'pry'

class String
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    checkArr = self.split(/\.|\?|!/).reject {|string| string.empty?}
    return checkArr.length
  end
end

# String.count "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
