# 02

input = File.read_lines("input.txt")

# Solution for the part one.
two, three = 0, 0

input.each do |line|
  found_two, found_three = false, false

  line.each_char do |char|
    if line.count(char) == 3
      three += 1 unless found_three
      found_three = true
    elsif line.count(char) == 2
      two += 1 unless found_two
      found_two = true
    end
  end
end

puts "Solution to the first part is: #{two * three}"

# Solution for the part two.
input.each_with_index do |id1, index|
  input[index + 1..-1].each do |id2|
    diff, comm = 0, ""

    id1.chars.each_with_index do |c1, char|
      c2 = id2[char]
      if c1 != c2
        diff += 1
      else
        comm += c1
      end
    end

    puts "Solution to the second part is: #{comm}" if diff == 1
  end
end
