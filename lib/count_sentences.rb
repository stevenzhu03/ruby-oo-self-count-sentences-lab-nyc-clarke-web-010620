require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    #https://stackoverflow.com/questions/26146558/using-more-than-one-delimiter-for-split-method-in-ruby
    self.split(/[.?!]/).reject {|string| string.size < 2}.length

  end

end
