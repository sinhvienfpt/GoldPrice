bloomDay = [1,10,3,10,2]
m = 3
k = 1

def minDays(bloomDay, m, k):
    if m * k > len(bloomDay):
        return -1
    
    left, right = 1, max(bloomDay)
    while left < right:
        mid = (left + right) // 2
        flowers = bouquets = 0
        for d in bloomDay:
            flowers = flowers + 1 if d <= mid else 0
            if flowers == k:
                bouquets += 1
                flowers = 0
        if bouquets < m:
            left = mid + 1
        else:
            right = mid
    return left