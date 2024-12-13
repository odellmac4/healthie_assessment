class Cat
  def initialize
    @sound = "meow"
  end

  def eat(food)
    if invalid_cat_food?(food)
      puts "Not a valid cat food"
    elsif !cat_likes_food?(food)
      puts @sound
    else
      3.times{puts @sound}
    end
  end
  
  def cat_likes_food?(food)
    food.is_a?(CatFood) || food.is_a?(Chicken) || (food.is_a?(Drink) && food.type == "milk")
  end

  def invalid_cat_food?(food)
    food.is_a?(Dog) || food.is_a?(Cat)
  end
end