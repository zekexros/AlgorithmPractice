from itertools import permutations

input = input()
all_cases = set([''.join(p) for p in permutations(list(input), len(input))])
def is_lucky(s):
    temp = ''
    for char in s:
        if char != temp:
            temp = char
            continue
        else:
            return False
    return True

print(len(list(filter(is_lucky, all_cases))))