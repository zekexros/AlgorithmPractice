
inputs = []

for i in range(5):
    inputs.append(int(input()))


print(int(sum(inputs) / len(inputs)))
print(sorted(inputs)[2])