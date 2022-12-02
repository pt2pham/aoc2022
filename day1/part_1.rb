require_relative "../elf_parser"
require_relative "../calorie_calculator"

elves = ElfParser.new("day1/elf_calories_sample.txt").parse

puts CalorieCalculator.top_calories(1, elves).first
