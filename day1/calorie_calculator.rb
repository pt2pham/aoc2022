require './elf.rb'

DELIMITER = "\n"
elves = []
calories = []

File.open("elf_calories_sample.txt", "r") do |file|
  while (line = file.gets) != nil
    if line == DELIMITER
      elves << Elf.new(calories: calories)
      calories = []
    else
      calories << Integer(line)
    end
  end
end

puts elves.map(&:calorie_total).max
puts elves.map(&:calorie_total).sort.last(3).sum