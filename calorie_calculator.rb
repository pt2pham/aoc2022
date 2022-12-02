class CalorieCalculator
  class << self
    def top_calories(n, elves)
      elves.map(&:calorie_total).sort.last(n)
    end
  end
end
