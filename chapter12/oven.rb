class Oven
  attr_accessor :contents
  def power_onn
    puts "Turning oven is on"
    @state = "on"
  end
  def power_off
    puts "Turnind oven is off"
    @state = "off"
  end

  def bake
      unless @state == "on"
        raise "You need to put the oven on first"
      end
        if @contents == nil
       raise "There are no contents in the oven"
        end
   "goldenbrown  #{ contents }"

  end
end
dinner = ['pie', 'chicken', 'rice']
oven = Oven.new
oven.power_onn
dinner.each do |item|
  begin
 oven.contents = item
 puts "Serving #{ oven.bake}"
  rescue
    puts "Error: There was nothing in the oven"
  end
end

  
  
