def solution(clothes):
    cloth_inven = {}
    
    for name, kind in clothes:
        cloth_inven[kind] = cloth_inven.get(kind, 0) + 1
    
    answer = 1
    
    for count in cloth_inven.values():
        answer *= count + 1
    
    return answer - 1