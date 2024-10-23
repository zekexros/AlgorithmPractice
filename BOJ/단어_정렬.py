count = int(input())
words = []

for i in range(0, count):
    word = input()
    words.append(word)

for word in sorted(sorted(set(words)), key=len):
    print(word)