class   WordSplitter
  include Enumerable
  attr_accessor :string
  def each
    string.split(" ").each do |word|
yield word
    end
  end
end
plitter = WordSplitter.new
plitter.string = "how do you do"
plitter.each do |word|
puts word
end
p plitter.find_all {|word| word.include? ("d") }
p plitter.reject { |word| word.include?("d") }
p plitter.map { |word| word.reverse }
p plitter.any? { |word| word.include? ("e") }
p plitter.count
p plitter.first
p plitter.sort

