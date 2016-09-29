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
    count = 0
    self_array = self.split(" ")
    self_array.each do |word|
      if word.question? || word.exclamation? || word.sentence?
        count += 1
      end
    end
    count
  end
end

p "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
