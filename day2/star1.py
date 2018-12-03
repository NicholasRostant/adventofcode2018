from collections import Counter

with open('input1') as f:
  data = f.readlines()

data = [x.strip() for x in data]
check_two =0
check_three =0

for x in data:
    letter_count = Counter(x)
    two_found=0
    three_found=0
    for letter, freq in letter_count.items():
        if freq == 2:
            two_found=1
        if freq == 3:
            three_found=1
    check_two += two_found
    check_three += three_found

print(check_two*check_three)
