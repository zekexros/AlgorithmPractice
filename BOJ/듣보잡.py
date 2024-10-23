a, b = map(int, input().split())

dark_dict = {}

for i in range(0, a):
    name = input()
    dark_dict[name] = 1

for i in range(0, b):
    name = input()
    if dark_dict.get(name) == 1:
        dark_dict[name] = 2


c = [name for name, value in dark_dict.items() if value == 2]
print(len(c))
d = sorted(c)
for name in d:
    print(name)