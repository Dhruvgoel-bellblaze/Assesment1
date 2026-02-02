nums = [-2, -1, 0, 1, 3]

num_set = set(nums)

for i in range(min(nums), max(nums) + 1):
    if i not in num_set:
        print("Missing number:", i)
