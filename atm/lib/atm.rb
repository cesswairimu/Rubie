class Atm

  Filepath = 'db.txt'
  Separator = ';'
  Balance    = 0
  Withdraw = 1
  Logout = 2

  def initialize(prompter)
    @all_customers = []
    @last_four = []
    @current_customer = nil
    @cli_prompter = prompter
    get_all_customer_details
  end

  def start
    last_4_digits = @cli_prompter.prompt('Enter the last four digits of your card')
    raise RunTimeError, 'The digits must be 4 characters long' unless last_4_digits.length.eql? 4
    current_customer = get_customer_details_by_last_four_digits.to_i
    begin

      is_password_valid(current_customer, @prompter.prompt('Please provide your password ?'))

      puts '', 'Authenticating you via our secure server'

      login_error_count = 0
      @all_customers = nil

      hydrate_data(current_customer)

      puts 'You have been authenticated', ''

    rescue InvalidPasswordError => e

      raise LoginThrottleError, e.message + '. Atm would exit now' if login_error_count >= 3

      login_error_count += 1

      retry
    end

    bootstrap_atm_commands # if we get here, we golden.
  end

def is_password_valid(customer,password)
  raise InvalidPasswordError, 'Please input the right password' unless customer[3].strip.eql? password
end

def process_command(command)
  case command.to_i
  when Balance
    puts "Available Balance -> #{@current_customer.available_balance}", ''

  when Withdraw
    puts ''
    amount_to_withdraw = @prompter.prompt('How much would you like to withdraw ?').to_f

    if @current_customer.can_withdraw?(amount_to_withdraw)
      puts 'Authenticating your withdrawal'
      @current_customer.withdraw!(amount_to_withdraw)
      puts 'Done'
    else
      puts 'Insufficient funds!', ''
    end

  when Logout
    puts 'Unauthenticating you via our secure sever', 'You have been successfully logged out'

    exit

  else
    puts '', 'Unknown Command', ''
  end

  bootstrap_atm_commands
end


def bootstrap_atm_commands
  print_instructions
  process_command(@prompter.prompt('How may we help you today ? Please Enter a command'))
end

def hydrate_data(customer)
  @current_customer = Customer.new(customer[2].strip, customer[4].strip.to_f, customer[5].strip.to_f)
end

def print_instructions
  puts "Hello, #{@current_customer.full_name}", ''

  commands = [
    [Balance, 'check your balance'], [Withdraw, 'withdraw some cash'], [Logout, 'logout']

  ]

  commands.each { |key, value| puts "Press #{key} to #{value}."  }

  puts ''
end  



  def get_customer_details_by_last_four_digits(number)
    found = []
    @all_customers.each do |customer|
      next unless customer.slice(0,4).to_i.eql? number
      found = customer.split Separator
    end
    raise UnknownCardError, 'Invalid debit card' if found.empty?
    found
  end

  protected
  def get_all_customer_details
    File.open(Filepath, 'r').each do |line|
      next unless line.match(/\w+/)
      @all_customers.push(line.strip)
    end
  end
end
