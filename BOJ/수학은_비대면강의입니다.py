a, b, c, d, e, f = map(int, input().split())

det = a*e - b*d

x = (c*e - b*f) // det
y = (a*f - c*d) // det

print(x, y)