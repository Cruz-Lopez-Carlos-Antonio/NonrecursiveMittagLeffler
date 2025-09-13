def stirlings(n,vector):
    for z in range(n+1):
        if z==0:                    #Condition of Eq.(41)
            vector.append([1])
        else:
            vector.append([0])      #Condition of Eq.(42)
    for u in range(1,n+1):
        for k in range(1,u+1):
            if k<=u-1:
                sn = (u-1)*vector[u-1][k]+vector[u-1][k-1]
            else:
                sn=vector[u-1][k-1]
            vector[u].append(sn)
