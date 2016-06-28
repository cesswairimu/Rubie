school = { "Simon" => "here", "Jeanie" => "here" }
names = ["Simon", "Felix", "Jeanie", "Terrence"]
names.each do |name|
  if school[name]
    puts "#{name} is present"
  else
    puts "#{name} is absent"
  end
end

