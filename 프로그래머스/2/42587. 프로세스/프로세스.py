def solution(priorities, location):
    answer = 0
    
    queue = []
    
    for i in range(len(priorities)):
        queue.append((priorities[i], i))
    
    while queue:
        higher = False
        current = queue.pop(0)
        
        for process in queue:
            if process[0] > current[0]:
                higher = True
                break
                
        if higher == True:
            queue.append(current)
        else:
            answer += 1
            if current[1] == location:
                return answer
           