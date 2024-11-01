def recursive(numbers, index, target, sum, result):
    if index < len(numbers):
        recursive(numbers, index+1, target, sum + numbers[index], result)
        recursive(numbers, index+1, target, sum + -(numbers[index]), result)
    else:
        if sum == target:
            result.append(1)

def solution(numbers, target):
    answer = []
    recursive(numbers, 0, target, 0, answer)
    return sum(answer)


print(solution([4, 1, 2, 1], 4))