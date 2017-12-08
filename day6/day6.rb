input = [11, 11, 13, 7, 0, 15, 5, 5, 4, 4, 1, 1, 7, 1, 15, 11]

def distribute(arr)
  i = arr.index(arr.max)
  pot = arr[i]
  arr[i] = 0
  pot.times do
    i += 1
    if arr[i] == nil
      i = 0
    end
    arr[i] += 1
  end
  return arr
end

def crack_door(arr, permutations={})
  cycles = 0
  target = nil
  until permutations.has_key?(arr.to_s)
    permutations[arr.to_s] = cycles
    arr = distribute(arr)
    cycles += 1
  end
  cycles
end

input2 = [1, 14, 13, 13, 11, 11, 9, 9, 7, 7, 5, 5, 3, 2, 1, 0]

def crack_second_door(arr)
  target = arr.to_s
  arr = distribute(arr)
  cycles = 1
  until arr.to_s == target
    arr = distribute(arr)
    cycles += 1
  end
  return cycles
end

p crack_door(input)
p crack_second_door(input2)