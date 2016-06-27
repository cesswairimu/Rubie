class Bird
def make_up_name
@name = "Sandy "
end
def talk
puts "#{@name} says Chirp Chirp"
end
def move(destination)
puts "#{@name} Flies to the #{destination}."
end
end
class Dog
def make_up_name
@name = "Fluffy"
end
def talk
puts "#{@name} says Bark!"
end
def move (destination)
puts " #{@name} Runs to the #{destination}"
end 
end
class Cat
def make_up_name
@name = "Killer"
end
def talk
puts "#{@name} says Meaow"
end
def move(destination)
puts "#{@name} Running to the #{destination}"
end
end
bird = Bird.new
dog = Dog.new
#dog_name = "Champ"
#dog.talk(dog_name, "fence")
#cat = Cat.new
#cat_name = "Fluffy"
#cat.talk(cat_name)
#cat.move(cat_name, "litter box")
#bird.move("tree")
#bird.talk
#cat.move("house")


