from itertools import groupby

count = int(input())
answer = 0

for i in range(0, count):
    word = input()
    grouped = ','.join(char for char, _ in groupby(word))
    listGrouped = grouped.split(',')
    if len(listGrouped) == len(set(listGrouped)):
        answer += 1

print(answer)