require './atm.rb'
require './prompter.rb'
require './exceptions.rb'
require './customer.rb'

atm = Atm.new(Prompter.new)
atm.start   
