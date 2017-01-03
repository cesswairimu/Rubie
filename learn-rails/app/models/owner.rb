class Owner < ApplicationRecord
  def name
    name = "Malach Salama"
  end
def birthdate
  birthdate = Date.new(1994, 3, 9)
end
def countdown
  Rails.logger.debug "DEBUG: Entering the owner's countdown method"
  today = Date.today
  birthday = Date.new(today.year, birthdate.month, birthdate.day)
  if birthday > today
    countdown = (birthday - today).to_i
  else
    countdown = (birthday.next_year - today).to_i
  end
end

end
