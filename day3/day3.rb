input = 289326

def is_square(num)
  root = Math.sqrt(num)
  if root == root.floor
    return true
  else
    return false
  end
end

def find_corners(num)
  corners = []
  x = 0
  until x > num
    if is_square(x) && x % 2 != 0
      corners.push(x)
    end
    x += 1
  end
  return corners
end

def find_steps(num)
  corners = find_corners(num)
  steps = (num - corners[-1])
end

puts find_steps(input)