good_counter = 0
second_good_counter = 0

def check_passphase(phrase):
  phrase = phrase.split(' ')
  if len(phrase) == len(set(phrase)):
    return True
  else:
    return False

def check_for_anagrams(phrase):
  phrase = phrase.split(' ')
  new_phrase = []
  for word in phrase:
    word = list(word)
    word.sort()
    word = "".join(x for x in word)
    new_phrase.append(word)
  if len(new_phrase) == len(set(new_phrase)):
    return True
  else:
    return False

with open("input.txt", "r") as f:
  for line in f:
    if check_passphase(line.rstrip()):
      good_counter += 1
    if check_for_anagrams(line.rstrip()):
      second_good_counter += 1

print(good_counter)
print(second_good_counter)