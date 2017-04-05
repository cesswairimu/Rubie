require_relative './atm.rb'
require_relative './prompter.rb'
require_relative './exceptipns.rb'
require_relative './customer.rb'

atm = Atm.new(Prompter.new)
atm.start   
