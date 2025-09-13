#Code Python 2
def Coeff_G(n,vector,a):
    for m in range(n+1):
        vector.append([1])
    for m in range(1,n+1):
        vector[m].append(sum(a[:m]))
    for m in range(2,n+1):
        for k in range(2,m+1):
            if k==m:
          vector[m].append(a[0]**m)
            else:
                num=a[m-k]*vector[m-1][k-1]
                vector[m].append(vector[m-1][k]+num)

