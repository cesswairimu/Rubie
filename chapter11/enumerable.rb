
class   WordSplitter

  attr_accessor :string

  include Enumerable


  def each
    string.split(" ").each do |word|
yield word
    end
  end
end
