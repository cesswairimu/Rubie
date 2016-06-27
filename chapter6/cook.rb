def carosel
 ingredients =  yield
 puts "Preheat the oven to 365 degrees"
 puts "Place the #{ingredients} in a dish"
puts "Bake for 20 minutes"

end
 carosel do
   "brocolli, chicken and rice"
 end
 carosel do 
   "noodles, celery and tuna"
 end
