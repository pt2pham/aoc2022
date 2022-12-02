class Elf
  def initialize(calories: [])
    @calories = calories
  end

  def calorie_total
    @calories.sum
  end
end