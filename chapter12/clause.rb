class PorridgeError< StandardError
end
class BeddingError < StandardError
end

def eat
  raise "too hot"
end

def sleep
  raise "too soft"
end


begin

  sleep
rescue BeddingError => error
  puts "The bed is #{error.message}"
rescue PorridgeError => error
  puts "The porridge is #{error.message}"
end

