class OvenOffError < StandardError
end

class OvenEmptyError < StandardError
end

class Oven
  attr_accessor :contents
  def power_onn
    puts "Turning..... oven is on"
    @state = "on"
  end
  def power_off
    puts "Turning..... oven is off"
    @state = "off"
  end

  def bake
      unless @state == "on"
        raise OvenOffError, "You need to put the oven on first"
      end
        if @contents == nil
       raise OvenEmptyError, "There are no contents in the oven"
        end
   "goldenbrown  #{ contents }"

  end
end
dinner = ['pie', 'nil', 'rice']
oven = Oven.new
oven.power_off
dinner.each do |item|
  begin
 oven.contents = item
 puts "Serving #{ oven.bake}"
  rescue OvenEmptyError => error
    puts " #{error.message}"
  rescue OvenOffError => error
    puts "#{error.message}"
    oven.power_onn
    retry
  ensure
    oven.power_off
  end
end

  
  
