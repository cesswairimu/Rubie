class Customer

  attr_accessor :full_name, :available_balance

  def initialize(full_name, available_balance, minimum_balance)
    @full_name = full_name
    @available_balance = available_balance
    @minimum_balance = minimum_balance
  end

  def withdraw!(amount)
    @available_balance -= amount
  end

  def can_withdraw?(amount)
    #some banks have a minimum balance policy. Let's put that in perspective too.
    cannot_withdraw = (@available_balance - amount) > @minimum_balance
    cannot_withdraw ||= amount < @available_balance
  end
end
