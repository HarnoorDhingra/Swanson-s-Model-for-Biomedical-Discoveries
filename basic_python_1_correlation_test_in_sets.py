from scipy.stats.stats import pearsonr
import random

s1=[1,2,3,4,5,6,7,8,9,10]                          
s2=[11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,39,30]      

n=1000

a=[]
b=[]

while n > 0:
	r1=random.randrange(0,10)
	a.append(s1[r1])
	r2=random.randrange(0,20)
	b.append(s2[r2])
	n=n-1
	
x,y=pearsonr(a,b)

print(x)
