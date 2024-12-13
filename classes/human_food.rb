class HumanFood
  attr_reader :is_milk
  def initialize(is_milk = false)
    @is_milk = is_milk
  end
end