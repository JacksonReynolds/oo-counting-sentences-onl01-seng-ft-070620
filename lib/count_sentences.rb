require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    binding.pry
    split_sentence = self.split('.')
    split_sentence.each_with_index do |str, index|
      if str.include?("?")
        split_sentence[index] = str.split('?')
      end #do
    split_sentence.length
  end
end
