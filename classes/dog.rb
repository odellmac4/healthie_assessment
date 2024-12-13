class Dog
  def initialize
    @sound = "bark"
  end
  
  def eat(food)
    if invalid_dog_food?(food)
      puts "Not a valid dog food"
    elsif !dog_likes_food?(food)
      puts @sound
    else
      3.times{puts @sound}
    end
  end
  
  def dog_likes_food?(food)
    food.is_a?(CatFood) || food.is_a?(Chicken) || food.is_a?(DogFood) || food.is_a?(HumanFood)
  end

  def invalid_dog_food?(food)
    food.is_a?(Dog) || food.is_a?(Cat)
  end
end