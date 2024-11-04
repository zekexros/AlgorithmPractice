def recursive(line):
    if len(line) == 1:
        return "-"
    else:
        share = len(line) // 3
        return recursive(line[:share]) + line[share:share*2].replace("-", " ") + recursive(line[share*2:])

while True:
    try:
        n = int(input())
        line = "-" * 3 ** n
        print(recursive(line))
    except:
        break
