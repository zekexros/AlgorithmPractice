input1 = input()
input2 = input()

# 메모이제이션을 위한 딕셔너리
memo = {}

def recursive(input, target):
    # 이미 계산된 경우 메모에서 결과 반환
    if (input, target) in memo:
        return memo[(input, target)]
    
    if len(input) > len(target):
        return 0
    elif len(input) == len(target):
        if input == target:
            return 1
        else:
            return 0
    else:
        # 결과를 메모에 저장
        memo[(input, target)] = recursive(input + 'A', target) or recursive(input[::-1] + 'B', target)
        return memo[(input, target)]

result = recursive(input1, input2)
print(result if result else 0)