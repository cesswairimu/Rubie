class   WordSplitter
  attr_accessor :string
  def each
    string.split(" ").each do |word|
yield word
    end
  end
end
plitter = WordSplitter.new
plitter.string = (" five six seven eight")
plitter.each do |word|
puts word
end

