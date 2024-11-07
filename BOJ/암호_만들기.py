from itertools import combinations
import string

L, C = map(int, input().split())
characters = sorted(input().split())
vowel = ['a', 'e', 'i', 'o', 'u']    
for comb in combinations(characters, L):
    vowel_count = 0
    consonant_count = 0
    for i in list(comb):
        if i in vowel:
            vowel_count += 1
        else:
            consonant_count += 1

        if vowel_count >= 1 and consonant_count >= 2:
            print(''.join(list(comb)))
            break