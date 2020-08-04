require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    
    else
      return false
    end

  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
    return true
    else
      return false
    end

  end

  # def count_sentences
  #   self.split(" ").count
  #  #binding.pry
  #  if self.sentence? || self.question? || self.exclamation?
  #    
  #    binding.pry
  #  end
   
   def count_sentenceslk
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end

end