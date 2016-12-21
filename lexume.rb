require 'lexeme'
lexer = Lexeme.define do
  token :STOP => /^\.$/
  token :COMMA => /^,$/
  token :QUES => /^ \? $/
  token :EXCLAIM =>  /^ \!$/
  token :QOUT => /^\"$/
  token :APOS => /^'$/
  # token :WORD => /^[ \w\_ ]+$/
end
tokens = lexer.analyze do
  from_string 'ello My name is Bunch . You killed my cat. Prepare to die'
end
tokens.each do |t|
  puts "#{ t.name }: #{t.value}"
end


