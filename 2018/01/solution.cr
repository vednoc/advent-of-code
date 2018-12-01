# 01

input = File.read("input.txt")
array = input.split.map(&.to_i)

# Solution for the part one.
puts "Solution to the first part is: #{array.sum}"

# Solution for the part two.
curr = 0
seen = Set{curr}

array.cycle.each do |freq|
  curr += freq
  if seen.includes?(curr)
    puts "Solution to the second part is: #{curr}"
    exit
  end
  # puts curr
  seen.add(curr)
end
