n = int(input())
coordinates = []

for i in range(0, n):
    coordinate = str(input()).split(' ')
    coordinates.append(coordinate)

for coordinate in sorted(coordinates, key=lambda x: [int(x[0]), int(x[1])]):
    output = ' '.join(coordinate)
    print(output)