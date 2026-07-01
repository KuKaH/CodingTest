def solution(nums):
    canHave = len(nums) // 2
    real = len(set(nums))
    
    return min(canHave, real)