require_relative "elf"

class ElfParser
  DELIMITER = "\n"

  def initialize(file)
    @file = file
  end

  def parse
    elves = []
    calories = []

    File.open(file_with_path, "r") do |f|
      while (line = f.gets) != nil
        if line == DELIMITER
          elves << Elf.new(calories: calories)
          calories = []
        else
          calories << Integer(line)
        end
      end
    end

    elves
  end

  private

  def file_with_path
    File.join(File.dirname(__FILE__), @file)
  end
end