input = int(input())

dic = {0:0, 1:1}
def recursive(n) :
    if n in dic:
        return dic[n]
    
    dic[n] = recursive(n-1) + recursive(n-2)
    return dic[n]

print(recursive(input))