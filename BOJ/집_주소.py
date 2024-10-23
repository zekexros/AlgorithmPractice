trigger = True

while trigger:
    result = 0
    variable = int(input())
    if variable == 0:
        trigger = False
        break
    else:
        for char in str(variable):
            if char == '1':
                result += 2
            elif char == '0':
                result += 4
            else:
                result += 3
        result += 2
        margin = 0 if len(str(variable)) == 1 else len(str(variable)) - 1
        result += margin
        print(result)
