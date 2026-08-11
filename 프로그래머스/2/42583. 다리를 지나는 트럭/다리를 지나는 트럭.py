def solution(bridge_length, weight, truck_weights):
    time = 0
    
    bridge = [0] * bridge_length
    
    while truck_weights:
        time += 1
        
        bridge.pop(0)
        
        if sum(bridge) + truck_weights[0] <= weight:
            truck = truck_weights.pop(0)
            bridge.append(truck)
        else:
            bridge.append(0)
        
        if not truck_weights:
            time += bridge_length
    return time