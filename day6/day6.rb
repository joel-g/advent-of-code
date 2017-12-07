perms = []
input = [11, 11, 13, 7, 0, 15, 5, 5, 4, 4, 1, 1, 7, 1, 15, 11]


def distribute(arr)
  i = arr.index(arr.max)
  pot = arr[i]
  arr[i] = 0
  pot.times do
    if arr[i] == nil
      i = 0
    end
    arr[i] += 1
    i += 1
  end
  return arr
end

puts distribute(input)