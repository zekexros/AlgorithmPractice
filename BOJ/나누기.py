var1 = int(input()[:-2] + '00')
var2 = int(input())

trigger = True
while trigger:
    if var1 % var2 == 0:
        print(str(var1)[-2:])
        trigger = False
        break
    else:
        var1 += 1
