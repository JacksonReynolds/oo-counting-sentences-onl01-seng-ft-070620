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
    split_sentence = self.split(/[?!\.]/)
    split_sentence.each_with_index do |str, index|
      if str.length == 0
        split_sentence.delete_at(index)
      end #if
    end# do

    #   binding.pry
    split_sentence.length
  end
end
