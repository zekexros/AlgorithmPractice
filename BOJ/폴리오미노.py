input = input()
result = ''

def group_chars_and_dots(s):
    grouped_list = []
    current_group = s[0]

    for char in s[1:]:
        # 현재 문자가 current_group과 같거나 (문자-문자, 점-점) 이어지는지 확인
        if char == current_group[-1]:
            current_group += char
        else:
            grouped_list.append(current_group)
            current_group = char

    # 마지막 그룹을 리스트에 추가
    grouped_list.append(current_group)

    return grouped_list

def switcher(x):
    if len(x) % 4 == 0:
        return 'A' * len(x)
    elif len(x) % 2 == 0:
        return 'A' * (len(x) - 2) + 'B' * 2
    else:
        return 'C'

for list in group_chars_and_dots(input):
    if list[0] == 'X':
        result += switcher(list)
    else:
        result += list


print(-1 if 'C' in result else result)
