require './classes/Dog'
require './classes/Cat'
require './classes/cat_food'
require './classes/dog_food'
require './classes/Chicken'
require './classes/human_food'
require './classes/Lemons'
require './classes/Drink'

#animals
cat = Cat.new
dog = Dog.new

#food
popeyes = Chicken.new
kibble = DogFood.new
tuna = CatFood.new
fries = HumanFood.new
cat_sip = Drink.new("milk")
lemons = Lemons.new

#cat likes
puts "Cat Likes:"
cat.eat(tuna)
cat.eat(popeyes)
cat.eat(cat_sip)

#dog likes
puts "Dog Likes:"
dog.eat(kibble)
dog.eat(tuna)
dog.eat(popeyes)
dog.eat(fries)

#cat dislikes
puts "Cat Dislikes:"
cat.eat(kibble)
cat.eat(fries)
cat.eat(lemons)

#dog dislikes
puts "Dog Dislikes:"
dog.eat(lemons)

#invalid food
puts "Invalid Food:"
dog.eat(dog)
dog.eat(cat)
cat.eat(dog)
cat.eat(cat)