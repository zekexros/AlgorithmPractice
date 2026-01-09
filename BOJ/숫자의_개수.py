A, B, C = int(input()), int(input()), int(input())
dictionary = {}
for i in str(A*B*C):
    dictionary[i] = dictionary.get(i, 0) + 1

for i in range(10):
    print(dictionary.get(str(i), 0))