class ListCommas
  attr_accessor :items
  def join
    if items.length == 1
      return items[0]
    elsif 
      items.length == 2
      return "#{items[0]} and #{items[1]}"
    end
    last_item = "and #{items.last}"
    other_items = items.slice(0,items.length - 1).join( ', ')
    "#{other_items} #{last_item}"
  end
end


two_subjects = ListCommas.new
two_subjects.items = ['my parents are', 'so adorable']
puts "A photo of #{two_subjects.join}"
three_subjects = ListCommas.new
three_subjects.items = ['wierdos are so funny', 'but caring sometimes', 'but they are just crazy']
puts "A photo of the #{three_subjects.join}"
