require 'pry'
require_relative './app/models/user'
require_relative './app/models/animal'
require_relative './app/models/shelter'


vlad = User.new("Vlad", 21, 1234)
jeff = User.new("Jeff", 21, 1234)
jenn = User.new("Jennifer", 21, 1234, "Jenn")
# jennifer = User.new("Jennifer", 21, 1234, "Jenny")

bob = Animal.new("snake", "Bob", "hiss", jenn)
coco = Animal.new("dog", "Coco", "bark bark", jeff)
momo = Animal.new("flying lemur", "momo", "slkdfjlsk", jenn)
sophie = Animal.new("husky", "sophie", "woof woof", jeff)



# jenn.adopt_animal(bob)

#shelters
metro_zoo = Shelter.new("Metro Zoo")
humane = Shelter.new("Humane Society")


#animals in shelters
max = Animal.new("brown bear", "Max", "Roar", nil, metro_zoo)
tina = Animal.new("dog", "Tina", "bark bark", nil, humane)
rachel = Animal.new("dog", "Rachel", "woof woof", nil, humane)
aaron = Animal.new("aardvark", "Aaron", "lick", nil, metro_zoo)
elron = Animal.new("giraffe", "Elron", "honk", nil, metro_zoo)







binding.pry