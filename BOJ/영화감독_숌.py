target = int(input())
order = 0
count = 0

while True:
    order += 1
    if "666" in str(order):
        count += 1
        if count == target:
            print(order)
            break