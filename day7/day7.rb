f = File.open("input.txt")

data = f.readlines().map do |l|
  l.rstrip().gsub(",","").split(" ")
end

next_data = []

data.each do |e|
  if e.length > 2
    next_data.push(e)
  end
end

# p next_data

unique_values = []

next_data.each do |i|
  unique_values << i[0]
end

# p unique_values
all_values = []

next_data.each do |a|
  a.each do |e|
    if !e.include?("(") && !e.include?(">")
      all_values.push(e)
    end
  end
end


# p all_values

hash_data = {}

unique_values.each do |v|
  if !hash_data[v]
    hash_data[v] = 1 
  else
    hash_data[v] += 1
  end
end

p hash_data

# next_data.each do |n|
#   if n[5]
#     hash_data[n[0]] = [n[3], n[4], n[5]]
#   elsif n[4]
#     hash_data[n[0]] = [n[3], n[4]]
#   else
#     hash_data[n[0]] = n[3]
#   end
# end

# p hash_data

# hash_data.each do |k,v|
#   v.each do |i|
#     if !hash_data.has_key?(i)
#     puts i
#     end
#   end
# end


# holders = []
# holdees = []
# next_data.each do |j|
#   holders << j[0]
#   holdees << j[3]
#   holdees << j[4]
#   if j[5]
#     holdees << j[5]
#   end
# end

# p holders

# holders.each do |h|
#   if
#     holdees.include?(h)
#   else
#     puts h
#   end
# end