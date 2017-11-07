def is_isogram(string)
  #your code here
  string = string.downcase
  ('a'..'z').none?{|letter| string.count(letter) > 1}
end
