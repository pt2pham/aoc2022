require_relative "../elf_parser"
require_relative "../calorie_calculator"

elves = ElfParser.new("sample_data/day_1_calories.txt").parse

puts CalorieCalculator.top_calories(3, elves).sum
