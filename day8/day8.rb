f = File.open("input.txt")

data = f.readlines().map do |l|
  l.rstrip().gsub(",","").split(" ")
end

# p data



instructions = {}

data.each do |l|
  if !instructions[l[0]]
    instructions[l[0]] = 0
  end
end

p instructions

p instructions.length
p data.length