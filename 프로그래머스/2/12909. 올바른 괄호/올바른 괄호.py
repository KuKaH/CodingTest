def solution(s):
    answer = True
    
    parentList = []
    
    for i in s:
        if i == ")":
            if parentList:
                parentList.pop()
            else:
                return False
        else:
            parentList.append(i)

    if not parentList:
        return True
    else:
        return False